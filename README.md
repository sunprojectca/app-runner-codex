# app-runner-codex

Hello World application for testing AWS App Runner deployment.

## Description

This is a simple Node.js Express application that serves a "Hello World" message. It's designed to be deployed to AWS App Runner.

## Features

- Simple Express web server
- Health check endpoint at `/health`
- Containerized with Docker
- Ready for AWS App Runner deployment

## Local Development

### Prerequisites

- Node.js 18 or higher
- npm

### Installation

```bash
npm install
```

### Running Locally

```bash
npm start
```

The application will start on port 8080 (or the PORT environment variable if set).

Visit `http://localhost:8080` to see the Hello World message.

## Docker

### Build Docker Image

```bash
docker build -t app-runner-codex .
```

### Run Docker Container

```bash
docker run -p 8080:8080 app-runner-codex
```

## AWS App Runner Deployment

This application is configured to run on AWS App Runner. The service expects:

- Port: 8080
- Health check: `/health` endpoint

## Endpoints

- `GET /` - Returns "Hello World! Welcome to AWS App Runner!"
- `GET /health` - Returns health status (JSON)
