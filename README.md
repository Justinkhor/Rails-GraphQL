# Rails-GraphQL

## Deployment

Below are the steps to reproduce for local deployment:
1. Build Docker Image
    ```bash
    docker-compose build
    ```

2. Run the service
    ```bash
    docker-compose up
    ```

3. Make curl.sh executable
    ```bash
    chmod +x curl.sh
    ```

4. Test the service
    ```bash
    ./curl.sh
    ```
