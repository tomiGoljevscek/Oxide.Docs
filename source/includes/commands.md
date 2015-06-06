# Commands

## Default commands

```
oxide.load *|<pluginname>+  
oxide.unload *|<pluginname>+  
oxide.reload *|<pluginname>+  
oxide.grant <group|user> <name|id> <permission>  
oxide.revoke <group|user> <name|id> <permission>  
oxide.group <add|set> <name> [title] [rank]  
oxide.group <remove|show> <name>  
oxide.group <parent> <name> <parentName>  
oxide.usergroup <add|remove> <username> <groupname>  
version or oxide.version
```

## Chat commands

``` csharp
namespace Oxide.Plugins
{
    [Info("Example", "Oxide Team", 1.0)] 
    [Description("This example illustrates how to create a chat command.")]
    class Example : RustPlugin
    {
        [ChatCommand("save")]
        private void SaveCommand(BasePlayer player, string command, string[] args)
        {
            PrintToChat(player, "Saving the world data!");
            SaveRestore.Save();
        }
    }
}
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

## Console commands

``` csharp
using UnityEngine;

namespace Oxide.Plugins
{
    [Info("Example", "Oxide Team", 1.0)] 
    [Description("This example illustrates how to create a console command.")]
    class Example : RustPlugin
    {
        [ConsoleCommand("plugin.save")]
        private void SaveCommand(ConsoleSystem.Arg arg)
        {
            PrintToConsole(arg.Player(), "Saving the world data");
            SaveRestore.Save();
        }
    }
}
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
