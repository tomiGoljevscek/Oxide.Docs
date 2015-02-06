# Configurations

## Creating a configuration

``` csharp
We need a CSharp example here
```

``` javascript
We need a JavaScript example here
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
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

Placeholder text
