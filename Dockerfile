FROM mcr.microsoft.com/dotnet/sdk:9.0
WORKDIR /berk
# ENV ACCEPT_EULA=Y
# ENV MSSQL_PID=Developer

# ENV MSSQL_SA_PASSWORD=821hs91ukd_uwq&1*9j

ENV HTTP_PROXY="host.docker.internal:3128"
ENV HTTPS_PROXY="host.docker.internal:3128"

COPY ./api/docker-notes.csproj .
RUN dotnet restore
COPY ./api/ .

ENTRYPOINT ["dotnet", "run"]
# CMD ["kids?"]

EXPOSE 5182