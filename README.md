# Team Topologies PlantUML Extension

A PlantUML extension for creating Team Topologies diagrams, allowing organizations to visualize and document their team structures, interactions, and evolution using the Team Topologies framework.

## Overview

This extension provides a comprehensive set of PlantUML macros and styles for representing:

### Team Types
- Stream-aligned teams
- Platform teams
- Enabling teams
- Complicated-subsystem teams

### Interaction Modes
- Collaboration
- X-as-a-Service
- Facilitating

## Features

- 🎨 Custom shapes and styles for each team type
- 🔄 Clear visualization of team interactions
- 🎯 Team cognitive load indicators
- 📊 Automatic legend generation
- 🎭 Multiple detail levels support
- 🎪 Customizable themes and styling
- 📝 Comprehensive documentation and examples

## Project Status

This project is under active development. Check our [tickets](tickets/) for detailed implementation status and upcoming features.

## Development Setup

This project uses VS Code Dev Containers to ensure a consistent development environment for all contributors.

### Prerequisites

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop)

2. Install Visual Studio Code:
   ```bash
   brew install --cask visual-studio-code
   ```
   Alternatively, you can download it from the [official website](https://code.visualstudio.com/)

3. Install the Dev Containers extension:
   ```bash
   code --install-extension ms-vscode-remote.remote-containers
   ```
   Alternatively, you can install it from the [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/pcresswell/StartTT.git
   cd StartTT
   ```

2. Open the project in VS Code using one of these methods:

   a. If you have the `code` command installed:
   ```bash
   code .
   ```

   b. If the `code` command is not found:
   - Open VS Code manually
   - Go to View → Command Palette (or press Cmd+Shift+P)
   - Type 'shell command' and select "Shell Command: Install 'code' command in PATH"
   - Close and reopen your terminal
   - Then run `code .`

   c. Or simply:
   - Open VS Code
   - Select File → Open Folder
   - Navigate to and select the StartTT folder

3. When prompted, click "Reopen in Container" or:
   - Press F1
   - Select "Dev Containers: Reopen in Container"

4. Wait for the container to build. This will:
   - Install Java, Graphviz, and PlantUML
   - Set up VS Code extensions
   - Start the PlantUML server

### Development Environment

The dev container provides:
- Java 11 runtime
- Graphviz for diagram rendering
- PlantUML server on port 8080
- VS Code extensions for PlantUML and Markdown
- Automatic diagram preview

### Usage

Once the dev container is running, you can:
1. Create or edit `.puml` files
2. Use the PlantUML preview (Alt+D to open preview)
3. Access the PlantUML server at http://localhost:8080

### Project Structure
```
team-topologies-plantuml/
├── src/               # Main source files
├── examples/          # Example diagrams
├── tests/            # Test diagrams
└── themes/           # Theme configurations
```

## Documentation

- [Specification](specification.md) - Detailed project requirements and design
- [System Prompt](system-prompt.md) - Development approach and guidelines
- [Commit Format](commit-format.md) - Git commit message guidelines

## Development

This project follows a ticket-based, incremental development approach. Each feature is developed according to detailed tickets in the [tickets](tickets/) directory.

### Development Process
1. Work on one ticket at a time
2. Complete all acceptance criteria
3. Write clean, documented code
4. Follow commit message guidelines
5. Push changes to GitHub

## License

*License information to be added*

## Contributing

*Contribution guidelines to be added*
