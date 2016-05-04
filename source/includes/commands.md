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
    [Description("A basic chat command")]

    class EpicPlugin : CovalencePlugin
    {
        [Command("test")]
        void TestCommand(IPlayer player, string command, string[] args)
        {
            player.Reply("Test successful!");
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
  Description : "A basic chat command",

  Init: function ()
  {
      cmd.AddChatCommand('test', this.Plugin, 'TestCommand');
  },

  TestCommand: function (player, cmd, arg)
  {
      player.Reply('Test successful!');
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
    [Description("A basic console command")]

    class EpicPlugin : CovalencePlugin
    {
        [Command("global.test")]
        void TestCommand(IPlayer player)
        {
            Puts("Test successful!");
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
  Description : "A basic console command",

  Init: function ()
  {
    command.AddConsoleCommand('global.test', this.Plugin, 'TestCommand');
  },

  TestCommand: function (arg)
  {
    Puts('Test successful!');
  }
}
```

``` python
We need a Python example here
```
