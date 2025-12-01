<a id="readme-top"></a>

<div align="center">
  <h3 align="center">SMA Website Docker</h3>

  <p align="center">
    SMA Telemedicine Platform — Full Docker Stack
    <br />
    Complete Docker environment for running the SMA telemedicine system (frontend, backend, and database)
    <br />
    <a href="https://github.com/alejandraoshea/sma-server/issues/new?labels=bug">Report Bug</a>
    &middot;
    <a href="https://github.com/alejandraoshea/sma-server/issues/new?labels=enhancement">Request Feature</a>
    <br />
   </p>
</div>

## About The Project

The SMA Telemedicine Platform — Docker Deployment provides a fully containerized environment for running the SMA (Spinal Muscular Atrophy) telemedicine system. This platform enables doctors and patients to exchange clinical data, manage measurement sessions, and analyze bio-signals (ECG/EMG) through a unified web interface.

This repository bundles the core services required for the platform:

- Frontend web client
- Backend API (Java/Spring Boot)
- PostgreSQL database
- Reverse proxy / SSL support (optional)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Built With

Frontend

- HTML / CSS / JavaScript

Backend

- Java
- Spring Boot
- Spring Security (JWT)
- Spring Data JDBC

Database

- PostgreSQL

Deployment

- Docker
- Docker Compose

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

### Starting the Platform

Please ensure that you have Docker Desktop installed. Download Docker at https://www.docker.com.

Once Docker is installed, download the zip file from this repository: https://github.com/pilarbourg/telemedicine-deploy.

Decompress the zip file and open a terminal or console on your device. Navigate to the project directory.

#### Generate Local Certificates

The platform uses HTTPS with self-signed certificates for local development. To generate them, you need `mkcert`. Install `mkcert` following instructions here: https://github.com/FiloSottile/mkcert

Once `mkcert` is installed, generate certificates for local domains:

```sh
mkcert localhost 127.0.0.1 backend frontend
```

This will create .pem files and corresponding keys. Move them into the frontend/certs folder as follows:

```sh
mv localhost+3.pem frontend/certs/frontend.crt
mv localhost+3-key.pem frontend/certs/frontend.key
```

Once the certificates are in place, start all services with:

```sh
docker-compose up -d
```

This will launch the backend, frontend, and database containers. The web app should now be accessible locally at https://127.0.0.1.

#### Service Access

After startup, the platform will be available at:
* Frontend:

```sh
  http://127.0.0.1
```

### Platform Capabilities

The system supports:
* Patient and doctor management
* ECG/EMG signal upload and storage
* Measurement session creation and tracking
* Automatic PDF report generation
* JWT-based authentication and authorization
* Doctor approval workflows
* Session reporting tools

### Stopping the Platform

To shut down all containers:

```sh
  docker-compose down
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

License

Distributed under the MIT License.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

Acknowledgments

- Best README Template
- Contrib.rocks for contributors graph
- Spring Boot Documentation

<p align="right">(<a href="#readme-top">back to top</a>)</p>
