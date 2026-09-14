# Robinhood FOMO Kronos Arena

Complete trading system with FOMO client, MiroFish backend, Kronos, Agent Arena, and Robinhood executor - Docker-ready infrastructure.

## 🚀 Quick Start

### 1. Clone the repository

```bash
git clone git@github.com:morashad1010/robinhood-fomo-kronos-arena.git
cd robinhood-fomo-kronos-arena
```

### 2. Configure environment variables

```bash
cp .env.example .env
# Edit .env with your actual API keys and secrets
nano .env  # or use your preferred editor
```

### 3. Start all services

```bash
./start.sh
```

Or manually:

```bash
docker-compose up --build -d
```

### 4. Check status

```bash
docker-compose ps
```

### 5. Stop all services

```bash
./stop.sh
```

Or manually:

```bash
docker-compose down
```

## 🏗️ Architecture

```
┌─────────────────┐     ┌──────────────────┐
│  FOMO Client    │────▶│  MiroFish Backend│
│    (Port 3000)  │    │    (Port 4000)   │
└─────────────────┘     └──────────────────┘
                                │
                                ▼
┌─────────────────┐     ┌──────────────────┐
│  Agent Arena    │◀────│     Kronos       │
│    (Port 6000)  │    │    (Port 5000)   │
└─────────────────┘     └──────────────────┘
                                │
                                ▼
                       ┌──────────────────┐
                       │Robinhood Executor│
                       │    (Port 7000)   │
                       └──────────────────┘
```

## 📦 Services

| Service | Port | Description |
|---------|------|-------------|
| FOMO Client | 3000 | Main client interface |
| MiroFish Backend | 4000 | Core backend logic |
| Kronos | 5000 | Strategy engine |
| Agent Arena | 6000 | AI agent orchestration |
| Robinhood Executor | 7000 | Trade execution |
| Redis | 6379 | Caching layer |
| PostgreSQL | 5432 | Primary database |

## 🔧 Configuration

Edit `.env` file with your actual credentials. Never commit this file!

## 🛠️ Development

### Add new service

1. Create directory under `./services/your-service`
2. Add `Dockerfile`
3. Update `docker-compose.yml`

### View logs

```bash
docker-compose logs -f [service-name]
```

### Rebuild specific service

```bash
docker-compose build [service-name]
docker-compose up -d [service-name]
```

## ⚠️ Security Notes

- Never commit `.env` file
- Use strong secrets for all services
- Keep private keys secure
- Consider using Docker secrets for production

## 📝 License

Private - All rights reserved
