FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 9040
ENV ASPNETCORE_URLS=http://+:9040

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["AtariST.csproj", ""]
RUN dotnet restore "AtariST.csproj"
COPY . .
WORKDIR "/src"
RUN dotnet build "AtariST.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "AtariST.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "AtariST.dll"]
