FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 8007
ENV ASPNETCORE_URLS=http://+:8007

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["Squale.csproj", ""]
RUN dotnet restore "Squale.csproj"
COPY . .
WORKDIR "/src"
RUN dotnet build "Squale.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Squale.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Squale.dll"]
