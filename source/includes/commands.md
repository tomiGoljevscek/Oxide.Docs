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
show <group|user|perm> <name>
show <groups|perms>
version or oxide.version
```

## Chat commands

``` csharp
namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", "1.0.0")]
    [Description("A basic chat command.")]

    class EpicPlugin : RustPlugin
    {
        [ChatCommand("test")]
        void TestCommand(BasePlayer player, string command, string[] args)
        {
            SendReply(player, "Test successful!");
        }
    }
}
```

``` lua
We need a Lua example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
var EpicPlugin {
  Title : "EpicPlugin",
  Author : "Unknown",
  Version : V(0, 1, 0),
  Description : "A basic chat command.",

  Init: function ()
  {
      cmd.AddChatCommand('test', this.Plugin, 'TestCommand');
  },

  TestCommand: function (player, cmd, arg)
  {
      rust.SendChatMessage(player.ToPlayer(), 'Test successful!');
  }
}
```

``` python
We need a Python example here
```

## Console commands

``` csharp
using UnityEngine;

namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", "1.0.0")]
    [Description("A basic console command.")]

    class EpicPlugin : RustPlugin
    {
        [ConsoleCommand("global.test")]
        void TestCommand(ConsoleSystem.Arg arg)
        {
            if (args.Player() == null) return;
            SendReply(arg.Player(), "Test successful!");
        }
    }
}
```

``` lua
We need a Lua example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
var EpicPlugin {
  Title : "EpicPlugin",
  Author : "Unknown",
  Version : V(0, 1, 0),
  Description : "A basic console command.",

  Init: function ()
  {
    command.AddConsoleCommand('global.test', this.Plugin, 'TestCommand');
  },

  TestCommand: function (arg)
  {
    if (arg.Player() == null)
    SendReply(arg.Player(), 'Test successful!');
  }
}
```

``` python
We need a Python example here
```
