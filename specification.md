# Team Topologies PlantUML Extension Specification

## Overview
This specification outlines the requirements and implementation plan for a PlantUML extension that enables drawing Team Topologies diagrams as described in the book "Team Topologies" by Matthew Skelton and Manuel Pais.

## Core Requirements

1. Support for Team Topologies fundamental patterns:
   - Stream-aligned teams
   - Platform teams
   - Enabling teams
   - Complicated-subsystem teams

2. Support for Team Interaction Modes:
   - Collaboration
   - X-as-a-Service
   - Facilitating
   - Temporary interaction indicators
   - Interaction frequency levels
   - Interaction strength visualization

3. Support for Team Dependencies:
   - Clear visual representation of team relationships
   - Directional flows
   - Interaction modes between teams

4. Team Cognitive Load Visualization:
   - Cognitive load indicators
   - Team capacity representation
   - Clear team boundaries
   - Domain boundaries
   - Responsibility areas

5. Team Evolution Support:
   - Team transition states
   - Team splits and mergers
   - Historical view support
   - Evolution timeline

## Team Types and Their Purpose

### Stream-aligned Team
- **Purpose**: Deliver value directly to end users or customers
- **Key Characteristics**:
  - Works on a single value stream or product
  - End-to-end ownership of features
  - Direct customer/user feedback loop
- **Expected Outcomes**:
  - Rapid and steady flow of features
  - Reduced time to market
  - High customer satisfaction
  - Improved product quality

### Platform Team
- **Purpose**: Enable stream-aligned teams with self-service capabilities
- **Key Characteristics**:
  - Treats platform as a product
  - Focus on usability and reliability
  - Clear service-level objectives
- **Expected Outcomes**:
  - Increased developer productivity
  - Reduced cognitive load for stream-aligned teams
  - Consistent, reliable infrastructure
  - Improved system reliability

### Enabling Team
- **Purpose**: Help stream-aligned teams acquire new capabilities
- **Key Characteristics**:
  - Deep expertise in specific domains
  - Temporary engagement model
  - Focus on knowledge transfer
- **Expected Outcomes**:
  - Increased team capabilities
  - Reduced technical debt
  - Better adoption of best practices
  - Improved team autonomy

### Complicated-subsystem Team
- **Purpose**: Build and maintain complex components requiring specialized expertise
- **Key Characteristics**:
  - Deep technical expertise
  - Focus on specific complex subsystem
  - Clear interfaces and boundaries
- **Expected Outcomes**:
  - Reliable complex components
  - Reduced cognitive load for other teams
  - Consistent and maintainable specialized systems
  - Improved system stability

## Example PlantUML Syntax

```plantuml
@startuml
!include team-topologies.puml

' Define Business Units
BusinessUnit_Boundary(bu1, "Digital Products") {
    Team_Aligned(team1, "Search Team", "Stream-aligned", "Builds and maintains the search experience, focusing on relevance and speed")
    Team_Aligned(team2, "Mobile Team", "Stream-aligned", "Delivers native mobile apps with seamless user experience")
    Team_Complicated(team4, "Payment System", "Complicated Subsystem", "Handles complex payment processing and financial compliance")
}

BusinessUnit_Boundary(bu2, "Platform Services") {
    Team_Platform(team3, "Cloud Platform", "Platform", "Provides scalable cloud infrastructure and developer tools")
    Team_Enabling(team5, "SRE Team", "Enabling", "Helps teams improve reliability and operational excellence")
}

' Define Interactions
Collaboration(team1, team2, "Feature Coordination")
XaaS(team3, team1, "Cloud Services")
XaaS(team3, team2, "Cloud Services")
Facilitating(team5, team4, "DevOps Practices")

@enduml
```

## Implementation Plan

### Phase 1: Core Team Types (Week 1)
- [TT-001] Create basic PlantUML include file
- [TT-002] Implement Stream-aligned team shape and styling
- [TT-003] Implement Platform team shape and styling
- [TT-004] Implement Enabling team shape and styling
- [TT-005] Implement Complicated-subsystem team shape and styling

### Phase 2: Team Interactions (Week 2)
- [TT-006] Implement Collaboration interaction style
- [TT-007] Implement X-as-a-Service interaction style
- [TT-008] Implement Facilitating interaction style

### Phase 3: Styling and Themes (Week 3)
- [TT-009] Implement styling and themes system (base framework)
- [TT-016] Define and implement color scheme system
- [TT-011] Implement team icons and sprites system
- [TT-018] Create theme presets
- [TT-017] Implement layout optimizations

### Phase 4: Documentation and Examples (Week 4)
- [TT-019] Create usage documentation
- [TT-020] Create example diagrams
- [TT-021] Create template library
- [TT-022] Create installation guide
- [TT-023] Create quick-start guide

Detailed specifications for each ticket can be found in the `tickets/` directory.

## Technical Specifications

### File Structure
```
team-topologies-plantuml/
├── team-topologies.puml (main include file)
├── examples/
│   ├── basic-teams.puml
│   ├── interactions.puml
│   └── complex-org.puml
└── themes/
    ├── default.puml
    └── modern.puml
```

### Color Scheme
- Stream-aligned: #2196F3
- Platform: #FF9800
- Enabling: #4CAF50
- Complicated-subsystem: #9C27B0
- Interaction lines: #757575

### Implementation Notes
The following technical features are tracked in separate tickets:

- [TT-011] Team icons and sprites system
- [TT-012] Custom stereotypes for team types
- [TT-009] Consistent styling and theming (includes skinparam configuration)
- [TT-001] PlantUML macros and components (part of base include file)
- [TT-013] Preprocessing directives and conditional rendering
  - Multiple detail levels
  - Diagram metadata and annotations
- [TT-014] Team boundary calculations and management
- [TT-015] Automatic legend generation

All implementations will maintain compatibility with PlantUML standard notation.

## Success Criteria
- [ ] All team types can be represented
- [ ] All interaction modes are supported
- [ ] Diagrams are visually clear and professional
- [ ] Syntax is intuitive and consistent
- [ ] Documentation is comprehensive
- [ ] Examples cover common use cases
