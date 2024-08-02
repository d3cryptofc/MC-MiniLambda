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
* [Java Development Kit 17](https://github.com/d3cryptofc/MC-MiniLambda/tree/main#java-17-jdk)
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

#### 1. Spigot-API

Antes de tudo, é necessário obter a **SpigotAPI**, e a forma mais simples de fazer isto é baixando diretamente da fonte.

1. Esteja dentro do repositório:
```bash
cd MC-MiniLambda
```

2. Baixe a Spigot-API para a pasta **lib**, nomeada como `Spigot-API.jar`:
```bash
wget https://hub.spigotmc.org/nexus/repository/snapshots/org/spigotmc/spigot-api/1.21-R0.1-SNAPSHOT/spigot-api-1.21-R0.1-20240731.215921-84.jar -O ./lib/Spigot-API.jar
```

#### 2. Construir!

Se você fez tudo certo, agora resta apenas digitar `make` no terminal e a construção será feita no diretório **dist**.

> [!IMPORTANT]
> Lembre-se de estar na raiz do projeto, onde se encontra o `Makefile`, caso contrário não será possível construir.
