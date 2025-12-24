# **C.R.E.A.T.I.V.O.**
[[04-technology-sic-q/04-technology-sic-q]]


---

- **C - Contexto (Context):**
    
    ### `¿Cuál es el trasfondo o la situación?`
    

---

- **R - Rol (Role):**
    
    ### `¿Quién quieres que sea la IA?`
    

---

- **E - Ejemplo (Example):**
    
    ### `¿Puedes mostrarle un ejemplo de lo que quieres?`
    

---

- **A - Audiencia (Audience):**
    
    ### `¿Para quién es la respuesta?`
    

---

- **T - Tarea (Task):**
    
    ## `¿Cuál es la acción específica que debe realizar?`
    

---

- **I - Instrucciones (Constraints & Format):**
    
    ## `¿Cuáles son las reglas y el formato de salida?`
    
    - **`Restricciones:** Lo que NO debe hacer.`
    - **`Formato de Retorno:** Cómo debe verse la respuesta.`

---

- **V - Voz y Tono (Voice & Tone):**
    
    ### `¿Cómo debe sonar la respuesta?`
    

---

- **O - Objetivo (Goal):**
    
    ### `¿Cuál es el propósito final o el porqué de la tarea?`
    

---
# **C - Contexto (Context) → "Contextual Priming" o "Background Framing”**

<aside>
💡

**Qué es:** 

*Darle el trasfondo de tu petición. Es el "`porqué`" detrás de tu pregunta.*

- **Explicación técnica:**
    
    
    El contexto **activa selectivamente las representaciones latentes en el espacio de embeddings del modelo**, reduciendo la entropía de las distribuciones de probabilidad posteriores. Funciona como un mecanismo de atención que sesga la generación hacia dominios semánticos específicos.
    
- **Analogía de la biblioteca:**
    
    
    *No solo pides un libro, sino que le dices al bibliotecario:* 
    
    ### `"Estoy preparando una presentación para mi jefa sobre estrategias de marketing digital."`
    
    <aside>
    
    Inmediatamente, la persona bibliotecaria descarta el 99% de los libros de "negocios" (contabilidad, logística, etc.) y se enfoca en lo que necesitas.
    
    </aside>
    
- **Ejemplo:**
    
    > CONTEXTO: 
    `Estoy escribiendo un paper para Nature Computational Science sobre la aplicación de teoría de redes complejas para optimizar arquitecturas de transformers. Los revisores del primer round pidieron clarificar la conexión entre small-world networks y attention mechanisms. Necesito reformular el abstract para enfatizar esta relación sin exceder 150 palabras.`
    > 
    > 
    > `PREGUNTA: ¿Cómo puedo reescribir mi abstract?`
    > 
- **Referencias:**
    
    > `Liu, P., Yuan, W., Fu, J., Jiang, Z., Hayashi, H., & Neubig, G. (2023). "Pre-train, prompt, and predict: A systematic survey of prompting methods in natural language processing." *ACM Computing Surveys*, 55(9), 1-35.`
    > 
</aside>

# **R - Rol (Role) → "Role-Based Prompting" o "Persona-Driven Instruction”**

<aside>
💡

**Qué es:** 

*Decirle a la IA qué "sombrero" o profesión debe adoptar. Esto activa el conocimiento y los patrones de lenguaje asociados con ese rol.*

- **Explicación técnica:**
    
    
    La asignación de roles explota la naturaleza composicional de los *transformers*, **activando subredes específicas entrenadas en corpus especializados**. Esto induce un comportamiento consistente con el conocimiento y estilo lingüístico del rol especificado.
    
- **Analogía de la biblioteca:**
    
    *Le dices al bibliotecario:* 
    
    ### `"Actúa como un asesor experto en startups de tecnología."`
    
    <aside>
    
    Ahora no solo buscará libros, sino que te los recomendará desde la perspectiva de alguien que entiende el ecosistema tecnológico, dándote consejos que un bibliotecario generalista no podría.
    
    </aside>
    
- **Ejemplo:**
    
    > `Actúa como un hybrid entre Geoffrey Hinton (deep learning pioneer) y Albert-László Barabási (network scientist). Tienes décadas de experiencia publicando en journals Q1 y eres editor asociado de Science Advances. Tu especialidad es identificar conexiones no obvias entre campos aparentemente distantes. Evalúa esta hipótesis: "Los LLMs exhiben propiedades de criticalidad auto-organizada similar a los sistemas complejos biológicos durante el fine-tuning."`
    > 
- **Referencias:**
    
    > `Bai, Y., Kadavath, S., Kundu, S., et al. (2022). "Constitutional AI: Harmlessness from AI feedback." *arXiv preprint arXiv:2212.08073*.`
    > 

---

</aside>

# **E - Ejemplo (Example) → "Few-Shot Learning" o "In-Context Learning (ICL)”**

<aside>
💡

**Qué es:** 

*Mostrarle a la IA exactamente cómo se ve un buen resultado. Es una forma eficiente de alinear su "creatividad" con tu necesidad.*

- **Explicación técnica:**
    
    
    **Los ejemplos funcionan como** **vectores de demostración que establecen un mapeo implícito entre entradas y salidas** sin actualizar los pesos del modelo. El mecanismo de atención identifica patrones estructurales y los replica mediante inferencia bayesiana aproximada.
    
- **Analogía de la biblioteca:**
    
    
    *Le enseñas un párrafo de un artículo que te gustó y le dices:* 
    
    ### `"**Busco libros que expliquen las cosas con este nivel de detalle y claridad.**"`
    
    <aside>
    
    El bibliotecario ahora entiende perfectamente el estilo que buscas y puede encontrar coincidencias exactas.
    
    </aside>
    
- **Ejemplo:**
    
    > `Necesito generar títulos para papers siguiendo este patrón:`
    > 
    > 
    > `Ejemplo 1: "Emergent Hierarchical Structures in Multi-Agent Reinforcement Learning: A Complex Systems Perspective"`
    > 
    > `Ejemplo 2: "Phase Transitions in Neural Architecture Search: Evidence from 10,000 Experiments"`
    > 
    > `Ejemplo 3: "The Topology of Artificial Reasoning: Mapping Logical Structures in Large Language Models"`
    > 
    > `Ahora genera un título para mi paper sobre aplicación de percolation theory a la robustez de modelos de visión computacional.`
    > 
    
- **Referencias:**
    
    > `Brown, T., Mann, B., Ryder, N., et al. (2020). "Language models are few-shot learners." *NeurIPS*, 33, 1877-1901. 
    
    Xie, S. M., Raghunathan, A., Liang, P., & Ma, T. (2022). "An explanation of in-context learning as implicit Bayesian inference." *ICLR 2022*.
    
    Min, S., Lyu, X., Holtzman, A., et al. (2022). "Rethinking the role of demonstrations: What makes in-context learning work?" *EMNLP 2022*.`
    > 
</aside>

# **A - Audiencia (Audience) → "Audience Adaptation" o "Register Specification”**

<aside>
💡

**Qué es:** 

*Especificar para quién es la respuesta. Esto ajusta la complejidad, el vocabulario y el enfoque del resultado.*

- **Explicación técnica:**
    
    
    **Controla el registro lingüístico** mediante la modulación de distribuciones léxicas y sintácticas. **Ajusta métricas de complejidad** (Flesch-Kincaid, SMOG) **y selección terminológica** basándose en modelos de audiencia objetivo.
    
- **Analogía de la biblioteca:**
    
    
    *Le dices:* 
    
    ### `"**El libro es para un grupo de becarios que no saben nada de marketing.**"`
    
    <aside>
    
    El bibliotecario evitará los textos académicos densos y buscará libros introductorios, claros y con muchos ejemplos prácticos.
    
    </aside>
    
- **Ejemplo**
    
    > `Explica el concepto de "emergence in neural scaling laws" para TRES audiencias:`
    > 
    > 1. `Para revisores de Physical Review Letters (físicos teóricos)`
    > 2. `Para el board de inversores de mi startup (ejecutivos no-técnicos)`
    > 3. `Para estudiantes de doctorado en mi seminario de sistemas complejos`
    > 
    > `Ajusta vocabulario, ejemplos y profundidad matemática para cada audiencia.`
    > 
- **Referencias**
    
    > `Kang, H., & Hovy, D. (2021). "Style is NOT a single variable: Case studies for cross-stylistic language understanding." *ACL-IJCNLP*, 2353-2365.
    
    Reiter, E., & Dale, R. (2000). *Building Natural Language Generation Systems*. Cambridge University Press.`
    > 
</aside>

# **T - Tarea (Task) → "Task Decomposition" o "Instruction Tuning”**

<aside>
💡

**Qué es:** 

***El verbo de acción.** La instrucción específica e inequívoca de lo que quieres que haga.*

- **Explicación técnica:**
    
    **Define operadores semánticos específicos que guían la función objetivo del modelo**. La descomposición explícita de tareas reduce la ambigüedad y mejora la alineación entre intención y ejecución.
    
- **Analogía de la biblioteca:**
    
    
    *En lugar de `"necesito información"`, dices*: 
    
    ### `"**Crea una lista con viñetas de los 5 libros más influyentes sobre marketing de contenidos publicados en los últimos 2 años.**"`
    
    <aside>
    
    La tarea es clara, específica y medible.
    
    </aside>
    
- **Ejemplo:**
    
    > `Desarrolla una arquitectura de prompts recursivos para analizar papers.`
    > 
    > 
    > `Descompón en estas sub-tareas:`
    > 
    > 1. `EXTRAER: Identificar claim principal, metodología y conclusiones`
    > 2. `EVALUAR: Assess validez estadística y reproducibilidad`
    > 3. `CONECTAR: Mapear citas y construir grafo de conocimiento`
    > 4. `SINTETIZAR: Generar meta-análisis estructurado`
    > 5. `PROPONER: Sugerir 3 extensiones experimentales`
    > 
    > `Ejecuta este pipeline con el paper: [DOI: 10.1038/s41586-023-06647-8]`
    > 
- **Referencias:**
    
    > `Ouyang, L., Wu, J., Jiang, X., et al. (2022). "Training language models to follow instructions with human feedback." *NeurIPS*, 35, 27730-27744.
    
    Wei, J., Wang, X., Schuurmans, D., et al. (2022). "Chain-of-thought prompting elicits reasoning in large language models." *NeurIPS*, 35, 24824-24837.
    
    Khot, T., Trivedi, H., Finlayson, M., et al. (2023). "Decomposed prompting: A modular approach for solving complex tasks." *ICLR 2023*.`
    > 
</aside>

# **I - Instrucciones (Constraints & Format)**

<aside>
💡

**Qué es:** 

***Las reglas del juego.** Límites, cosas que debe evitar y, crucialmente, cómo debe estructurar la respuesta.*

- **Explicación técnica**
    
    
    Implementa **restricciones duras y blandas mediante *tokens* de control y templates estructurados**. Utiliza programación lógica para garantizar conformidad con especificaciones formales.
    
- **Analogía de la biblioteca:**
    
    
    *Le dices:* 
    
    ### `"**La lista no debe incluir libros de más de 300 páginas (Restricción). Por favor, entrégame la lista en una ficha, con el título en negrita, el autor debajo y un resumen de una sola frase (Formato).**"`
    
    <aside>
    
    Ahora no solo obtienes la información correcta, sino que la obtienes exactamente como la necesitas.
    
    </aside>
    
- **Ejemplo:**
    
    > `Genera un research proposal con estas restricciones:`
    > 
    > 
    > `RESTRICCIONES DURAS:`
    > 
    > - `Máximo 2 páginas (1000 palabras)`
    > - `Debe incluir ecuaciones en LaTeX`
    > - `Presupuesto < $150,000 USD`
    > - `Timeline: 12 meses`
    > - `Citar mínimo 5 papers de 2024`
    > 
    > `FORMATO OBLIGATORIO:`
    > 
    > ```markdown
    > # Título (max 15 palabras)
    > ## PI: [Nombre] | Co-PI: [Nombre]
    > 
    > ### Abstract (100 palabras)
    > ### Hypothesis & Specific Aims (200 palabras)
    > ### Methodology (300 palabras)
    > - Equation 1: $...$
    > - Equation 2: $...$
    > ### Expected Outcomes & Metrics (200 palabras)
    > ### Budget Justification (100 palabras)
    > ### References [Nature format]
    > 
    > ```
    > 
    > `Tema: Quantum-inspired algorithms for NP-hard optimization in neural architectures`
    > 
- **Referencias**
    
    > `Zhou, Y., Muresanu, A. I., Han, Z., et al. (2023). "Large language models are human-level prompt engineers." *ICLR 2023*.
    
    Honovich, O., Scialom, T., Levy, O., & Schick, T. (2023). "Unnatural instructions: Tuning language models with (almost) no human labor." *ACL 2023*.`
    > 
</aside>

# **V - Voz y Tono (Voice & Tone) → Style Transfer / Prosodic Modulation**

<aside>
💡

**Qué es:** 

*La personalidad de la respuesta. ¿Debe ser formal, inspiradora, divertida, seria, urgente?*

- **Explicación técnica**
    
    
    Manipula **características estilométricas** mediante control de variables latentes que codifican propiedades prosódicas y afectivas del texto. Utiliza *embeddings* de estilo para transformación controlada.
    
- **Analogía de la biblioteca:**
    
    
    *Le pides:* 
    
    ### `"**Cuando me resumas los libros, usa un tono entusiasta y convincente.**"`
    
    <aside>
    
    El bibliotecario no solo te describirá los libros, sino que intentará "vendértelos", haciendo que la información sea más atractiva.
    
    </aside>
    
- **Ejemplo:**
    
    > Reescribe este párrafo técnico en TRES estilos:
    > 
    > 
    > ORIGINAL: "Our results demonstrate statistically significant improvements (p<0.001)
    > in convergence rates when applying adaptive learning rate schedules."
    > 
    > ESTILO 1: Como Paul Graham escribiendo para fundadores de YC
    > ESTILO 2: Como un paper de Bengio et al. para NeurIPS
    > ESTILO 3: Como Feynman explicando a undergrads de Caltech
    > 
    > Mantén la precisión técnica pero adapta voz, cadencia y recursos retóricos.
    > 
    
- **Referencias:**
    - Jin, Z., Jin, D., Mueller, J., Matthews, N., & Santus, E. (2022). "Deep learning for text style transfer: A survey." *Computational Linguistics*, 48(1), 155-205.
    - Reif, E., Ippolito, D., Yuan, A., et al. (2022). "A recipe for arbitrary text style transfer with large language models." *ACL*, 837-848.
</aside>

# **O - Objetivo → Goal-Oriented Prompting / Outcome-Based Instruction**

<aside>
💡

**Qué es:** 

*El resultado final que esperas lograr con la ayuda de la IA. ¿Qué quieres que suceda después de que obtengas la respuesta?*

- **Explicación técnica:**
    
    
    **Alinea la función de recompensa implícita del modelo con objetivos explícitos** mediante especificación de estados finales deseados. Se relaciona con planificación jerárquica y optimización de trayectorias en el espacio de acciones lingüísticas.
    
- **Analogía de la biblioteca:**
    
    
    *Le confiesas al bibliotecario:* 
    
    ### `"**El objetivo final es que mi jefe apruebe mi propuesta de presupuesto para una nueva campaña de marketing de contenidos.**"`
    
    <aside>
    
    Entender el objetivo final le permite al bibliotecario ir un paso más allá, quizás sugiriendo un capítulo específico sobre cómo calcular el ROI, algo que no pediste explícitamente pero que es crucial para tu éxito.
    
    </aside>
    
- **Ejemplo:**
    
    > `OBJETIVO FINAL: Conseguir un grant de €1M de European Research Council (ERC)
    para estudiar "Emergent Computation in Hybrid Quantum-Classical Systems"`
    > 
    > 
    > `Con este objetivo en mente:`
    > 
    > 1. `Identifica los 3 gaps más críticos en el campo según papers 2023-2024`
    > 2. `Formula una hipótesis que sea simultáneamente:`
    >     - `Científicamente audaz pero factible`
    >     - `Alineada con Horizon Europe priorities`
    >     - `Diferenciada de grants recientemente aprobados`
    > 3. `Diseña un work package structure que maximice probabilidad de aprobación`
    > 4. `Sugiere 3 colaboradores europeos estratégicos con h-index > 40`
    > 
    > `Optimiza cada elemento para maximizar el score de evaluación ERC.`
    > 
- **Referencias:**
    
    > `Christiano, P., Leike, J., Brown, T., et al. (2017). "Deep reinforcement learning from human preferences." *NeurIPS*, 30.
    
    Stiennon, N., Ouyang, L., Wu, J., et al. (2020). "Learning to summarize with human feedback." *NeurIPS*, 33, 3008-3021.
    
    Rafailov, R., Sharma, A., Mitchell, E., et al. (2023). "Direct preference optimization: Your language model is secretly a reward model." *NeurIPS 2023*.`
    > 
</aside>
