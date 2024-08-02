package br.minilambda;

import org.bukkit.plugin.java.JavaPlugin;

public interface CommandExecutor extends org.bukkit.command.CommandExecutor {
    public void register(JavaPlugin plugin);
}
