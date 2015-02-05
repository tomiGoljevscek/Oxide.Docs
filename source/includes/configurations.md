# Configurations

## Creating a configuration

``` csharp
We need an example here
```

``` javascript
We need an example here
```

``` lua
PLUGIN.Title = "Title of Plugin"
PLUGIN.Version = V(0, 0, 1)
PLUGIN.Description = "Plugin description"
PLUGIN.Author = "Your Name"
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
We need an example here
```

Placeholder text

## Saving a configuration

``` csharp
We need an example here
```

``` javascript
We need an example here
```

``` lua
We need an example here
```

``` python
We need an example here
```

Placeholder text
