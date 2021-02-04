FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 8064
ENV ASPNETCORE_URLS=http://+:8064

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["Commodore64.csproj", ""]
RUN dotnet restore "Commodore64.csproj"
COPY . .
WORKDIR "/src"
RUN dotnet build "Commodore64.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Commodore64.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Commodore64.dll"]
