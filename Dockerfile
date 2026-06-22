FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y wget curl software-properties-common

# Install Python
RUN apt-get install -y python3 python3-pip

# Install PowerShell
RUN wget -q https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y powershell

# Install .NET SDK
RUN apt-get update && \
    apt-get install -y dotnet-sdk-8.0

CMD ["/bin/bash"]