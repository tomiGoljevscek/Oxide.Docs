# Configurations

## Creating a configuration

``` csharp
We need a CSharp example here
```

``` javascript
var PluginName = {
    HasConfig: true,
    Init: function() {
        this.LoadDefaultConfig();
    },
    LoadDefaultConfig: function() {
        this.Config.ShowJoinMessage = true;
        this.Config.ShowLeaveMessage = true;
        this.Config.Messages = {};
        this.Config.Messages.Join = "Welcome to this server";
        this.Config.Messages.Leave = "Goodbye";
        this:SaveConfig();
    }

}
```

``` lua
PLUGIN.HasConfig = true

function PLUGIN:Init()
    self:LoadDefaultConfig()
end

function PLUGIN:LoadDefaultConfig()
    self.Config.ShowJoinMessage = true
    self.Config.ShowLeaveMessage = true
    self.Config.Messages = {}
    self.Config.Messages.Join = "Welcome to this server"
    self.Config.Messages.Leave = "Goodbye"
    self:SaveConfig()
end
```

``` python
We need a Python example here
```

Since many users won't want to (or can't) edit the plugin directly to change the default configuration, it's best to offer to offer them a configuration file that can easily be edited without worrying about messing up the plugin.

## Saving a configuration

``` csharp
We need a CSharp example here
```

``` javascript
cmdTest: function(player, cmd, args) {
    if (this.Config.ShowJoinMessage == true) {
        this.Config.ShowJoinMessage = false;
    } else {
        this.Config.ShowJoinMessage = true;
    }
    this:SaveConfig();
}
```

``` lua
function PLUGIN:cmdTest(player, cmd, args)
    if self.Config.ShowJoinMessage == true then
        self.Config.ShowJoinMessage = false
    else
        self.Config.ShowJoinMessage = true
    end
    self:SaveConfig()
end
```

``` python
We need a Python example here
```

You can change and save config entries by simply assigning the new values and calling the save function
