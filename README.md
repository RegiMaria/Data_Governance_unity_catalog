<h2>UNITY CATALOG: GOVERNANÇA DE DADOS E CATÁLOGO DE DADOS ASSISTIDO POR IA</h2>

A governança de dados na Databricks é centralizada no **Unity Catalog**, que age como o núcleo para catalogação e gerenciamento de dados na plataforma. Ele oferece um ambiente seguro e eficiente onde todos os dados e metadados podem ser organizados e catalogados de forma integrada, permitindo um controle robusto de permissões e monitoramento de qualidade. Dentro do Unity Catalog, a **Catalogação de Dados** é especialmente facilitada pela IA, que automatiza a geração e manutenção de metadados, garantindo que as informações estejam sempre atualizadas e acessíveis para usuários conforme suas necessidades e permissões 

### 1. **Objetivo do Projeto**

Explorar Catalogação de Dados assistida por IA - e suas capacidades, e  elementos essenciais da Governança de Dados como controle de acesso e permissões, Data Lineage, organização e documentação de metadados, e Monitoramento de qualidade dos dados

### 2. **Etapas do Projeto**

#### 	1. **Configuração do Ambiente Databricks**

- Criar um workspace no Databricks e configurar o Unity Catalog.
- Conectar fontes de dados para ingestão.

#### 	2. **Ingestão de Dados e Organização em Catálogos**

- Carregar dados em formato Delta Lake em um data lake ou data warehouse dentro do Unity Catalog.
- Organizar os dados em catálogos e schemas, criando tabelas de dados relevantes..
- Documentar os dados, adicionando descrições e definições de colunas no catálogo.

#### 	3. **Implementação de Controle de Acesso (RBAC)**

- Definir grupos de usuários, como *Analistas*, *Cientistas de Dados*, e *Administradores*, e configure permissões para cada grupo.
- Aplicar RBAC para garantir que cada grupo tenha acesso apenas aos dados e tabelas que eles realmente precisam visualizar ou editar.

#### 	4. **Lineage de Dados**

- Realizar algumas transformações simples nos dados (ex., limpeza de dados ou agregações) e usar o Unity Catalog para rastrear o data Lineage.
- Verificar o Data Lineage nas tabelas e colunas para mostrar como as informações foram transformadas, registrando as origens e os processos de transformação.

#### 	5. **Monitoramento de Qualidade de Dados**

- Definir regras simples de qualidade de dados, como verificar se campos obrigatórios estão preenchidos ou se valores seguem o padrão esperado.
- Criar alertas para identificar problemas de qualidade e registre logs de auditoria para mostrar os dados que não atendem aos critérios.

#### 	6. **Visualização e Relatório**

- Utilizar o Databricks SQL para criar um dashboard, ou conectar ao Power BI.
- No dashboard, mostrar dados de Lineage, qualidade e acessos recentes, destacando o processo de governança aplicado.



### 3. **Resultados Esperados**

Ao final do projeto, esperamos contar com:

- Um catálogo de dados centralizado, documentado e com acesso controlado.
- Um relatório de Data Lineage e qualidade dos dados, comprovando a transparência e confiabilidade do processo.
- Um dashboard ou relatório que visualize o uso e a governança dos dados no ambiente Databricks.
- Documentação de todo o projeto



<h3>4.Use Case:</h3>

---------------------------------

A CrediSimples (nome fictício) é uma empresa que oferece empréstimos populares por meio de contratos bancários. Presente nos estados do Paraná e Santa Catarina, na Região Sul do Brasil, a organização tem como visão e missão se tornar a principal fornecedora de soluções financeiras acessíveis e inovadoras para clientes de baixa e média renda na região. Como parte de seu planejamento estratégico, a empresa pretende expandir sua base de clientes, reduzir a taxa de inadimplência e melhorar a experiência do cliente.

Para apoiar esses objetivos estratégicos, o projeto visa desenvolver um sistema de governança de dados e catalogação assistida por IA, permitindo maior controle e insights de qualidade para decisões financeiras mais seguras.

Nos últimos anos, a organização enfrentou desafios como altas taxas de inadimplência, rotatividade de funcionários e perdas financeiras devido a falhas na análise de crédito. Com reestruturações recentes, tanto operacionais quanto organizacionais, a empresa espera identificar pontos de melhoria para cumprir sua missão e metas estratégicas.



<h3>Arquitetura e estrutura dos dados</h3>

**TABELAS**

- CLIENTE

- PRODUTO

- CONTRATO

- PAGAMENTO

- FONTE DE RENDA

- FAIXA DE RENDA



**PRODUTOS DE CRÉDITO**

| Produto                             | Parcelas | Forma de Pagamento                  | Valor                | Comprova Renda |
| ----------------------------------- | -------- | ----------------------------------- | -------------------- | -------------- |
| CDCE - Crédito direto ao consumidor | 24x      | Desconto na conta de energia        | R$ 500 a R$ 2.200    | Não            |
| CDC - Crédito com débito em conta   | 18x      | Débito direto em conta              | R$ 500 a R$ 3.000    | Sim            |
| CPA - Crédito pessoal com garantia  | 36x      | Garantia em carros de até 20 anos   | R$ 5.000 a R$ 50.000 | Sim            |
| CDE - Energia                       | 22x      | Pagamento mensal                    | R$ 400 a R$ 2.200    | Não            |
| CPB - Crédito pessoal Boleto        | 24x      | Boleto                              | R$ 500 a R$ 10.000   | Sim            |
| CCA - Crédito consignado aprovado   | 48x      | Até 30% do comprometimento da renda | R$ 300 a variável    | Não            |

<h4>Como a governança e catalogação de dados podem ajudar a Credisimples a alcançar seus objetivos? </h4>











<h3>6. Metodologia </h3>

<h3>7. Desafios e soluções </h3>

<h3>8. Ferramentas e tecnologia</h3>

- Databricks

Databrick File System como Data Lake

- Framework processamento de dados

Apache Spark

- Linguagem de consulta de dados

SQL

<h3>9. Teste e Validações</h3>

<h3>10. Referência e Recursos adicionais</h3>

:pushpin: [Databricks-Unity-Catalog-DEMO](https://www.databricks.com/product/unity-catalog)

:pushpin:[Databricks-Generativa-AI-Trainning](https://www.databricks.com/resources/learn/training/generative-ai-fundamentals?itm_data=cro-fpd-target-360)

:pushpin: ​[Unity Catalog, Delta Sharing and Data Mesh on Databricks Lakehouse](https://www.youtube.com/watch?v=75QGOtqBj2k&t=105s)

<h3>11. Conclusão </h3>













:pushpin: Regras-de-Negocio

:pushpin: Levantamento-de-Requisitos