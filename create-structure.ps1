# Encoding set to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Function to create directory and file if they don't already exist
function Create-DirAndFile {
    param (
        [string]$path,
        [string]$file
    )

    if (!(Test-Path -Path $path)) {
        New-Item -ItemType Directory -Path $path -Force
    }

    if ($file -and !(Test-Path -Path "$path\$file")) {
        New-Item -ItemType File -Path "$path\$file" -Force
    }
}

# Root directory of the project
$root = "src"

# Creating directories and files according to the specified structure
Create-DirAndFile "$root/application/api/restful/controllers" $null
Create-DirAndFile "$root/application/api/restful/dtos" $null
Create-DirAndFile "$root/application/api/restful/endpoints" $null
Create-DirAndFile "$root/application/api/restful/routes" $null
Create-DirAndFile "$root/application/api/restful" "index.ts"
Create-DirAndFile "$root/application/api/graphql/resolvers" $null
Create-DirAndFile "$root/application/api/graphql/schemas" $null
Create-DirAndFile "$root/application/api/graphql/loaders" $null
Create-DirAndFile "$root/application/api/graphql" "index.ts"
Create-DirAndFile "$root/application/api/grpc/services" $null
Create-DirAndFile "$root/application/api/grpc/protos" $null
Create-DirAndFile "$root/application/api/grpc" "index.ts"
Create-DirAndFile "$root/application/api/mqtt/brokers" $null
Create-DirAndFile "$root/application/api/mqtt/topics" $null
Create-DirAndFile "$root/application/api/mqtt" "index.ts"
Create-DirAndFile "$root/application/api/kafka" "messageProcessor.ts"
Create-DirAndFile "$root/application/api/kafka" "responseBuilder.ts"
Create-DirAndFile "$root/application/api/kafka" "index.ts"
Create-DirAndFile "$root/application/api/rabbitmq" "messageProcessor.ts"
Create-DirAndFile "$root/application/api/rabbitmq" "responseBuilder.ts"
Create-DirAndFile "$root/application/api/rabbitmq" "index.ts"
Create-DirAndFile "$root/application/api/websocket/events" $null
Create-DirAndFile "$root/application/api/websocket/handlers" $null
Create-DirAndFile "$root/application/api/websocket" "index.ts"
Create-DirAndFile "$root/application" "index.ts"
Create-DirAndFile "$root/domain/models" $null
Create-DirAndFile "$root/domain/services" $null
Create-DirAndFile "$root/domain/repositories" $null
Create-DirAndFile "$root/infrastructure/database" $null
Create-DirAndFile "$root/infrastructure/messaging/kafka" "producer.ts"
Create-DirAndFile "$root/infrastructure/messaging/kafka" "consumer.ts"
Create-DirAndFile "$root/infrastructure/messaging/rabbitmq" "publisher.ts"
Create-DirAndFile "$root/infrastructure/messaging/rabbitmq" "subscriber.ts"
Create-DirAndFile "$root/infrastructure/logging" $null
Create-DirAndFile "$root/config" "index.ts"
Create-DirAndFile "$root/config" "serverConfig.ts"
Create-DirAndFile "$root/config" "dbConfig.ts"
Create-DirAndFile "$root/config" "apiConfig.ts"
Create-DirAndFile "$root/shared" $null
Create-DirAndFile "$root/tests/unit" $null
Create-DirAndFile "$root/tests/integration" $null
Create-DirAndFile "$root/tests/acceptance" $null
Create-DirAndFile "." ".env"
Create-DirAndFile "." ".gitignore"
Create-DirAndFile "." "LICENSE"
Create-DirAndFile "." "README.md"
Create-DirAndFile "." "package.json"
Create-DirAndFile "." "tsconfig.json"
Create-DirAndFile "." "Dockerfile"

Write-Output "Directories and files created successfully!"
