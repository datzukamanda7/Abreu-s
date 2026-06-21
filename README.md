🏗️ Sistema de REURB

📋 Resumo do Projeto
O Sistema de REURB foi desenvolvido para otimizar o processo de cadastramento de moradores em núcleos de regularização fundiária.
O sistema permite que o coordenador gere um link de acesso para o cadastro, utilizado tanto no dia da coleta de dados quanto posteriormente por moradores que não participaram presencialmente.

🎯 Objetivo
Garantir um processo de coleta de dados organizado, seguro e sem inconsistências, permitindo:
Captura de fotos dos documentos necessários.
Registro completo dos dados na ficha de cadastro.
Validação automática para impedir a finalização com pendências.
Qualificação imediata em uma lista por ordem alfabetica.

🧩 Funcionalidades Principais
Cadastro de moradores e núcleos.
Upload e armazenamento de documentos com foto.
Validação automática de pendências.
Listas de qualificações imediatas.
Geração de link de cadastro pelo coordenador.
Controle de status e auditoria de cadastros.

👩‍💻 Desenvolvedora
Amanda Cristina Datzuk de Abreu

⚙️ Tecnologias Utilizadas
Linguagens de Programação:	Java
Banco de Dados	PostgreSQL
Ferramentas	GitHub, Visual Paradigman, VS Code, Figma


## 📊 Relatórios / Consultas Previstas

**Relatório 1 – Cadastros com Pendências de Documentos**  
   Lista todos os cadastros com status **"Pendência documental"**, exibindo:  
   - Nome do morador e cônjuge (se houver)  
   - CPF  
   - Endereço de residência  
   - Núcleo urbano ao qual pertence  
   - Data de cadastramento  
   - Colaborador responsável pelo cadastro  
   **Ordenação:** crescente pela data de cadastramento.  

---
 **Relatório 2 – Informação do Processo**  
   Exibe o andamento do processo de REURB, considerando os seguintes status:  
   - "Na instituição"  
   - "Em execução de processo"  
   - "Processo na prefeitura"  
   - "Processo no cartório"  
   - "Em emissão das matrículas"  

   Informações exibidas:  
   - Nome do morador e cônjuge (se houver)
   - CPF  
   - Nome do núcleo  
   - Área total em m²
   - Quadra e Lote
   - Status atual do processo  
  
   **Ordenação:** Exibição com link para redes.  
---
**Relatório 3 – Documentos**  
   Lista de qualificação mostrando:  
   - Nome do morador
   - Qualificação
   - Documentos pendentes 
   - Data de entrega  
   - Nome do colaborador responsável pelo recebimento  
   **Filtro:** apenas documentos entregues nos últimos **60 dias**.  
    **Ordenação:** primeiro pelo nome do morador e depois pela data de entrega.  
---
4. **Relatório 4 – Sumarização por Municipio**  
   Para cada Municipio, apresenta: 
   - Total de nucleos no municipio
   - Total de cadastros realizados  
   - Total de processos com status **"Finalizados"**  
   - Total de processos com status **"Em andamento"**  
   - Data do cadastro mais recente
   -  Nome do colaborador responsável pelo municipio
   **Ordenação:** decrescente pelo total de cadastros.

Relatório 1 (ORDER BY / WHERE): Listar
todos os cadastros com status 'Pendente de
Análise', apresentando o nome do morador, o
CPF, o endereço do imóvel, o núcleo urbano
ao qual pertence e a data de cadastramento.
Ordenar pela data de cadastramento
crescente.
Relatório 2 (JOIN): Listar os cadastros de
REURB com as informações do imóvel
correspondente, exibindo o nome do morador,
o CPF, o endereço completo, a área total em
m², o tipo de construção e o status atual do
processo. Exibir apenas cadastros com
processo em andamento. Ordenar pelo nome
do morador em ordem alfabética.
Relatório 3 (JOIN): Listar os documentos
entregues por cada cadastrado, exibindo o
nome do morador, o tipo de documento, a data
de entrega e o nome do servidor responsável
pelo recebimento. Exibir apenas documentos
entregues nos últimos 60 dias. Ordenar pelo
nome do morador e, em seguida, pela data de
entrega.
Relatório 4 (Sumarização): Para cada núcleo
urbano, apresentar o total de cadastros
realizados, o total de processos com status
'Aprovado', o total de processos com status
'Pendente' e a data do cadastro mais recente.
Ordenar pelo total de cadastros de forma
decrescente
