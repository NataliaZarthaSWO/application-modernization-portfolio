# AIPAM-AD-ModernizationAdvisory.WBS.xlsx

_Fuente: plantilla Excel convertida a Markdown_

## Hoja: AI-Powered AMA

### Resumen de esfuerzo

_for 5 apps (size: S, M, L)_

| Responsible | Effort |
| --- | --- |
| Project Manager | 16 |
| Modernisation Consultant | 100 |
| Solution Engineer | 0 |
| Infraestructure Consultant | 0 |
| XDC Associate | 2 |
| XDC Senior Consultant | 2 |
| UX Consultant | 0 |
| Total | 104 |

### WBS

| # | Phase | Service Module | Acticity | Predecessor | Mandatory | Grouped tasks | Effort AMA v1.2 [hrs] | Duration AMA v1.2 [days] | Effort [hrs] OneClick Sense | Effort [hrs] Github Copilot | Effort [hrs] Prompt Management | Effort [hrs] Neo4J | Responsible |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Onboarding​ | Kick-off | Perform Project kick-off |  | Required | Yes | 1 | 1 |  |  |  |  | Project Manager |
| 1.1 | Onboarding​ | Kick-off | Perform Methodology overview |  | Required | Yes | 0.5 |  |  |  |  |  | Project Manager |
| 1.2 | Onboarding​ | Kick-off | Socialize Application Inventory | 1 | Optional | Yes | 1 |  |  |  |  |  | Project Manager |
| 1.3 | Onboarding​ | Kick-off | Socialize Application Architecture | 1 | Optional | Yes | 2 |  |  |  |  |  | Project Manager |
| 1.4 | Onboarding​ | Management | Execute Funding Program Management |  | Optional | Yes |  |  |  |  |  |  | Project Manager |
| 1.5 | Onboarding​ | Management | Billing milestones Management |  | Required | Yes |  |  |  |  |  |  | Project Manager |
| 1.6 | Onboarding​ | Management | Coordinate the meeting with Applications and Infrastructure Teams |  | Required | Yes |  |  |  |  |  |  | Project Manager |
| 1.7 | Onboarding​ | Strategic Alignment Workshop | Identify Business Drivers |  | Required | Yes | 0.5 | 1 |  |  |  |  | Project Manager |
| 1.8 | Onboarding​ | Strategic Alignment Workshop | Identify Modernization Drivers |  | Required | Yes | 0.5 |  |  |  |  |  | Modernisation Consultant |
| 1.9 | Onboarding​ | Strategic Alignment Workshop | Identify organizational Capacity Map (AS-IS) |  | Required | No | 0.5 |  |  |  |  |  | Modernisation Consultant |
| 1.1 | Onboarding​ | Strategic Alignment Workshop | Respond the CAF / WAF surveys |  | Required | Yes | 0.5 |  |  |  |  |  | Infraestructure Consultant |
| 1.11 | Onboarding​ | Strategic Alignment Workshop | Identify Operational Costs |  | Required | No | 0.5 |  |  |  |  |  | Modernisation Consultant |
| 1.12 | Onboarding​ | Strategic Alignment Workshop | Consolidate and analyse workshop results | 1.7;1.8;1.9;1.10;1.11 | Required | Yes | 2 | 1 |  |  |  |  | Modernisation Consultant |
| 1.13 | Onboarding​ | Strategic Alignment Workshop | Consolidate and analize Application Inventory | 1.3 | Required | Yes | 2 |  |  |  |  |  | Modernisation Consultant |
| 1.14 | Onboarding​ | Strategic Alignment Workshop | Generate an application discovery and evaluation plan (prioritization) | 1.12 | Required | Yes | 2 | 1 |  |  |  |  | Modernisation Consultant |
| 2 | Discovery & Assessment | AI-Powered Application Discovery ​(Per wave) |  |  |  |  |  |  |  |  |  |  |  |
| 2.1 | Discovery & Assessment | AI-Powered Application Discovery​ | Preapare application discovery (enable assessment tools, pre-requisites, permissions, etc.) | 1.3 | Required | Yes | 1 |  |  |  |  |  | Modernisation Consultant |
| 2.2 | Discovery & Assessment | AI-Powered Application Discovery​ | Execute application discovery (Source Code Analysis) | 2.1 | Required | No | 2 | 1 |  | 4 |  |  | Modernisation Consultant |
|  | Discovery & Assessment | AI-Powered Application Discovery​ | Execute application usability and accessibility discovery | 2.1. | Under construction | Yes |  |  |  |  |  |  | UX Consultant |
| 2.3 | Discovery & Assessment | AI-Powered Application Discovery​ | Execute application dependency mapping analysis | 2.2 | Required | Yes | 2 | 1 |  | 4 |  |  | Modernisation Consultant |
| 2.1 | Discovery & Assessment | AI-Powered Application Discovery​ | Execute application portfolio rationalization | 2.2 | Required | No | 3 | 1 |  |  | 2 |  | Modernisation Consultant |
| 3 | Discovery & Assessment | Infrastructure & Network Discovery (Per wave) |  |  |  |  |  |  |  |  |  |  |  |
| 3.1 | Discovery & Assessment | Infrastructure & Network Discovery | Execute Network Flow & Connectivity analysis | 1.1 | Optional | Yes | *add effort with cloud service team |  | Review Cloud Service Estimation | Review Cloud Service Estimation | Review Cloud Service Estimation |  | Infraestructure/Cloud Consultant |
| 3.2 | Discovery & Assessment | Infrastructure & Network Discovery | Execute Security & Compliance Baseline analysis | 1.1 | Optional | Yes | *add effort with cloud service team |  | Review Cloud Service Estimation | Review Cloud Service Estimation | Review Cloud Service Estimation |  | Infraestructure/Cloud Consultant |
| 3.3 | Discovery & Assessment | Infrastructure & Network Discovery | Execute Dependency Mapping analysis (Infra-Level) | 1.1 | Optional | Yes | *add effort with cloud service team |  | Review Cloud Service Estimation | Review Cloud Service Estimation | Review Cloud Service Estimation |  | Infraestructure/Cloud Consultant |
| 3.4 | Discovery & Assessment | Infrastructure & Network Discovery | Execute Infrastructure Health & Lifecycle Review | 1.1 | Optional | Yes | *add effort with cloud service team |  | Review Cloud Service Estimation | Review Cloud Service Estimation | Review Cloud Service Estimation |  | Infraestructure/Cloud Consultant |
| 4 | Discovery & Assessment | AI-Powered Database Discovery​ (Per wave) |  |  |  |  |  |  |  |  |  |  |  |
| 5.1 | Discovery & Assessment | AI-Powered Database Discovery​ | Setup the Database migration tool (Client) | 1.2 | Required | No | 0.5 | 1 |  |  |  | 2 | Modernisation Consultant |
| 5.2 | Discovery & Assessment | AI-Powered Database Discovery​ | Run the Database Migration Tool assessment | 1.2 | Required | Yes | 1 | 1 |  |  |  | 2 | Modernisation Consultant |
| 5.3 | Discovery & Assessment | AI-Powered Database Discovery​ | Execute the Database Graph Analysis Tool | 1.2 | Required | Yes | 2 |  |  |  |  |  | Modernisation Consultant |
| 5.4 | Discovery & Assessment | AI-Powered Database Discovery​ | Generate report from the database analysis tool | 1.2 | Required | No | 1 |  |  |  |  |  | Modernisation Consultant |
| 5 | Discovery & Assessment | AI-Powered Strategic Analysis |  |  |  |  |  |  |  |  |  |  |  |
| 5.1 | Discovery & Assessment | Strategic Modernization Approach | Perform strategic analysis of applications and databases | 2.1 | Required | Yes | 2 | 1 |  |  | 4 |  | Modernisation Consultant |
| 5.2 | Discovery & Assessment | Strategic Modernization Approach | Develop an application modernization approach for the applications within scope | 5.1 | Required | Yes | 1 | 1 |  |  | 4 |  | Modernisation Consultant |
| 5.3 | Discovery & Assessment | Strategic Modernization Approach | Define the refactoring profile for projects that require refactoring | 2.1 | Required | Yes | 0.5 | 2 |  |  | 10 |  | Modernisation Consultant |
| 5.4 | Discovery & Assessment | Strategic Modernization Approach | Present the application modernization approach to key stakeholders | 5.2 | Required | Yes | 1 |  |  |  |  |  | Modernisation Consultant |
| 5.5 | Discovery & Assessment | Strategic Modernization Approach | Conduct a Q&A session to define the modernization path for each application | 5.4 | Required | Yes | 1 |  |  |  |  |  | Modernisation Consultant |
| 6 | Strategic Design | Cloud Application Architecture Definition |  |  |  |  |  |  |  |  |  |  |  |
| 6.1 | Strategic Design | AI-Guided Cloud Architecture Definition​ | Design the Cloud Architecture<br>- Consolide architecture drivers<br>- Prepare an infrastructure diagram using reference architectures.<br>- Prepare a data flow diagram of the infrastructure architecture.<br>- Prepare a design of the observability and monitoring for each in-scope application.<br>- Present the results of the architecture definition. | 5.3 | Required | No | 36 | 6 |  |  | 24 |  | Modernisation Consultant |
| 6.4 | Strategic Design | Landing Zone Alignment | Create Landing Zone Strategy | 6 | Optional | Yes |  |  | Review Cloud Service Estimation | Review Cloud Service Estimation | Review Cloud Service Estimation |  | Infraestructure Consultant |
| 6.5 | Strategic Design | Landing Zone Alignment | Align Landing Zone Strategy Alignment | 6.1 | Optional | Yes | 2 | 1 |  |  | 2 |  | Modernisation Consultant |
| 6.6 | Strategic Design | DevOps Strategy Alignment​ | Create DevOps Strategy (Add-on) |  | Optional | Yes | 37 | 2 |  |  | 4 |  | Modernisation Consultant |
| 6.7 | Strategic Design | DevOps Strategy Alignment​ | Align DevOps Strategy | 7 | Optional | Yes | 16 | 2 |  |  | 4 |  | Modernisation Consultant |
| 7 | Strategic Design | Business Case​ & TCO Modeling |  |  |  |  |  |  |  |  |  |  |  |
| 7.1 | Strategic Design | Business Case​ & TCO Modeling | Consolidate Business Case inputs (costs, assumptions) | 5.3 | Required | Yes | 7 | 1 | 4 |  |  |  | Modernisation Consultant |
| 7.2 | Strategic Design | Business Case​ & TCO Modeling | Estimate Cloud Cost | 6 | Required | No | 16 | 2 |  |  | 6 |  | Modernisation Consultant |
| 7.3 | Strategic Design | Business Case​ & TCO Modeling | Build Business Case for modernization | 7.3 | Required | No | 40 | 2 |  |  | 20 |  | Modernisation Consultant |
| 8 | Plan | Migration & Modernization Consolidation Plan |  |  |  |  |  |  |  |  |  |  |  |
| 8.1 | Plan | Migration & Modernization Consolidation Plan | Compile migration and modernization strategies | 6.1 | Required | Yes | 1 | 2 |  |  | 8 |  | Modernisation Consultant<br>Cloud Consultant |
| 8.2 | Plan | Migration & Modernization Consolidation Plan | Compile business cases | 8.1 | Required | Yes | 1 | 1 | 2 |  |  |  | Modernisation Consultant |
| 8.3 | Plan | Migration & Modernization Consolidation Plan | Analyze alternatives and select the most optimal strategy to execute the cloud transition | 8.2 | Required | Yes | 3 |  |  |  |  |  | Modernisation Consuñtant<br>Cloud Consultant<br>Pre-sales Consltant |
| 8.4 | Plan | Migration & Modernization Consolidation Plan | Develop the implementation-phase roadmap | 8.3 | Required | Yes | 1 |  |  |  |  |  | Modernisation Consuñtant<br>Cloud Consultant<br>Pre-sales Consltant |
| 8.5 | Plan | Migration & Modernization Consolidation Plan | Consolidate the required specialized capabilities | 8.4 | Required | Yes | 1 |  |  |  |  |  | Modernisation Consuñtant<br>Cloud Consultant<br>Pre-sales Consltant |
| 8.6 | Plan | Migration & Modernization Consolidation Plan | Size of the effort and projected duration | 8.5 | Required | Yes | 1 |  |  |  |  |  | Modernisation Consuñtant<br>Cloud Consultant<br>Pre-sales Consltant |
| 8.7 | Plan | Migration & Modernization Consolidation Plan | Perform the executive presentation of the results | 8.6 | Required | Yes | 1 |  |  |  |  |  | Modernisation Consuñtant<br>Cloud Consultant<br>Pre-sales Consltant |
| 9 | Strategic Design | Modernization PoV AI-Assisted (Optional) |  |  |  |  |  |  |  |  |  |  | Modernisation Consuñtant<br>Cloud Consultant<br>Pre-sales Consltant |
| 9.1 | Strategic Design | Rapid Modernization PoV | Define the PoV plan. | 5.4 |  |  |  |  |  |  |  |  | Modernisation Consultant<br>Cloud Consultant<br>Project Manager<br>Pre-sales Consultant |
| 9.2 | Strategic Design | Rapid Modernization PoV | Contextualize the modernization strategy, technical design and align objectives with the hyperscaler funding (if the proposal includes it) | 5.4 | Optional | Yes |  |  | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx |  | Modernisation Consultant |
| 9.3 | Strategic Design | Rapid Modernization PoV | Set up the environment and prepare test data. | 9.4 | Optional | Yes |  |  | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx |  | Solution Engineer |
| 9.4 | Strategic Design | Rapid Modernization PoV | Implement and integrate the PoV. | 9.5 | Optional | Yes |  |  | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx |  | Solution Engineer |
| 9.5 | Strategic Design | Rapid Modernization PoV | Conduct testing, validation, and present results. | 10 | Optional | Yes |  |  | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx | AIPAM-AD-ModernizationAdvisory.PoV.WBS.xlsx |  | Solution Engineer |
| 10 |  | Project management | Follow-up and control |  |  |  | 16 | 20 | 16 |  |  |  | Project Manager |
| 11 |  | Support | Rationalization Analysis support | 3 | Optional |  | 2 | 2 |  |  | 2 |  | XDC Associate |
| 11.1 |  | Support | Application Discovery support | 2.2 | Optional |  | 2 | 2 |  |  | 2 |  | XDC Senior Consultant |
|  |  |  |  |  |  |  |  | 214 | 56 | 22 | 8 | 92 | 4 |
