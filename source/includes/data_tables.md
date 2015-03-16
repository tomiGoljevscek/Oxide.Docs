# Data Tables

## Creating a data table

``` csharp
We need a CSharp example here
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

## Saving a Data Table

``` csharp
We need a CSharp example here
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
