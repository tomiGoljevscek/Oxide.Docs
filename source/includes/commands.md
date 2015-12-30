# Commands

## Default commands

```
load *|<pluginname>+
unload *|<pluginname>+
reload *|<pluginname>+
grant <group|user> <name|id> *|<permission>
revoke <group|user> <name|id> *|<permission>
group <add|set> <name> [title] [rank]
group <remove> <name>
group <parent> <name> <parentname>
usergroup <add|remove> <username> <groupname>
show <group|user> <name>
show <groups|perms>
version or oxide.version
```

## Chat commands

``` csharp
namespace Oxide.Plugins
{
    [Info("Example", "Oxide Team", 1.0)]
    [Description("This example illustrates how to create a chat command.")]
    class Example : CovalencePlugin
    {
        [ChatCommand("save")]
        void SaveCommand(BasePlayer player, string command, string[] args)
        {
            PrintToChat(player, "Saving the world data!");
            SaveRestore.Save();
        }
    }
}
```

``` lua
We need a Lua example here
```

``` javascript
var ExamplePlugin {
    Title : "ExamplePlugin",
    Author : "Oxide Team",
    Version : V(0, 1, 0),

    Init: function ()
    {
        // The following command is called when a player enters `/test` to chat.
        cmd.AddChatCommand('test', this.Plugin, 'testChatCommand');
    },

    testChatCommand: function (player, cmd, arg)
    {
        rust.SendChatMessage(player.ToPlayer(), 'SERVER', 'Hey, you sent a chat command!');
    }
}
```

``` coffeescript
We need a CoffeeScript example here
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
    class Example : CovalencePlugin
    {
        [ConsoleCommand("plugin.save")]
        void SaveCommand(ConsoleSystem.Arg arg)
        {
            PrintToConsole(arg.Player(), "Saving the world data");
            SaveRestore.Save();
        }
    }
}
```

``` lua
We need a Lua example here
```

``` javascript
var ExamplePlugin {
    Title : "ExamplePlugin",
    Author : "Oxide Team",
    Version : V(0, 1, 0),

    Init: function ()
    {
        // When `test.command` is entered to either the F1 game console, or an RCON console.
        command.AddConsoleCommand('test.command', this.Plugin, 'testConsoleCommand');
    },

    testConsoleCommand: function (args)
    {
        var ingameConsole = null;
        var isAdmin = false;

        if (args.connection && args.connection.player) {
            ingameConsole = true; // Is in game player console

            // Check player auth level in case the command is for admins only.
            if (args.connection.player.net.connection.authLevel > 1) {
                isAdmin = true;
            } else {
                isAdmin = false;
            }
        } else {
            ingameConsole = false; // External RCON console
            isAdmin = true;
        }

        // You can get args with:
        if (args.HasArgs(2)) {
            var first = args.GetString(0); // Or maybe GetInt
            var second = args.GetInt(1); // Or perhaps GetString again.
        }

        if (ingameConsole) {
            args.ReplyWith('Replying to in-game console');
        } else {
            print('Replying to RCON console');
        }
    }
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```
