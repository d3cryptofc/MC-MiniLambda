<p align="center">
  <img src="https://i.postimg.cc/0j693qfY/mc-minilambda-500.png" width="250">
  <br>
  <b>MiniLambda - Bukkit Plugin</b>
  <br>
  Um plugin Bukkit desenvolvido puramente por diversão, inicialmente pensado em ser desenvolvido em um ambiente mais leve que o Eclipse, e também projetado por um não-programador Java, portanto deve haver outros 'sotaques' neste projeto.
</p>

-----
> [!CAUTION]
> Os passos para a construção deste projeto foram designados apenas para sistemas **GNU/Linux**, mas talvez seja compatível com outros sistemas Unix-like, como o MacOS.

Especificações:

* Minecraft/Bukkit/Spigot 1.21.X
* [Java Development Kit 17](https://github.com/d3cryptofc/MC-MiniLambda/new/main?readme=1#archlinux)
-----

###  Java 17 (JDK)
A recomendação deste projeto para Java Development Kit é a versão 17.

> [!TIP]
> Caso esteja usando Java Runtime Environment (JRE) desta mesma versão, considere remover e substituir pelo JDK.

#### ArchLinux
```
pacman -S jdk17-openjdk
```

#### Ubuntu
```
apt install openjdk-17-jdk
```

### Construção

Antes de tudo, é necessário obter a **Spigot-API.jar** e copiar para a pasta **lib** deste projeto, talvez esteja com um nome diferente como `spigot-api-1.21-R0.1-SNAPSHOT.jar` e seja necessário renomear.

Há duas formas que conheço de conseguir a SpigotAPI:

#### Mais fácil e rápida porém não recomendada

1. Obter o servidor spigot em [getbukkit.org](https://getbukkit.org/download/spigot).
```bash
# Criando uma pasta pro servidor.
mkdir mc-server && cd mc-server

# Fazendo download do servidor spigot.
wget https://download.getbukkit.org/spigot/spigot-1.21.jar
```
2. Iniciar o servidor e para-lo para que gere a pasta **bundler**.
```bash
# Aceitação dos termos.
echo eula=true > eula.txt

# Iniciando o server.
java -jar -DIReallyKnowWhatIAmDoingISwear spigot-1.21.jar nogui
```
Pressione `CTRL` + `C` para parar o servidor.

3. Copiar para o diretório **lib**.
```bash
cp ./bundler/libraries/spigot-api-1.21*SNAPSHOT.jar ../MC-MiniLambda/lib/Spigot-API.jar
```

#### Mais demorada porém recomendada
1. Obtendo o **BuildTools.jar** da Spigot.
```bash
mkdir server-build && cd server-build
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
```

2. Iniciando construção da Spigot-API.
```bash
java -jar BuildTools.jar --nogui --compile SPIGOT --rev 1.21
```

3. Copiar para o diretório **lib**.
```bash
cp ./Spigot/Spigot-API/target/spigot-api-1.21*SNAPSHOT.jar ../MC-MiniLambda/lib/Spigot-API.jar
```

#### Construir!

Se você fez tudo certo, agora resta apenas digitar `make` no terminal e a construção será feita no diretório **dist**.

> [!IMPORTANT]
> Lembre-se de estar na raiz do projeto, onde se encontra o `Makefile`.
