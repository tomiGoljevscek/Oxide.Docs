# Configurations

## Creating a configuration

``` csharp
namespace Oxide.Plugins
{
    [Info("Example", "Oxide Team", 1.0)]
    [Description("This example illustrates how to use a basic configuration file.")]
    class Example : CovalencePlugin
    {
        protected override void LoadDefaultConfig()
        {
            PrintWarning("Creating a new configuration file.");
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

``` javascript
var PluginName = {
    Init: function() {
        this.LoadDefaultConfig();
    },

    LoadDefaultConfig: function() {
        this.Config.ShowJoinMessage = this.Config.ShowJoinMessage || "true";
        this.Config.ShowLeaveMessage = this.Config.ShowLeaveMessage || "true";
        this.Config.Messages = this.Config.Messages || {};
        this.Config.Messages.Join = this.Config.Messages.Join || "Welcome to this server";
        this.Config.Messages.Leave = this.Config.Messages.Leave || "Goodbye";
        this:SaveConfig();
    }
}
```

``` lua
function PLUGIN:Init()
    self:LoadDefaultConfig()
end

function PLUGIN:LoadDefaultConfig()
    self.Config.ShowJoinMessage = self.Config.ShowJoinMessage or "true"
    self.Config.ShowLeaveMessage = self.Config.ShowLeaveMessage or "true"
    self.Config.Messages = self.Config.Messages or {}
    self.Config.Messages.Join = self.Config.Messages.Join or "Welcome to this server"
    self.Config.Messages.Leave = self.Config.Messages.Leave or "Goodbye"
    self:SaveConfig()
end
```

``` python
We need a Python example here
```

Since many users won't want to (or can't) edit the plugin directly to change the default configuration, it's best to offer to offer them a configuration file that can easily be edited without worrying about messing up the plugin.

## Saving a configuration

``` csharp
namespace Oxide.Plugins
{
    [Info("Example", "Oxide Team", 1.0)] 
    [Description("This example illustrates how to update a value in a configuration file.")]
    class Example : CovalencePlugin
    {
        [ChatCommand("Test")]
        void Test(BasePlayer player, string command, string[] args)
        {
            if ((bool) Config["ShowJoinMessage"])
                Config["ShowJoinMessage"] = false;
            else
                Config["ShowJoinMessage"] = true;
            SaveConfig();
        }
    }
}
```

``` javascript
cmdTest: function(player, cmd, args) {
    if (this.Config.ShowJoinMessage == "true") {
        this.Config.ShowJoinMessage = "false";
    } else {
        this.Config.ShowJoinMessage = "true";
    }
    this:SaveConfig();
}
```

``` lua
function PLUGIN:cmdTest(player, cmd, args)
    if self.Config.ShowJoinMessage == "true" then
        self.Config.ShowJoinMessage = "false"
    else
        self.Config.ShowJoinMessage = "true"
    end
    self:SaveConfig()
end
```

``` python
We need a Python example here
```

You can change and save configuration entries by simply assigning the new values and calling the save function.
