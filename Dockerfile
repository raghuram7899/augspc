FROM mcr.microsoft.com/dotnet/sdk:7.0
LABEL author=khaja
ADD https://github.com/nopSolutions/nopCommerce/releases/download/release-4.60.4/nopCommerce_4.60.4_NoSource_linux_x64.zip /nopCommercenopCommerce_4.60.4_NoSource_linux_x64.zip
ENV ASPNETCORE_URLS="http://0.0.0.0:5000"
EXPOSE 5000
WORKDIR /nopCommerce
CMD ["dotnet", "Nop.Web.dll" ""http://0.0.0.0:5000""]
