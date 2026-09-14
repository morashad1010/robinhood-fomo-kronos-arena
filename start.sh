#!/bin/bash

echo "🚀 Starting Robinhood FOMO Kronos Arena..."

# Check if .env exists
if [ ! -f .env ]; then
    echo "❌ .env file not found!"
    echo "📋 Copy .env.example to .env and configure it:"
    echo "   cp .env.example .env"
    exit 1
fi

# Build and start all services
docker-compose up --build -d

echo ""
echo "✅ All services started!"
echo ""
echo "📊 Service Status:"
docker-compose ps

echo ""
echo "🔗 Quick Links:"
echo "   - FOMO Client:      http://localhost:3000"
echo "   - MiroFish Backend: http://localhost:4000"
echo "   - Kronos:           http://localhost:5000"
echo "   - Agent Arena:      http://localhost:6000"
echo "   - Robinhood:        http://localhost:7000"
echo ""
echo "📝 View logs: docker-compose logs -f [service-name]"
echo "⏹️  Stop:       ./stop.sh"
