#!/bin/bash

SOURCE_DIR="$HOME/Documents/obs-ha/00-ha-root/05-context/ha-fundamentos"
TARGET_DIR="$HOME/Documents/obs-ha/ha-fundamentos-public"
OUTPUT_FILE="$TARGET_DIR/ha-fundamentos-compiled.md"
PDF_SOURCE="$SOURCE_DIR/teoria/ha-patente-inicial.pdf"
PDF_TARGET="$TARGET_DIR/ha-patente-inicial.pdf"
TODAY=$(date +%Y-%m-%d)

cat > "$OUTPUT_FILE" << HEADER
# Horizons Architecture - Fundamentos

> Ultima actualizacion: $TODAY
> 
> Fundamentos teoricos y metodologicos de HA.
> Figuras en [ha-patente-inicial.pdf](./ha-patente-inicial.pdf).

---
HEADER

add_file() {
    local file="$1"
    local rel="${file#$SOURCE_DIR/}"
    if [ -f "$file" ] && [[ "$file" == *.md ]]; then
        echo -e "\n---\n\n## $rel\n" >> "$OUTPUT_FILE"
        cat "$file" >> "$OUTPUT_FILE"
    fi
}

[ -f "$SOURCE_DIR/README.md" ] && add_file "$SOURCE_DIR/README.md"

for folder in vision teoria metodologia fundador diferenciacion; do
    [ -d "$SOURCE_DIR/$folder" ] && for f in "$SOURCE_DIR/$folder"/*.md; do
        [ -f "$f" ] && add_file "$f"
    done
done

[ -f "$PDF_SOURCE" ] && cp "$PDF_SOURCE" "$PDF_TARGET" && echo "PDF copiado"

echo "Compilado: $OUTPUT_FILE"
wc -l "$OUTPUT_FILE"

read -p "Push a GitHub? (y/n): " c
if [ "$c" = "y" ]; then
    cd "$TARGET_DIR"
    git add -A
    git commit -m "Update $TODAY"
    git branch -M main
    git push -u origin main
    echo "Listo: https://raw.githubusercontent.com/edgarbarrosoha/ha-fundamentos-public/main/ha-fundamentos-compiled.md"
fi
