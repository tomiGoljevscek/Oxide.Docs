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
    [Info("EpicStuff", "Unknown", "1.0.0")]
    [Description("A basic chat command")]

    class EpicStuff : CovalencePlugin
    {
        [Command("test")]
        void TestCommand(IPlayer player, string command, string[] args)
        {
            player.Reply("Test successful!");
        }
    }
}
```

## Console commands

``` csharp
using UnityEngine;

namespace Oxide.Plugins
{
    [Info("EpicStuff", "Unknown", "1.0.0")]
    [Description("A basic console command")]

    class EpicStuff : CovalencePlugin
    {
        [Command("global.test")]
        void TestCommand(IPlayer player)
        {
            Puts("Test successful!");
        }
    }
}
```
