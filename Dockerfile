FROM mcr.microsoft.com/dotnet/sdk:9.0

WORKDIR /panetone

# ENV ACCEPT_EULA=Y
# ENV MSSQL_PID=Developer

# ENV MSSQL_SA_PASSWORD=821hs91ukd_uwq&1*9j

ENV HTTP_PROXY="host.docker.internal:3128"
ENV HTTPS_PROXY="host.docker.internal:3128"

COPY ./Panetone/*.csproj .
RUN dotnet restore
COPY ./Panetone/ .

ENTRYPOINT ["dotnet", "run", "--urls=http://0.0.0.0:5184"]
# CMD ["kids?"]

EXPOSE 5184