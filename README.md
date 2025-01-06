# Multi-API DDD Node Backend Template

A flexible and scalable backend template built with Node.js and TypeScript, following Domain-Driven Design (DDD) principles. This project supports multiple API types, including RESTful, GraphQL, gRPC, WebSocket, MQTT, and OData. It's designed to serve as a starting point for scalable, maintainable, and modular applications, making it easier for developers to create high-quality backends while following best practices.

Key Features:
Domain-Driven Design (DDD): Organized layers to separate concerns and enable clear domain modeling.
Multiple API Support: Easily integrate RESTful, GraphQL, gRPC, WebSocket, MQTT, and OData APIs in one project. APIs can be removed or added easily based on your project needs.
ORM with PostgreSQL: Use Sequelize to interact with PostgreSQL databases efficiently.
Logging: Built-in logging using Pino for fast and structured logs.
External Services: Easy integration with third-party services using Axios for HTTP requests and MQTT for messaging.
Docker Ready: Fully configured for Docker, ensuring a smooth development and deployment process in containerized environments.
Testing: Integrated Jest for unit, integration, and acceptance tests, with built-in support for TypeScript.
Environment Configuration: Use .env files for easy project configuration.
TypeScript: The entire project is written in TypeScript, providing type safety and better development experience.
Use Cases:
Microservices: Ideal for building microservices with different API types in the same project.
Enterprise Applications: Provides a strong foundation for complex applications requiring multiple APIs and clear domain boundaries.
Modular Projects: Easily customize or remove parts of the template (APIs, tools, etc.) based on your project requirements, and add others as needed.
Getting Started:
Clone this repository.
Run npm install to install dependencies.
Customize the APIs and tools you need (remove unneeded APIs and services).
Start building your application following the DDD principles.
Use Docker to easily deploy the application.
