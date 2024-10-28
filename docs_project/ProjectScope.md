:pineapple:**Português abaixo**

## Project Scope

### **1. Data Structure and Organization**

1. Upload the relational tables (OLTP system).
2. Create a dimensional layer for analysis (OLAP system).

Tables in the OLTP system:

- **Customers** as Cliente: This table organizes the demographic data of customers and links it to the product and payment tables.
- **Products** as Produto: The product table categorizes and details different types of credit, helping analyze credit preferences by customer profile.
- **Payments** as Pagamento: This table tracks the payment history, including dates and statuses, which is essential for analyzing defaults.
- **Income Source **as Fonte de Renda and **Income Range** as Faixa de Renda: These tables allow us to explore credit patterns based on income, categorizing customers into different analysis groups.

### **2. Loading Process into DBFS**

- We’ll ingest CSV files into Databricks' Data Lake, DBFS (Databricks File System), and organize each table into its own directory. This will help us maintain a clear structure for future updates and for the notebooks that will access these data.
- We’ll use Unity Catalog to create a catalog where each table will be registered, making it easier to search and document.

### **3. Analysis and Governance**

- **Lineage and Documentation**: We’ll document the tables and columns with detailed descriptions and track how the data relates to each other. This is crucial for managing and understanding the data lifecycle.
- **Data Quality Control**: We’ll set rules, like checking that all transactions have positive values and that the income brackets are correct, for example.
- **Access Control and Privacy**: We’ll select sensitive columns, such as customers’ personal data, and apply access rules to simulate proper governance.
- **Data Catalog**:
  - **Catalog Creation**: We’ll use Unity Catalog to register each table and its metadata, ensuring all information is centralized and easily accessible.
  - **Automatic Metadata Generation**: AI will be used to automatically generate descriptions for tables and columns based on their content and context, saving time and ensuring consistency in documentation.
  - **Consistent Naming**: AI will suggest standardized and descriptive names for tables and columns, making it easier for different teams to understand and use the data.
  - **Change Monitoring**: The system will monitor changes in the data and automatically update relevant documentation, ensuring that information is always up to date.
  - **Sensitive Data Identification**: The catalog will help identify which data is critical or sensitive, allowing appropriate security and privacy measures to be applied.
  - **Facilitating Data Search and Discovery**: Cataloging will improve accessibility, enabling users and analysts to quickly find the data they need for their analyses.







**Português**

--------------------------------------------------

<h2> Escopo do projeto</h2>

### **1. Estrutura e Organização dos Dados**

1. Upload das tabelas Relacionais (Sistema OLTP)
2.  Criar camada dimensional para análise (Sistema OLAP)

Tabelas do sistema OLTP:

- **Clientes**: Essa tabela estrutura os dados demográficos dos clientes e vincula ele às tabelas de produtos e pagamentos.
- **Produtos**: A tabela de produtos com diferentes tipos de crédito é categorizada e detalhada, ajudando em análises de preferências de crédito por perfil de cliente.
- **Pagamentos**: Essa tabela permite monitorar o histórico de pagamentos, incluindo datas e status, o que é essencial para análise de inadimplência.
- **Fonte e Faixa de Renda**: Essas tabelas vão nos permitir explorar padrões de crédito com base na renda, categorizando clientes em diferentes grupos de análise.

### **2. Processo de Carregamento no DBFS**

- Faremos a ingestão dos arquivos CSVs para o Data Lake da Databricks, DBFS (Databricks File System) e organizaremos cada tabela em seu próprio diretório. Assim,poderemos manter uma estrutura clara para futuras atualizações e para os notebooks que acessarão esses dados.
- Vamos utilizar o Unity Catalog para criar um catálogo onde cada tabela fique registrada, facilitando a busca e a documentação.

### **3. Análises e Governança**

- **Lineage e Documentação**: Vamos documentar as tabelas e colunas com descrições detalhadas e rastrear como os dados se relacionam entre si. Isso é fundamental para controle e compreensão do ciclo de vida dos dados.
- **Controle de Qualidade de Dados**: Definiremos as regras, como verificar que todas as transações têm valores positivos e que as faixas de renda estão corretas, por exemplo.
- **Controle de Acesso e Privacidade**: Vamos selecione colunas sensíveis, como dados pessoais de clientes, e aplicar regras de acesso para simular uma governança adequada.
- **Catalogação de Dados**:
  - **Criação do Catálogo**: Vamos utilizar o Unity Catalog para registrar cada tabela e seus metadados, garantindo que todas as informações estejam centralizadas e facilmente acessíveis.
  - **Geração Automática de Metadados**: A IA será usada para gerar descrições automáticas de tabelas e colunas, com base em seu conteúdo e contexto, economizando tempo e garantindo consistência na documentação.
  - **Nomenclatura Consistente**: A IA sugerirá nomes padronizados e descritivos para tabelas e colunas, facilitando a compreensão e o uso dos dados por diferentes equipes.
  - **Monitoramento de Mudanças**: O sistema monitorará alterações nos dados e atualizará automaticamente a documentação relevante, garantindo que as informações estejam sempre atualizadas.
  - **Identificação de Dados Sensíveis**: O catálogo ajudará a identificar quais dados são críticos ou sensíveis, permitindo que medidas adequadas de segurança e privacidade sejam aplicadas.
  - **Facilitação da Busca e Descoberta de Dados**: A catalogação melhorará a acessibilidade, permitindo que usuários e analistas encontrem rapidamente os dados necessários para suas análises.