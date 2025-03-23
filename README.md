<p align="right">
    <a href="https://computesphere.com/"><img src="https://pepublicassets.blob.core.windows.net/public-assets/computesphere-favicon.svg" width="50px" /></a>
</p>

# ComputeSphere Ruby on Rails Example

This example deploys a Ruby on Rails application to ComputeSphere.

> [!NOTE]
> This guide builds a Docker image for the provided sample code. Please note that the version `v0.0.1` used in the example is for demonstration purposes only. You should replace it with a version that suits your specific setup and requirements.

## Prerequisites

- A [ComputeSphere](https://computesphere.com) account
- [Git](https://git-scm.com/downloads)
- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- [Rails](https://guides.rubyonrails.org/v5.1/getting_started.html)
- [Docker](https://docs.docker.com/engine/install/) - To create and deploy the image

## Setup

1. Clone this repository.

    ```bash
    git clone https://github.com/computesphere-samples/computesphere-ruby-on-rails-example.git

    cd computesphere-ruby-on-rails-example
    ```

2. Install the required dependencies.

    ```bash
    bundle install
    ```

3. Create the docker image.

    ```bash
    docker build -t computesphere-ruby-on-rails-example:v.0.0.1 .
    ```

    Alternatively, you can use the `docker buildx --build` command to utilize Docker's BuildKit which offers several improvements over the traditional Docker build.

    ```bash
    docker buildx build --platform=linux/amd64 --tag computesphere-ruby-on-rails-example:v0.0.1 .
    ``` 

4. Push the image to Docker Hub.

    ```bash
    docker tag computesphere-ruby-on-rails-example:v0.0.1 [REPOSITORY]/computesphere-ruby-on-rails-example:v0.0.1

    docker push [REPOSITORY]/computesphere-ruby-on-rails-example:v0.0.1
    ```

> [!NOTE]
> Be sure to log in to Docker Hub and replace `[REPOSITORY]` with your Docker Hub username.

## Running the project locally

Run the server locally.

```bash
cd computesphere-ruby-on-rails-example

bundle install

rails server
```

This runs the server on `localhost:3000`.

## Deploy to ComputeSphere

See our [guide](https://docs.computesphere.com/docs/getting-started/quickstart/getting-started-with-ruby) on how to deploy this project to ComputeSphere.

<!-- Check if this is the right link to the dashboard -->
<a href="https://console.computesphere.com"> <img src="https://pepublicassets.blob.core.windows.net/public-assets/computesphere-full-logo.png" width="350px" alt="ComputeSphere Logo"> </a>

---
[Explore ComputeSphere Documentation](https://docs.computesphere.com)

**Contact Us:**  
[support@computesphere.com](mailto:support@computesphere.com)  
[Support Portal](https://support.computesphere.com/portal)

&copy; 2024 ComputeSphere LLC. All Rights Reserved.

---
