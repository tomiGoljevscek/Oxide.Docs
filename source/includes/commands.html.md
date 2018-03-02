---
title: Commands
---

# Commands

## Default commands

```
oxide.load *|<pluginname>+
oxide.unload *|<pluginname>+
oxide.reload *|<pluginname>+
oxide.grant <group|user> <name|id> *|<permission>
oxide.revoke <group|user> <name|id> *|<permission>
oxide.group <add|set> <name> [title] [rank]
oxide.group <remove> <name>
oxide.group <parent> <name> <parentname>
oxide.usergroup <add|remove> <username> <groupname>
oxide.show <group|user|perm> <name>
oxide.show <groups|perms>
oxide.version
```

## Chat commands

``` csharp
namespace Oxide.Plugins
{
    [Info("Epic Stuff", "Unknown", "1.0.0")]
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
    [Info("Epic Stuff", "Unknown", "1.0.0")]
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
