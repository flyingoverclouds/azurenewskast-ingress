FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 8464
ENV ASPNETCORE_URLS=http://+:8464

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["AmstradCPC464.csproj", ""]
RUN dotnet restore "AmstradCPC464.csproj"
COPY . .
WORKDIR "/src"
RUN dotnet build "AmstradCPC464.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "AmstradCPC464.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "AmstradCPC464.dll"]
