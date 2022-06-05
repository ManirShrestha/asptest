# syntax=docker/dockerfile:1
  FROM mcr.microsoft.com/dotnet/aspnet:6.0
  COPY bin/Release/net6.0/publish App/
  EXPOSE 5000
  WORKDIR /App
  ENTRYPOINT ["dotnet", "MyWebApp.dll","--urls","http://0.0.0.0:5000"]