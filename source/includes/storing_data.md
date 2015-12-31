# Storing Data

## Creating a data table

``` csharp
using System.Collections.Generic;
using Oxide.Core;

namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Oxide Team", 1.0)] 
    [Description("This example illustrates how to create a data file.")]

    class EpicPlugin : CovalencePlugin
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

``` javascript
Init: function() {
    this.LoadDataFiles();
}

var dataTable
LoadDataFiles: function() {
    dataTable = data.GetData("pluginName");
}
```

``` lua
function PLUGIN:Init()
    self:LoadDataFiles()
end

local dataTable
function PLUGIN:LoadDataFiles()
    dataTable = datafile.GetDataTable("pluginName") or {}
end
```

``` python
We need a Python example here
```
To store plugin related data to use in your plugin, you want to create a data file.

## Saving a data table

``` csharp
using System.Collections.Generic;
using Oxide.Core;

namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Oxide Team", 1.0)] 
    [Description("This example illustrates how to save to a data file.")]

    class EpicPlugin : CovalencePlugin
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

        [ChatCommand("Test")]
        void Test(BasePlayer player, string command, string[] args)
        {
            var info = new PlayerInfo(player);
            if (storedData.Players.Contains(info))
                PrintToChat(player, "Your data has already been added to the file.");
            else
            {
                PrintToChat(player, "Saving your data to the file.");
                storedData.Players.Add(info);
                Interface.Oxide.DataFileSystem.WriteObject("MyDataFile", storedData);
            }
        }
    }
}
```

``` javascript
SaveDataFiles: function() {
    data.SaveData("pluginName");
}

cmdTest: function(player, cmd, args) {
    var name = player.displayName;
    dataTable[name] = true;
    this.SaveDataFiles();
}
```

``` lua
function PLUGIN:SaveDataFiles()
    datafile.SaveDataTable("pluginName")
end

function PLUGIN:cmdTest(player, cmd, args)
    local name = player.displayName
    dataTable[name] = true
    self:SaveDataFiles()
end
```

``` python
We need a Python example here
```
