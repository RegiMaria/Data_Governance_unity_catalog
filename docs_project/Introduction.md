:pineapple: **Português abaixo**

<h3>Introduction </h3>

At Databricks, **Data Governance** is really tied into the **Unity Catalog**, which is the main feature for managing and cataloging data on the platform. The Unity Catalog gives you a centralized spot for all your data and metadata, making governance easier across different areas.

Here are the key functions associated with the Unity Catalog:

- Access Control
- Auditing and Monitoring
- Data Cataloging
- Data Sharing with Delta Sharing
- Metadata Management
- Data Classification
- Documentation
- Data Lineage
- Integration with Data Pipelines

The Unity Catalog (UC) acts as the link between the Lakehouse and the Workspace.

![B36GdmtDAECDAAAAAElFTkSuQmCC](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfkDIvWnQE1qYI9urvTuGNp1dBjrwxghERlJCg_lS1sxFXjGo04HCpDt_qjJiU2MiDiPuEjap7x1MRuWOJeNCbvHAqd-IMqt6murqr67y5CNB7w_6fpRda5Cmxg5PMrXnJj_rSYSAuSe2pXbLlJ7sg-ZAE?key=PepbU5suV8jfwoQxzU9Cbg)

 Figure 1 - Unity Catalog Architecture

Data Governance Model in Unity Catalog (UC)

![GSYGEOAAAAAASUVORK5CYII=](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdWmk0P3w1N_MZwuZVjUEPH4VeuP0kpF9L98Hmt_r6m3sEuYezRDnBxyrPHscIEvtQ5mlAYfexc2k-VDKLxcRY5W5-0LR9cKOf-bVT3oZzvpw9O10KX5OPOColkrp--CDDLnYpaes4i78R5T7AIwdPyWCMw?key=PepbU5suV8jfwoQxzU9Cbg)

 Figure 2 - UC Data Governance

### Objectives

In this project, we’re going to focus on AI-assisted Data Cataloging with Generative AI.

Some of its capabilities include:

- Analyzing the content of the data and automatically generating metadata, saving time in the cataloging process.
- Suggesting more descriptive and standardized names for tables and columns based on context, ensuring consistent naming.
- Dynamically describing tables and columns based on their usage and context.
- Identifying anomalies or inconsistencies in the data through pattern recognition and suggesting improvements.
- Enhancing data search and discovery by interpreting user queries and linking them to available data.
- Monitoring changes in the data and automatically updating relevant documentation.
- Automatically identifying which data is sensitive or critical.
- Analyzing how data is being used in the organization and providing insights into which data is most valued.

### Justification

We’re not looking to dive into the architecture of the UC, elements, roles, and responsibilities within the platform, or the implementation itself, but rather to focus specifically on AI-assisted Data Cataloging. We believe this functionality improves data accessibility, ensures that information is up-to-date and accurate, saves time, optimizes processes, and makes data asset management more efficient and secure, which is crucial for business analysis. Plus, with the increasing complexity of data environments and the variety of information sources, the ability to effectively monitor, control, and analyze data becomes a competitive edge.

### Business Impact: Data Governance and Cataloging

- **Decision-Making**: Companies that use well-cataloged and governed data can perform faster and more accurate analyses.
- **Operational Efficiency**: Effective governance can cut down the time spent searching for and validating data. With well-cataloged data, teams can quickly access relevant information, saving hours of work and boosting efficiency in daily operations.
- **Compliance and Risk Reduction**: Data governance helps ensure that companies comply with data protection regulations (like LGPD or GDPR). A data catalog that identifies sensitive information can help avoid hefty fines and protect the company’s reputation.
- **Service Personalization**: Analyzing well-cataloged customer data can lead to more effective personalization of services and products.
- **Market Opportunity Identification**: With effective cataloging, we can spot gaps in the market or unmet customer needs. This can lead to developing new products or services that address these demands, boosting the organization’s competitiveness.
- **Performance Analysis**: With organized data, companies can measure the return on investment (ROI) of their marketing campaigns or operational initiatives.

### References:

Image Table:

Figure 1 - [Unity Catalog Architecture](databricks.com/en/data-governance/unity-catalog/index.html)

Figure 2 - UC Data Governance







**Português**

----------------------------------------------



<h4>Introdução</h4>

Na Databricks, a **Governança de Dados** é fortemente integrada ao **Unity Catalog**, que é a funcionalidade principal para gerenciamento e catalogação de dados na plataforma. O Unity Catalog fornece um repositório centralizado para dados e metadados, facilitando a governança em várias áreas. 

Principais funções associadas ao Unity Catalog:

- Controle de Acesso
- Auditoria e Monitoramento
- Catalogação de Dados
- Compartilhamento de Dados com Delta Sharing
- Gerenciamento de Metadados
- Classificação de Dados
- Documentação
- Data Lineage
- Integração com Pipelines de Dados

O Unity Catalog (UC) é o elemento de ligação entre o Lakehouse e o Workspace

![B36GdmtDAECDAAAAAElFTkSuQmCC](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfkDIvWnQE1qYI9urvTuGNp1dBjrwxghERlJCg_lS1sxFXjGo04HCpDt_qjJiU2MiDiPuEjap7x1MRuWOJeNCbvHAqd-IMqt6murqr67y5CNB7w_6fpRda5Cmxg5PMrXnJj_rSYSAuSe2pXbLlJ7sg-ZAE?key=PepbU5suV8jfwoQxzU9Cbg)

​							Figura 1 - Arquitetura Unity Catalog



Modelo de governança de dados no Unity Catalog (UC)

![GSYGEOAAAAAASUVORK5CYII=](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdWmk0P3w1N_MZwuZVjUEPH4VeuP0kpF9L98Hmt_r6m3sEuYezRDnBxyrPHscIEvtQ5mlAYfexc2k-VDKLxcRY5W5-0LR9cKOf-bVT3oZzvpw9O10KX5OPOColkrp--CDDLnYpaes4i78R5T7AIwdPyWCMw?key=PepbU5suV8jfwoQxzU9Cbg)

​								Figura 2 - Governança de dados UC



<h4>Objetivos </h4>

Nesse projeto vamos focar na Catalogação de Dados assistida por Inteligência Artificial Generativa.

Entre as suas capacidades, estão:

- **Analisar** o conteúdo dos dados e gerar metadados automaticamente economizando tempo na catalogação de dados em si. 

- **Sugerir**, a partir do contexto, nomes mais descritivos e padronizados para tabelas e colunas, garantindo nomenclatura consistente.

- **Descrever** dinamicamente tabelas e colunas com base em seu uso e contexto.

- **Identificar**, através do reconhecimento de padrões,  anomalias ou inconsistências nos dados e sugerir melhorias.

- **Melhorar** a busca e a descoberta de dados ao interpretar consultas de usuários e relacionar esses pedidos com os dados disponíveis.

- **Monitorar** mudanças nos dados e atualizar automaticamente a documentação relevante.

- **Identificar** automaticamente quais dados são sensíveis ou críticos

- **Analisar** como os dados estão sendo utilizados na organização e fornecer insights sobre quais dados são mais valorizados

<h4>Justificativa </h4>

Não é nossa intenção falar de arquitetura do UC, elementos, papeis e responsabilidades dentro da plataforma ou da implementação com profundidade, mas tratar aqui especificamente da Catalogação de dados assistida por IA. Acreditamos que essa funcionalidade melhora a acessibilidade dos dados,  garante que as informações estejam atualizadas e precisas, economizando tempo, otimizando processos, tornando a gestão de ativos de dados mais eficiente e segura,  o que é crucial para **análises de negócios**. Além disso, com a crescente complexidade dos ambientes de dados e a diversidade de fontes de informações, a capacidade de **monitorar, controlar e analisar dados de maneira eficaz** se torna um diferencial competitivo.



<h4>Impacto nos negócios: Governança de dados e catalogação<h4>


- Tomada de decisão: Empresas que utilizam dados bem catalogados e governados podem realizar análises mais rápidas e precisas. 
- Eficiência Operacional: Uma governança eficaz pode reduzir o tempo gasto na busca e na validação de dados. Com dados bem catalogados, as equipes podem acessar rapidamente informações relevantes, economizando horas de trabalho e melhorando a eficiência nas operações diárias.
- Compliance e Redução de risco: A governança de dados ajuda a garantir que as empresas estejam em conformidade com regulamentações de proteção de dados (como a LGPD ou GDPR). Um catálogo de dados que identifica quais informações são sensíveis pode ajudar a evitar multas pesadas e proteger a reputação da empresa.
- Personalização de serviços: A análise de dados de clientes bem catalogados pode levar a uma personalização mais eficaz de serviços e produtos.
- Identificação de oportunidade de Mercado: Com uma catalogação eficaz, podemos identificar lacunas no mercado ou necessidades não atendidas dos clientes. Isso pode levar ao desenvolvimento de novos produtos ou serviços que atendam a essas demandas, aumentando a competitividade da organização
- Análise de desempenho: Com dados bem organizados, as empresas podem medir o retorno sobre o investimento (ROI) de suas campanhas de marketing ou iniciativas operacionais. 









**REFERÊNCIAS**:



:pushpin: Tabela de Imagens:

Figura 1 - [Arquitetura- Unity-Catalog](databricks.com/en/data-governance/unity-catalog/index.html)

Figura 2 - Governança de dados UC



