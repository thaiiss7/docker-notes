FROM mcr.microsoft.com/dotnet/sdk:9.0-alpine AS build

WORKDIR /aula04

ENV HTTP_PROXY="host.docker.internal:3128"
ENV HTTPS_PROXY="host.docker.internal:3128"

COPY /Client/*.csproj ./
RUN dotnet restore
COPY ./Client ./

RUN dotnet publish -c Release -o /aula04/publish

FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine

RUN addgroup -S grupinho && adduser -S usuario -G grupinho

WORKDIR /aula04 
COPY --from=build /aula04/publish .

COPY --from=build --chown=usuario:grupinho /aula04/publish ./
USER usuario

ENTRYPOINT [ "dotnet", "Client.dll" ]