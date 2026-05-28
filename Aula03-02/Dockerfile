FROM mcr.microsoft.com/dotnet/sdk:9.0

WORKDIR /atividade2

ENV HTTP_PROXY="host.docker.internal:3128"
ENV HTTPS_PROXY="host.docker.internal:3128"

COPY ./Client/*.csproj .
RUN dotnet restore
COPY ./Client/ .

ENTRYPOINT ["dotnet", "run", "--urls=http://0.0.0.0:1010"]

EXPOSE 1010