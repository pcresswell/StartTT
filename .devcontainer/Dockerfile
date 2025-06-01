FROM mcr.microsoft.com/devcontainers/java:11

# Install Graphviz
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends graphviz \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create PlantUML directory and download PlantUML jar
RUN mkdir -p /plantuml \
    && curl -L https://github.com/plantuml/plantuml/releases/download/v1.2023.8/plantuml-1.2023.8.jar -o /plantuml/plantuml.jar

# Create project structure
RUN mkdir -p /workspaces/team-topologies-plantuml/{src,examples,tests,themes}

# Set up environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH="${JAVA_HOME}/bin:${PATH}"
