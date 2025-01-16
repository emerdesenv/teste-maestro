# Instalação do Java

# https://github.com/hmsjy2017/get-jdk?tab=readme-ov-file

#!/bin/bash

# Configurações de atualizações do Ubuntu

sudo apt update
sudo apt upgrade

# Configurações de instação do JDK

sudo apt install openjdk-11-jdk

# Pré configuração do Maestro

curl -Ls "https://get.maestro.mobile.dev" | bash

# Instalando unzip

sudo apt install unzip

# Configurando SDK Manager (deve selecionar um da lista)

sudo apt install sdkmanager

# Configurando ADB

sudo apt install adb

# Configurando diretórios padrões

mkdir ~/Android
cd ~/Android

# Download das configurações android tools

wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip?hl=pt-br

# Descompactando o arquivo baixado

unzip commandlinetools-linux-11076708_latest.zip?hl=pt-br

# Criando a pasta final de configurações

mkdir tools
mv cmdline-tools/* tools/

# Configurações das variáveis de ambiente

echo 'export ANDROID_HOME=$HOME/Android' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools/bin/:$PATH' >> ~/.bashrc
echo 'export ANDROID_SDK_ROOT=$HOME/Android' >> ~/.bashrc

# Salvando as configurações

source ~/.bashrc

# Configurações SDK

sdkmanager --install "platform-tools"

# Última configuração da variáveis de ambiente

echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools/bin/:$PATH' >> ~/.bashrc

# Configuração dAndroid Studio

# (Emulador externo) - Seguir as configurações do tutorial: https://developer.android.com/studio/run/emulator-launch-separate-window?hl=pt-br
# (Configuração pasta tools) - Conferir as evidências