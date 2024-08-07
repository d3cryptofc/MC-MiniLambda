# SHELL CONFIG
SHELL=/bin/bash -O globstar

# JAVA LIBRARIES
CLASSPATH=-cp $(shell find lib -type f -name '*.jar' -printf "%p:")

# PREFIXES
subject=\033[m\033[1;32m-> 
command=\n\033[0;37m $$ 

# PLUGIN NAME & VERSION
plugin_name=$(shell grep -oP "name:\s*\K\w+" plugin.yml)
plugin_version=$(shell grep -oP "^version:\s*\K[A-Za-z0-9\.]+" plugin.yml)

# JARFILE BUILD OUTPUT
jarfile_output=dist/$(plugin_name)-$(plugin_version).jar
# jarfile_output=../../plugins/MiniLambda.jar

all: build

lib/spigot-api*.jar:
	@echo -e "$(subject)Baixando JAR Spigot-API..\033[m"
	@curl \
		'https://hub.spigotmc.org/nexus/repository/snapshots/org/spigotmc/spigot-api/1.21-R0.1-SNAPSHOT/spigot-api-1.21-R0.1-20240731.215921-84.jar' \
		-O --output-dir lib -#
clean:
	@echo -en '$(subject)Limpando ambiente..$(command)'
	rm -rf **/*.class dist

compile: ./lib/Spigot-API.jar clean
	@echo -en '$(subject)Compilando arquivos `.java` para arquivos `.class`..$(command)'
	javac $(CLASSPATH) **/*.java

build: compile
	@echo -en '$(subject)Construindo JAR => $(jarfile_output)$(command)'
	@mkdir -p dist
	cd src && jar cf "../$(jarfile_output)" **/*.class ../*.yml && cd ..
