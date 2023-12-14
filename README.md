# Koios Lite

Koios Lite is a streamlined version of the Koios ecosystem, designed for efficient data synchronization and querying on the Cardano blockchain. This setup uses Docker to create a local environment that mirrors the production setup, making it ideal for development and testing.

## Components

This setup includes several key components:

- `cardano-node`: Runs the Cardano node, connecting to either the mainnet or a testnet.
- `cardano-db-sync`: Synchronizes the blockchain data to a PostgreSQL database.
- `postgres`: The PostgreSQL database, storing the synchronized blockchain data.
- `postgrest`: Serves a RESTful API for querying the blockchain data stored in PostgreSQL.
- `haproxy`: A high-performance proxy to distribute network traffic among various components.

Each service is containerized and managed via Docker, ensuring easy deployment and scalability.

## Local Testing

For local testing:

1. Clone the repository to your local machine.
2. Make sure Docker and Docker Compose are installed.
3. Configure the environment variables in a `.env` file based on the provided `env.example`.
4. Run `docker-compose up -d` to start the services.
5. Access the local endpoints as needed for testing.

## Deployment

To deploy Koios Lite:

1. Ensure all environment variables are correctly set for the production environment.
2. Use the command `docker-compose up -d` to start all the services in detached mode.
3. Monitor the logs for each service to ensure they are running correctly.
4. Perform any necessary post-deployment checks to confirm the system is operational.

Remember to secure your deployment according to best practices, including securing your database and API endpoints.