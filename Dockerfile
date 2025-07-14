# Stage 1: Build the Vite app
FROM node:20-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Stage 2: Serve using vite preview
FROM node:20-alpine
WORKDIR /app

# Install only production deps (optional, since Vite preview doesn't need deps)
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/node_modules ./
COPY --from=builder /app/. .

# Expose Vite preview default port
EXPOSE 4173

# Run vite preview to serve the built app
CMD ["npm", "run", "preview", "--", "--host"]

