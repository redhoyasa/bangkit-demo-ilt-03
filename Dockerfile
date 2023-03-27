FROM docker.io/library/node:14 AS build
COPY * /app/
WORKDIR /app
COPY package*.json ./
RUN npm install

EXPOSE 8080
CMD ["npm", "start"]


# FROM gcr.io/distroless/nodejs:14 AS run
# COPY --from=build /app /app
# WORKDIR /app
# USER nonroot
# ENTRYPOINT [ "nodejs/bin/node", "index.js" ]

