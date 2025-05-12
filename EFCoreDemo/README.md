# EF Core Demo Application

A demonstration project showcasing Entity Framework Core with multiple database contexts and migrations.

## Project Structure

The project contains two main database contexts:

### Identity Context
- User management
- User profiles
- Authentication-related data

### Application Context
- Products management
- Categories management
- Product-category relationships

## Technologies

- .NET 9.0
- Entity Framework Core
- PostgreSQL
- Swagger/OpenAPI

## Getting Started

1. Prerequisites:
   - .NET 9.0 SDK
   - PostgreSQL server
   - Entity Framework Core tools (`dotnet-ef`)

2. Database Setup:
   ```bash
   # Apply Identity context migrations
   dotnet ef database update --context IdentityDbContext

   # Apply Application context migrations
   dotnet ef database update --context ApplicationDbContext
   ```

3. Configuration:
   - Update connection strings in `appsettings.json` if needed
   - Default connection strings use localhost PostgreSQL server

## Project Features

- Multiple database contexts demonstration
- Complex entity relationships
- Migration management
- Swagger UI integration
- Modern C# features (nullable reference types, required members)
