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

1. Clone e entre no repositório.

```bash
git clone https://github.com/d3cryptofc/MC-MiniLambda && cd MC-MiniLambda
```

2. Agora digite o commando `make` e comece a rezar!

> [!IMPORTANT]
> Lembre-se de estar na raiz do projeto, onde se encontra o `Makefile`, caso contrário não será possível construir.
