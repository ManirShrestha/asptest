# syntax=docker/dockerfile:1
  FROM mcr.microsoft.com/dotnet/aspnet:5.0
  COPY bin/Release/net6.0/publish App/
  WORKDIR /App
  ENTRYPOINT ["dotnet", "MyWebApp.dll"]