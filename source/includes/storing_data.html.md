---
title: Storing Data
---

# Storing Data

## Creating a data table

``` csharp
using System.Collections.Generic;
using Oxide.Core;

namespace Oxide.Plugins
{
    [Info("Epic Stuff", "Unknown", 1.0)]
    [Description("This example illustrates how to create a data file")]
    class EpicStuff : CovalencePlugin
    {
        class StoredData
        {
            public HashSet<PlayerInfo> Players = new HashSet<PlayerInfo>();

            public StoredData()
            {
            }
        }

        class PlayerInfo
        {
            public string UserId;
            public string Name;

            public PlayerInfo()
            {
            }

            public PlayerInfo(BasePlayer player)
            {
                UserId = player.userID.ToString();
                Name = player.displayName;
            }
        }

        StoredData storedData;

        void Loaded()
        {
            storedData = Interface.Oxide.DataFileSystem.ReadObject<StoredData>("MyDataFile");
        }
    }
}
```

To store plugin related data to use in your plugin, you want to create a data file.

## Saving a data table

``` csharp
using System.Collections.Generic;
using Oxide.Core;

namespace Oxide.Plugins
{
    [Info("Epic Stuff", "Unknown", 1.0)]
    [Description("This example illustrates how to save to a data file")]
    class EpicStuff : CovalencePlugin
    {
        class StoredData
        {
            public HashSet<PlayerInfo> Players = new HashSet<PlayerInfo>();

            public StoredData()
            {
            }
        }

        class PlayerInfo
        {
            public string UserId;
            public string Name;

            public PlayerInfo()
            {
            }

            public PlayerInfo(IPlayer player)
            {
                UserId = player.Id;
                Name = player.Name;
            }
        }

        StoredData storedData;

        void Loaded()
        {
            storedData = Interface.Oxide.DataFileSystem.ReadObject<StoredData>("MyDataFile");
        }

        [Command("Test")]
        void Test(IPlayer player, string command, string[] args)
        {
            var info = new PlayerInfo(player);
            if (storedData.Players.Contains(info))
                PrintToChat(player, "Your data has already been added to the file");
            else
            {
                PrintToChat(player, "Saving your data to the file");
                storedData.Players.Add(info);
                Interface.Oxide.DataFileSystem.WriteObject("MyDataFile", storedData);
            }
        }
    }
}
```
