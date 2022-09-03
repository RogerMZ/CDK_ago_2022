#!/bin/bash
docker stop api-rest || true && docker rm api-rest || true

# Run container application
docker run -itd --name api-rest -p 3000:3000 rogermz/miappcdk-ago22:1.0

