# Multi-API DDD Node

A flexible backend template built with **TypeScript** that supports multiple APIs (REST, GraphQL, gRPC, OData, MQTT, WebSocket) and can easily be customized to fit different use cases. The architecture follows **Domain-Driven Design (DDD)** principles, making it easy to extend, scale, and maintain.

## Features

- **Multi-API Support**: REST, GraphQL, gRPC, OData, MQTT, and WebSocket APIs are included. You can easily delete or add APIs as needed by removing related files and configurations.
- **Domain-Driven Design**: Follow DDD principles for maintainable and scalable code.
- **Docker Ready**: The project is pre-configured to run in Docker, making deployment straightforward.
- **TypeScript**: Built with TypeScript for better type safety and developer experience.
- **Customizable**: Remove unused APIs and tools or add new ones easily.
- **Validation**: Input validation with `Joi`.
- **Logging**: Powered by `Pino` for high-performance logging.
- **Testing**: Includes support for unit, integration, and acceptance tests using `Jest` and `Supertest`.

## Installation

To get started with the project, clone this repository and install the dependencies.

## The project follows the DDD architecture and includes the following folders
```plaintext
src/
├── application/
│   ├── api/
│   │   ├── restful/          # REST API
│   │   ├── graphql/          # GraphQL API
│   │   ├── grpc/             # gRPC API
│   │   ├── mqtt/             # MQTT API
│   │   ├── odata/            # OData API
│   │   ├── websocket/        # WebSocket API
│   ├── services/             # Handles the interaction between APIs and domain logic
├── domain/                   # Core business models and logic
├── infrastructure/            # External services, database, logging
├── shared/                    # Shared utilities and constants
└── tests/                     # Unit, Integration, and Acceptance Tests
```

## License
This project is licensed under the MIT License - see the `LICENSE` file for details.
