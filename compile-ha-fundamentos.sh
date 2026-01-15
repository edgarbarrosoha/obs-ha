#!/bin/bash

# =============================================================================
# compile-ha-fundamentos.sh
# Compila los archivos .md de ha-fundamentos en un solo archivo
# y copia el PDF por separado (sin incluirlo en el compilado)
# Filtra imágenes base64 para mantener el compilado limpio
# =============================================================================

SOURCE_DIR="$HOME/Documents/obs-ha/00-ha-root/05-context/ha-fundamentos"
TARGET_DIR="$HOME/Documents/obs-ha/ha-fundamentos-public"
OUTPUT_FILE="$TARGET_DIR/ha-fundamentos-compiled.md"
PDF_SOURCE="$SOURCE_DIR/teoria/ha-patente-inicial.pdf"
PDF_TARGET="$TARGET_DIR/ha-patente-inicial.pdf"
TODAY=$(date +%Y-%m-%d)

cat > "$OUTPUT_FILE" << HEADER
# Horizons Architecture - Fundamentos

> **Última actualización:** $TODAY
> 
> Este documento compila los fundamentos teóricos y metodológicos de Horizons Architecture (HA).
> Para las figuras explicativas, ver [ha-patente-inicial.pdf](./ha-patente-inicial.pdf).

---
HEADER

add_file() {
    local file="$1"
    local rel="${file#$SOURCE_DIR/}"
    
    if [ -f "$file" ] && [[ "$file" == *.md ]]; then
        echo -e "\n---\n\n## 📄 $rel\n" >> "$OUTPUT_FILE"
        # Filtrar líneas con imágenes base64
        grep -v "data:image" "$file" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
}

[ -f "$SOURCE_DIR/README.md" ] && add_file "$SOURCE_DIR/README.md"

for folder in vision teoria metodologia fundador diferenciacion; do
    if [ -d "$SOURCE_DIR/$folder" ]; then
        for f in "$SOURCE_DIR/$folder"/*.md; do
            [ -f "$f" ] && add_file "$f"
        done
    fi
done

if [ -f "$PDF_SOURCE" ]; then
    cp "$PDF_SOURCE" "$PDF_TARGET"
    echo "✓ PDF copiado"
fi

echo "✓ Compilado: $OUTPUT_FILE"
wc -l "$OUTPUT_FILE" | awk '{print "  Líneas: " $1}'

read -p "¿Push a GitHub? (y/n): " c
if [ "$c" = "y" ]; then
    cd "$TARGET_DIR"
    git add -A
    git commit -m "Update $TODAY"
    git push origin main
    echo "✓ Push completado"
fi
