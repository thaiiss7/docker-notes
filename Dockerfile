FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Developer

ENV MSSQL_SA_PASSWORD=821hs91ukd_uwq&1*9j

EXPOSE 1433

ENTRYPOINT ["echo", "Are", "you", "ready"]
CMD ["kids?"]