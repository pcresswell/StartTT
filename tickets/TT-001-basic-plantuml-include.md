# TT-001: Create Basic PlantUML Include File

## Summary
Create the foundational PlantUML include file that will serve as the base for all Team Topologies diagrams.

## Description
Create the main `team-topologies.puml` file with basic setup and configuration for the extension. This file will be the entry point for all Team Topologies diagrams.

## Tasks
1. Create the main include file structure
2. Set up basic PlantUML configuration
3. Define initial macro structure
4. Add version information
5. Set up namespace to avoid conflicts

## Acceptance Criteria
- [ ] File `team-topologies.puml` exists in the root directory
- [ ] Basic PlantUML configuration is set up
- [ ] Namespace is properly defined to avoid conflicts
- [ ] File can be included in other PlantUML diagrams without errors
- [ ] Version information is included in comments
- [ ] Basic documentation comments are included

## Dependencies
None - This is the first ticket to be implemented

## Estimated Effort
Small (1-2 days)

## User Prompt
Refer to the system prompt in `system-prompt.md` for overall context and development approach.

Your task is to create the foundational PlantUML include file for the Team Topologies extension. This is the first ticket in the project, and it sets up the basic structure that all other features will build upon.

Specific requirements:

1. Create a new file called `team-topologies.puml` in the root directory with:
   - Proper PlantUML namespace to avoid conflicts with other extensions
   - Basic configuration using skinparam
   - Version information in comments
   - File header with usage instructions

2. The file should support basic PlantUML functionality:
   ```plantuml
   @startuml
   !include team-topologies.puml
   ' User's diagram code will go here
   @enduml
   ```

3. Implement proper error handling:
   - Check for PlantUML version compatibility
   - Provide clear error messages if requirements aren't met

4. Add clear documentation:
   - File purpose and usage
   - Version information
   - License information
   - Basic include instructions

Test the implementation by:
1. Creating a minimal test diagram
2. Verifying the include file works
3. Checking namespace isolation
4. Validating error messages

Commit your changes with the message: "[TT-001] Create basic PlantUML include file"
