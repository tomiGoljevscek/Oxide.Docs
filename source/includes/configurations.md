# Configurations

## Creating a configuration

``` csharp
namespace Oxide.Plugins
{
    [Info("EpicStuff", "Unknown", 1.0)]
    [Description("This example illustrates how to use a basic configuration file")]

    class EpicStuff : RustPlugin
    {
        protected override void LoadDefaultConfig()
        {
            PrintWarning("Creating a new configuration file");
            Config.Clear();
            Config["ShowJoinMessage"] = true;
            Config["ShowLeaveMessage"] = true;
            Config["JoinMessage"] = "Welcome to this server";
            Config["LeaveMessage"] = "Goodbye";
            SaveConfig();
        }
    }
}
```

Since many users won't want to (or can't) edit the plugin directly to change the default configuration, it's best to offer to offer them a configuration file that can easily be edited without worrying about messing up the plugin.

## Saving a configuration

``` csharp
namespace Oxide.Plugins
{
    [Info("EpicStuff", "Unknown", 1.0)] 
    [Description("This example illustrates how to update a value in a configuration file")]

    class EpicStuff : RustPlugin
    {
        [ChatCommand("Test")]
        void Test(BasePlayer player, string command, string[] args)
        {
            if ((bool)Config["ShowJoinMessage"])
                Config["ShowJoinMessage"] = false;
            else
                Config["ShowJoinMessage"] = true;
            SaveConfig();
        }
    }
}
```

You can change and save configuration entries by simply assigning the new values and calling the save function.
