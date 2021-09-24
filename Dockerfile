# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY ./ .
RUN npm run build

# production stage
FROM nginx:alpine as production-stage
RUN mkdir /app
COPY --from=build-stage /app/dist /app
CMD ["nginx", "-g", "daemon off;"]