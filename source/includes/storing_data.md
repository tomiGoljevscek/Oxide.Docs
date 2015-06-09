# Storing Data

## Creating a data table

``` csharp
using System.Collections.Generic;
using Oxide.Core;

namespace Oxide.Plugins
{
    [Info("Example", "Oxide Team", 1.0)] 
    [Description("This example illustrates how to create a data file.")]
    class Examplet : RustPlugin
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

        private void Loaded()
        {
            storedData = Interface.GetMod().DataFileSystem.ReadObject<StoredData>("MyDataFile");
        }
    }
}
```

``` javascript
Init: function() {
    this:LoadDataFiles();
}

var dataTable
LoadDataFiles: function() {
    dataTable = datafile.GetDataTable("pluginName") || {};
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
    [Info("Example", "Oxide Team", 1.0)] 
    [Description("This example illustrates how to save to a data file.")]
    class Examplet : RustPlugin
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

        private void Loaded()
        {
            storedData = Interface.GetMod().DataFileSystem.ReadObject<StoredData>("MyDataFile");
        }

        [ChatCommand("Test")]
        private void Test(BasePlayer player, string command, string[] args)
        {
            var info = new PlayerInfo(player);
            if (storedData.Players.Contains(info))
                PrintToChat(player, "Your data has already been added to the file.");
            else
            {
                PrintToChat(player, "Saving your data to the file.");
                storedData.Players.Add(info);
                Interface.GetMod().DataFileSystem.WriteObject("MyDataFile", storedData);
            }
        }
    }
}
```

``` javascript
SaveDataFiles: function() {
    datafile.SaveDataTable("pluginName");
}

cmdTest: function(player, cmd, args) {
    var name = player.displayName;
    dataTable[name] = true;
    this:SaveDataFiles();
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
