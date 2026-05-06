# 02. AI Application Discovery and Analysis Module

## Overview
The Application Discovery module provides comprehensive analysis of the customer's application portfolio, including landscape analysis, architectural assessment, well-architected framework evaluation, and application rationalization. This module delivers the detailed understanding needed to make informed modernization decisions.

## Key Objectives
- Complete comprehensive application inventory and portfolio analysis
- Assess each application against Well-Architected Framework principles
- Evaluate cloud readiness and migration feasibility
- Develop rationalization strategy (Move, Refactor, Rehost, etc.)
- Identify quick wins and high-priority modernization candidates
- Document application dependencies and data flows

## Scope of Work

### 1. Application Portfolio Analysis
- **Inventory Development:** Complete catalog of all applications
- **Classification:** Tier criticality, lifecycle stage, ownership
- **Metrics:** Lines of code, team size, maintenance costs, business value
- **Visualization:** Portfolio heatmaps and strategic positioning

### 2. Cloud Readiness Assessment
- **Architecture Evaluation:** Current patterns and anti-patterns
- **Scalability Assessment:** Horizontal/vertical scaling capabilities
- **Data Assessment:** Data volume, sensitivity, residency requirements
- **Integration Landscape:** API, messaging, and integration patterns

### 3. Well-Architected Framework Assessment
Evaluate against AWS Well-Architected Framework pillars:
- **Operational Excellence:** Automation, monitoring, metrics
- **Security:** Access control, encryption, compliance
- **Reliability:** Availability, disaster recovery, failure handling
- **Performance Efficiency:** Compute, storage, database optimization
- **Cost Optimization:** Resource efficiency, waste elimination
- **Sustainability:** Energy efficiency, environmental impact

### 4. Application Rationalization
Classify applications using the 6Rs framework:
- **Rehost:** Lift-and-shift migrations (Move)
- **Replatform:** Lift-and-shift with optimizations
- **Refactor/Re-architect:** Modernization for cloud
- **Repurchase:** Move to SaaS/managed services
- **Retire:** Decommission and consolidate
- **Retain:** Keep on-premises for strategic reasons

## Templates & Deliverables

### Assessments & Tools
- **`AIPAM-AD-Well-Architected-Gap-Analysis_Light_60_questions.xlsx`**
  - Streamlined 60-question Well-Architected assessment
  - Pillar scoring and gap analysis
  - Recommendation engine output
  - Baseline for prioritization

- **`AM-AD-PR-Well-Architected-Gap-Analysis_reviewed.xlsx`**
  - Comprehensive, reviewed version of WAF assessment
  - Detailed findings and root cause analysis
  - Priority-ranked recommendations
  - Remediation roadmap

### Documentation
- **`AIPAM-AD-RationalizationMatrix.Template.docx`**
  - Portfolio rationalization mapping
  - Application-by-application 6Rs assignment
  - Migration wave planning
  - Dependencies and sequencing

### Presentations & Guidance
- **`AIPAM-AD-AMA Tools Requirements.pptx`**
  - AWS Application Migration Accelerator overview
  - Automated discovery tools and capabilities
  - Data collection and analysis workflows
  - Integration with AIPAM methodology

- **`AIPAM-AD-CAST-OneClickConsultor-Tools-Requirements-v1.0.docx`**
  - CAST AIP integration for code quality analysis
  - Automated architecture discovery
  - Technical debt quantification
  - Modernization complexity assessment

## Key Activities

### Discovery Workshops
1. **Technical Deep Dives**
   - Application owners present on current architecture
   - Dependencies and integration points identified
   - Performance and scalability considerations
   - Technical debt and pain points discussed

2. **Business Alignment**
   - Business owner input on application criticality
   - ROI and business value assessment
   - Compliance and risk considerations
   - Timeline and priority validation

### Assessment Execution
- **Tool Deployment:** AWS DMS, CAST, database profilers
- **Automated Analysis:** Scan infrastructure, code, dependencies
- **Manual Review:** Architecture patterns, integration complexity
- **Data Consolidation:** Aggregate findings into AIPAM framework

### Rationalization Session
- **Portfolio Mapping:** Plot applications on rationalization matrix
- **Wave Planning:** Sequence applications for migration
- **Dependency Mapping:** Identify sequencing constraints
- **Risk Assessment:** Migration complexity and risk factors

## Assessment Framework

### Assessment Dimensions
| Dimension | Assessment Points | Output |
|-----------|------------------|--------|
| **Complexity** | Architecture, integration, data | Cloud readiness score |
| **Business Value** | ROI, strategic importance, criticality | Prioritization index |
| **Technical Fitness** | Code quality, scalability, licensing | Well-Architected gap score |
| **Operational Readiness** | Team skills, processes, tools | Readiness roadmap |

### Scoring & Output
- **Well-Architected Score:** 0-100 per pillar
- **Cloud Readiness:** Low / Medium / High
- **Migration Complexity:** Simple / Moderate / Complex
- **Wave Assignment:** 1 (Quick Wins) to 3+ (Complex)

## Expected Deliverables

### Assessment Outputs
- ✅ Application inventory (comprehensive catalog)
- ✅ Well-Architected assessments (all critical/important apps)
- ✅ Cloud readiness scoring
- ✅ Rationalization matrix with 6Rs assignments
- ✅ Migration wave planning

### Documentation
- ✅ Application Assessment Report
- ✅ Rationalization Strategy Document
- ✅ Quick Wins Identification
- ✅ Technical Dependencies Map

### Presentations
- ✅ Portfolio assessment findings presentation
- ✅ Rationalization recommendations
- ✅ Migration sequencing rationale
- ✅ Executive summary of opportunities

## Success Criteria
- ✅ 100% of critical applications assessed
- ✅ Well-Architected gaps identified and prioritized
- ✅ All applications assigned to rationalization category
- ✅ Migration waves defined with clear sequencing
- ✅ Quick wins identified and documented
- ✅ Stakeholder alignment on assessment findings

## Timeline
- **Typical Duration:** 2-3 weeks
- **Key Milestones:**
  - Week 1: Setup, tool deployment, initial discovery
  - Week 2: Workshops, detailed assessments
  - Week 3: Rationalization mapping, findings synthesis

## Inputs Required
- Application inventory (or kickstart list from Module 1)
- Architecture documentation and diagrams
- Application owners and technical contacts
- Business requirements and constraints
- Current development and operations processes

## Next Steps
- Transition findings to Phase 1, Module 4 (Database Discovery)
- Finalize application rationalization with stakeholders
- Begin architectural design for priority applications in Phase 2

## Dependencies
- **From Module 1:** Modernization drivers, stakeholder alignment
- **For Phase 2, Module 1:** Rationalization strategy, WAF assessments

---

**Module Version:** 1.0  
**Last Updated:** 2026-04-27  
**Contact:** AIPAM Application Modernization Team