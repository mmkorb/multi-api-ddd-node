# Multi-API DDD Node

A flexible backend template built with **TypeScript** that supports multiple APIs (REST, GraphQL, gRPC, MQTT, WebSocket, Kafka, RabbitMQ) and can easily be customized to fit different use cases. The architecture follows **Domain-Driven Design (DDD)** principles, making it easy to extend, scale, and maintain.

## Features

- **Multi-API Support**: REST, GraphQL, gRPC, OData, MQTT, and WebSocket APIs are included. You can easily delete or add APIs as needed by removing related files and configurations ().
- **Domain-Driven Design**: Follow DDD principles for maintainable and scalable code.
- **Docker Ready**: The project is pre-configured to run in Docker, making deployment straightforward.
- **TypeScript**: Built with TypeScript for better type safety and developer experience.
- **Customizable**: Remove unused APIs and tools or add new ones easily.
- **Validation**: Input validation with `Joi`.
- **Logging**: Powered by `Pino` for high-performance logging.
- **Testing**: Includes support for unit, integration, and acceptance tests using `Jest` and `Supertest`.

## Installation and dependencies

o get started with the project, clone this repository, switch to the clean_version branch, install the dependencies from package.json, and create the structure by executing the PowerShell script create-structure.ps1.

If you want the example rather than the template, clone the main branch and install the dependencies from package.json.

## DDD architecture folders
```plaintext
# Project Structure Overview

This document provides a detailed overview of the project structure, describing the purpose of each directory and file. The structure follows clean architecture principles for maintainability and scalability.

```plaintext
src/
├── application/                    # Application layer - Orchestration of APIs and services
│   ├── api/                        # API-specific interfaces and implementations
│   │   ├── restful/                # REST API components
│   │   │   ├── controllers/        # REST controllers handling requests and responses
│   │   │   ├── dtos/               # Data Transfer Objects for request/response validation
│   │   │   ├── endpoints/          # Endpoint-specific logic
│   │   │   ├── routes/             # Route definitions
│   │   │   └── index.ts            # REST API entry point
│   │   ├── graphql/                # GraphQL API components
│   │   │   ├── resolvers/          # GraphQL resolvers for queries and mutations
│   │   │   ├── schemas/            # GraphQL schema definitions
│   │   │   ├── loaders/            # Data loaders for batch operations
│   │   │   └── index.ts            # GraphQL API entry point
│   │   ├── grpc/                   # gRPC API components
│   │   │   ├── services/           # gRPC service implementations
│   │   │   ├── protos/             # Protocol Buffer definitions
│   │   │   └── index.ts            # gRPC API entry point
│   │   ├── mqtt/                   # MQTT API components
│   │   │   ├── brokers/            # Broker configurations and setups
│   │   │   ├── topics/             # Topic-specific logic
│   │   │   └── index.ts            # MQTT API entry point
│   │   ├── kafka/                  # Kafka-based API
│   │   │   ├── messageProcessor.ts # Process incoming Kafka messages
│   │   │   ├── responseBuilder.ts  # Build Kafka response messages
│   │   │   └── index.ts            # API layer entry point
│   │   ├── rabbitmq/               # RabbitMQ-based API
│   │   │   ├── messageProcessor.ts # Process incoming RabbitMQ messages
│   │   │   ├── responseBuilder.ts  # Build RabbitMQ response messages
│   │   │   └── index.ts            # API layer entry point
│   │   ├── websocket/              # WebSocket API components
│   │   │   ├── events/             # WebSocket event handlers
│   │   │   ├── handlers/           # Logic for handling WebSocket messages
│   │   │   └── index.ts            # WebSocket API entry point
│   │   └── index.ts                # API layer entry point
│   ├── services/                   # Services interacting with domain logic
├── domain/                         # Core business logic layer
│   ├── models/                     # Domain models (entities and value objects)
│   ├── services/                   # Domain services (business rules and logic)
│   └── repositories/               # Domain repository interfaces
├── infrastructure/                 # Infrastructure layer - External integrations and tools
│   ├── database/                   # Database-related configurations and tools
│   ├── messaging/                  # Messaging systems and brokers
│   │   ├── kafka/                  # Kafka-specific integration
│   │   │   ├── producer.ts         # Handles Kafka message production
│   │   │   └── consumer.ts         # Handles Kafka message consumption
│   │   ├── rabbitmq/               # RabbitMQ-specific integration
│   │   │   ├── publisher.ts        # Handles RabbitMQ message publishing
│   │   │   └── subscriber.ts       # Handles RabbitMQ message subscribing
│   └── logging/                    # Logging configurations and implementations
├── config/                         # Global configuration files
│   ├── index.ts                    # Main configuration loader
│   ├── serverConfig.ts             # Server-related configurations
│   ├── dbConfig.ts                 # Database configurations
│   └── apiConfig.ts                # API-related configurations
├── shared/                         # Shared utilities and constants
├── tests/                          # Test files
│   ├── unit/                       # Unit tests
│   ├── integration/                # Integration tests
│   └── acceptance/                 # Acceptance tests
├── .env                            # Environment variable file
├── .gitignore                      # Git ignore file
├── LICENSE                         # Project license
├── README.md                       # Project documentation
├── package.json                    # NPM package definition
├── tsconfig.json                   # TypeScript configuration file
└── Dockerfile                      # Docker configuration for containerization
```

## License
This project is licensed under the MIT License - see the `LICENSE` file for details.
