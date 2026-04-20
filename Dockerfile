# ─── Stage: production ────────────────────────────────────────────────────────
FROM node:20-alpine

# Create app directory and set working directory
WORKDIR /app

# Copy dependency manifests first (cache-friendly layer)
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy application source
COPY src/ ./src/

# Expose the port the app listens on
EXPOSE 3000

# Run as non-root user (security best practice — OWASP A05)
USER node

# Start the server
CMD ["node", "src/index.js"]
