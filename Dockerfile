FROM mcr.microsoft.com/dotnet/sdk:9.0-alpine3.23 AS build

WORKDIR /source

# Copy project file and restore as distinct layers
COPY --link EFCoreDemo/*.csproj .
RUN dotnet restore

# Copy source code and publish app
COPY --link EFCoreDemo/. .
RUN dotnet publish --no-restore -o /app

FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine3.23

# Align Kestrel with the exposed port (base image defaults to 8080)
ENV ASPNETCORE_HTTP_PORTS=5000
EXPOSE 5000/tcp

WORKDIR /app

COPY --link --from=build /app .

ENTRYPOINT ["./EFCoreDemo"]