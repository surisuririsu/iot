# Ensure .iot/db directory exists
prepare:
	mkdir -p .iot/db

# Build the Docker Compose stack
build: prepare
	docker-compose build

# Start the Docker Compose stack
start: prepare
	docker-compose up -d

# Stop the Docker Compose stack
stop:
	docker-compose down

# Start the Docker Compose stack in development mode with watch
dev: prepare
	docker-compose -f docker-compose.yaml -f docker-compose-dev.yaml up --build --watch
