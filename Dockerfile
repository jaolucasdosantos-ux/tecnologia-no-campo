FROM node:20
WORKDIR /app
COPY backend ./backend
COPY frontend ./frontend
RUN npm install --prefix backend
EXPOSE 8080
CMD ["node", "backend/server.js"]