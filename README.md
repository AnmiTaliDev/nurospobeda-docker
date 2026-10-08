# nurospobeda-docker

## About

Docker deployment configuration for the нурось победа Telegram bot.

## Dependencies

- Docker 20.10+
- Docker Compose v2+

## Build

```bash
docker compose build
```

## Deployment

Copy `.env.example` to `.env` and set the required variables:

```bash
cp .env.example .env
```

Start the container:

```bash
docker compose up -d
```

Stop the container:

```bash
docker compose down
```

## License

0BSD
