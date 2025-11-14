# TQL Template Justfile - Convenient commands for development

# Default recipe - show available commands
default:
    @just --list

# Run the dev server (http://localhost:3434)
run:
    cd server && bun dev

# Test the TQL integration
test:
    cd server && bun run test:tql

# Check server health
health:
    curl -s http://localhost:3434/health | jq

# View TQL stats
stats:
    curl -s http://localhost:3434/tql/stats | jq

# Stop all running bun servers
stop:
    pkill -f "bun.*index.ts" || echo "No servers running"
