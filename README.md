# Gradle Quickstart

## Installing Gradle

1. Clone this repo

1. Download [gradle-4.8-bin.zip](https://downloads.gradle.org/distributions/gradle-4.8-bin.zip) and put it in the same folder with Dockerfile

1. Build Docker image:

    ```bash
    docker build -t gradle-qs:latest .
    ```
1. Run Docker container:

    ```bash
    docker run --rm gradle-qs:latest
    ```

See [https://docs.gradle.org/current/userguide/installation.html](https://docs.gradle.org/current/userguide/installation.html) for additional info
