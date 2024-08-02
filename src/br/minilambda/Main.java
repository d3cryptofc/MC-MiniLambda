package br.minilambda;

import java.util.logging.Logger;

import org.bukkit.Server;
import org.bukkit.event.Listener;
import org.bukkit.plugin.PluginManager;
import org.bukkit.plugin.java.JavaPlugin;

public class Main extends JavaPlugin {
    private Logger logger;
    private Server server;
    private PluginManager plugin_manager;

    @Override
    public void onEnable(){
        this.logger = this.getLogger();
        this.server = this.getServer();
        this.plugin_manager = this.server.getPluginManager();

        // Registrando os ouvintes de eventos.
        Listener[] listeners = {};
        for(Listener listener : listeners) this.plugin_manager.registerEvents(listener, this);

        // Registrando os executores de comandos.
        CommandExecutor[] command_executors = {};
        for(CommandExecutor command_executor : command_executors) command_executor.register(this);
    }

    @Override
    public void onDisable(){}
}
