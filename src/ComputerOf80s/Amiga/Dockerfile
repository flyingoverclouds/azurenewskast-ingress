FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 8500
ENV ASPNETCORE_URLS=http://+:8500

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["Amiga.csproj", ""]
RUN dotnet restore "Amiga.csproj"
COPY . .
WORKDIR "/src"
RUN dotnet build "Amiga.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Amiga.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Amiga.dll"]
