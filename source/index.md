---
title: API Reference

language_tabs:
  - csharp
  - javascript
  - lua
  - python

toc_footers:
  - <a href='http://forum.rustoxide.com'>Get help on our forums</a>
  - <a href='https://github.com/OxideMod/Oxide'>View Oxide source on GitHub</a>
  - <a href='https://github.com/tripit/slate'>Documentation powered by Slate</a>

search: true
---

# Introduction

```
  _          _ _             
 | |__   ___| | | ___        
 | '_ \ / _ \ | |/ _ \       
 | | | |  __/ | | (_) |      
 |_| |_|\___|_|_|\___/     _ 
 __      _____  _ __| | __| |
 \ \ /\ / / _ \| '__| |/ _` |
  \ V  V / (_) | |  | | (_| |
   \_/\_/ \___/|_|  |_|\__,_|

So you want to develop plugins for Oxide?

We'll show you how to get started, along with sample code!
```

Oxide is a complete rewrite of the popular, original Oxide mod for the game Rust. Oxide has a focus on modularity and extensibility.

The core is highly abstracted and loosely coupled, and could be used to mod any game that uses .NET such as 7 Days to Die, The Forest, Space Engineers, and more. Support for games, plugin languages, and other functionality is added via extensions. When loading, Oxide 2 scans the binary folder for DLL extensions. Extension filenames are formatted as `Oxide.Ext.Name.dll`.

The current official extensions are listed below:

 * Oxide.Ext.CSharp - _Allows raw CSharp plugins to be loaded_
 * Oxide.Ext.JavaScript - _Allows JavaScript plugins to be loaded_
 * Oxide.Ext.Lua - _Allows Lua plugins to be loaded_
 * Oxide.Ext.Python - _Allows Python plugins to be loaded_
 * Oxide.Ext.Rust - _Provides support for the Rust Experimental server_
 * Oxide.Ext.Unity - _Provides support for Unity games_

Third-party, unofficial extensions available:

 * [Oxide.Ext.RustWeb](http://forum.rustoxide.com/resources/768/) - _A lightweight web server for the Rust Experimental server_
 * [dcodeIO.RustWeb.dll](http://forum.rustoxide.com/resources/768/) - _Provides generation of map images, and live map_

Examples of what extensions may be available in the future:

 * Oxide.Ext.IRC - _Allows plugins to access an IRC server_
 * Oxide.Ext.MySQL - _Allows plugins to access a MySQL database_
 * Oxide.Ext.SQLite - _Allows plugins to access a SQLite database_
 * Oxide.Ext.WebServer - _Allows the game server to also host a web server_
 * Oxide.Ext.SevenDaysToDie - _Provides support for the 7 Days to Die server_

# API Hooks

## Plugin specific hooks

### Init()
 * Called when the plugin is being loaded
 * Other plugins may or may not be present, dependant on load order
 * Other plugins WILL have been executed though, so globals exposed by them will be present

### LoadDefaultConfig()
 * Called when the config for the plugin should be initialized
 * Only called if the config file does not already exist

### Unload()
 * Called when the plugin is being unloaded

## General hooks

### OnInitLogging()
 * Called from Assembly-CSharp/Bootstrap.StartupShared
 * No return behavior
 * Used internally by Oxide to start Unity logging

### OnTick()
 * Called from Assembly-CSharp/ServerMgr.DoTick
 * No return behavior
 * Called every tick (defined by the tickrate of the server?)

### ModifyTags(string oldtags)
 * Called from Assembly-CSharp/ServerMgr.UpdateServerInformation
 * Returning a string overrides the tags with new ones
 * Used by RustCore and abstracted into BuildServerTags

### BuildServerTags(IList<string> tags)
 * Called from RustCore.ModifyTags
 * No return behavior
 * Add tags to the list, they will be concat'd at the end

### OnServerInitialized()
 * Called from Assembly-CSharp/ServerMgr
 * No return behavior
 * Is called after the server startup has been completed and is awaiting connections

### OnRunCommand(Facepunch/ConsoleSystem.Arg arg)
 * Called from Facepunch/ConsoleSystem.Run, Facepunch/ConsoleSystem.RunUnrestricted and Facepunch/ConsoleSystem.ClientRun
 * Return true to override Rust's command handling system
 * Useful for intercepting commands before they get to their intended target (like chat.say)
 * Used by RustCore to implement chat commands

### OnUserApprove(Facepunch/Network.Connection connection)
 * Called from Assembly-CSharp/ConnectionAuth.OnNewConnection
 * Returning a non-null value overrides default behavior, plugin should call Reject if it does this
 * Used by RustCore and abstracted into CanClientLogin

### CanClientLogin(Facepunch/Network.Connection connection)
 * Called from RustCore.OnUserApprove
 * Returning true will allow the connection, returning nothing will by default allow the connection, returning anything else will reject it with an error message
 * Returning a string will use the string as the error message

### OnFindSpawnPoint()
 * Called from Assembly-CSharp/ServerMgr
 * Return a Assembly-CSharp/BasePlayer.SpawnPoint object to use that spawnpoint
 * Useful for controlling player spawnpoints (like making all spawns occur in a set area)

### OnPlayerConnected(Facepunch/Network.Message packet)
 * Called from Assembly-CSharp/ServerMgr
 * No return behavior
 * Is called before the player object is created, but after the player has been approved to join the game
 * Can get the connection from packet.connection

### OnPlayerSpawn(Assembly-CSharp/BasePlayer player, Facepunch/Network.Connection connection)
 * Called when the player spawns (specifically when they click the "Respawn" button)
 * No return behavior
 * ONLY called when the player is transitioning from dead to not-dead, so not when they're waking up
 * This means it's possible for a player to connect and disconnect from a server without OnPlayerSpawn ever triggering for them

### OnRunPlayerMetabolism(Assembly-CSharp/PlayerMetabolism metabolism)
 * Called before a metabolism update occurs for the specified player
 * Returning true cancels the update
 * Metabolism update consists of managing the player's temperature, health etc
 * You can use this to turn off or change certain aspects of the metabolism, either by editing values before returning, or taking complete control of the method
 * Access the player object using metabolism:GetComponent("BasePlayer")

### OnPlayerDisconnected(Assembly-CSharp/BasePlayer player)
 * Called from Assembly-CSharp/ServerMgr
 * No return behavior
 * Is called before the player object is created, but after the player has been approved to join the game

### OnPlayerAttack(Assembly-CSharp/BasePlayer attacker, Assembly-CSharp/HitInfo hitinfo)
 * Called from Assembly-CSharp/BasePlayer
 * Returning true cancels the attack
 * Useful for modifying an attack before it goes out
 * hitinfo.HitEntity should be the entity that this attack would hit

### OnItemCraft(Assembly-CSharp/ItemCraftTask item)
 * Called from Assembly-CSharp/ItemCrafter
 * Return a Assembly-CSharp/ItemCraftTask object to modify behavior
 * Is called right after an item has started crafting

### OnItemDeployed(Assembly-CSharp/Deployer deployer, Assembly-CSharp/BaseEntity deployedentity)
 * Assembly-CSharp/Deployer
 * No return behavior
 * Is called right after an item has been deployed

### OnItemAddedToContainer(Assembly-CSharp/ItemContainer container, Assembly-CSharp/Item item)
 * Called from Assembly-CSharp/ItemContainer
 * No return behavior
 * Is called right after an item was added to a container
 * An entire stack has to be created, not just adding more wood to a wood stack for example

### OnItemRemovedFromContainer(Assembly-CSharp/ItemContainer container, Assembly-CSharp/Item item)
 * Called from Assembly-CSharp/ItemContainer
 * No return behavior
 * Is called right after an item was removed from a container
 * The entire stack has to be removed for this to be called, not just a little bit

### OnGather(Assembly-CSharp/ResourceDispenser dispenser, Assembly-CSharp/BaseEntity entity, Assembly-CSharp/Item item)
 * Assembly-CSharp/ResourceDispenser
 * No return behavior
 * Is called before the player is given items from a resource

### CanOpenDoor(Assembly-CSharp/BasePlayer player, Assembly-CSharp/BaseLock door)
 * Called from Assembly-CSharp/BaseLock
 * Returning true will allow door usage, nothing will by default will allow door usage, returning anything else will reject door usage

### CanOpenDoor(Assembly-CSharp/BasePlayer player, Assembly-CSharp/CodeLock code)
 * Called from Assembly-CSharp/CodeLock
 * Returning true will allow door code usage, nothing will by default will allow door code usage, returning anything else will reject door code usage

### CanOpenDoor(Assembly-CSharp/BasePlayer player, Assembly-CSharp/KeyLock key)
 * Called from Assembly-CSharp/KeyLock
 * Returning true will allow door key usage, nothing will by default will allow door key usage, returning anything else will reject door key usage

### OnEntityAttacked(UnityEngine/Monobehavior entity, Assembly-CSharp/HitInfo hitinfo)
 * Called from multiple places, each entity's attack handler basically
 * Returning non-null value overrides default server behavior (useful for godmode etc)
 * Alternatively, modify the hitinfo object to change the damage
 * It should be ok to set the damage to 0, but if you don't return non-null, the player's client will receive a damage indicator (if entity is a BasePlayer)
 * hitinfo has all kinds of useful things in it, such as hitinfo.Weapon, hitinfo.damageAmount or hitinfo.damageType
 * Currently implemented for: BasePlayer, BaseAnimal

### OnEntityBuilt(Assembly-CSharp/BasePlayer player, UnityEngine/GameObject gameobject)
 * Called from Assembly-CSharp/Item.Modules.Planner
 * No return behavior
 * Called when any structure is built (walls, ceilings, stairs, etc)

### OnEntityDeath(UnityEngine/Monobehavior entity, Assembly-CSharp/HitInfo hitinfo)
 * Called from multiple places, each entity's death handler basically
 * No return behavior
 * hitinfo might be null, check it before use
 * Editing hitinfo probably has no effect
 * Currently implemented for: BasePlayer, BaseAnimal

### OnEntityEnter(Assembly-CSharp/TriggerBase triggerbase, Assembly-CSharp/BaseEntity entity)
 * Called from Assembly-CSharp/TriggerBase
 * No return behavior
 * Called when an entity enters an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc)

### OnEntityLeave(Assembly-CSharp/TriggerBase triggerbase, Assembly-CSharp/BaseEntity entity)
 * Called from Assembly-CSharp/TriggerBase
 * No return behavior
 * Called when an entity leaves an area/zone (building privilege zone, water area, radiation zone, hurt zone, etc)

### OnEntitySpawn(UnityEngine/Monobehavior entity)
 * Called from Assembly-CSharp/BaseNetworkable
 * No return behavior
 * Called when any networked entity is spawned (including trees)

### OnPlayerInit(Assembly-CSharp/BasePlayer player)
 * Called from Assembly-CSharp/BasePlayer
 * No return behavior
 * Called when the player is initialising (after they've connected, before they wake up)

### OnPlayerChat(Assembly-CSharp/chat.say arg)
 * Called from Assembly-CSharp/chat.say
 * Returning a non-null value overrides default behavior of chat, not commands

### OnPlayerLoot(Assembly-CSharp/PlayerLoot lootinventory, Assembly-CSharp/BaseEntity targetentity)
 * Called from Assembly-CSharp/PlayerLoot
 * No return behavior
 * Called when the player starts looting an entity

### OnPlayerLoot(Assembly-CSharp/PlayerLoot lootinventory, Assembly-CSharp/BasePlayer targetplayer)
 * Called from Assembly-CSharp/PlayerLoot
 * No return behavior
 * Called when the player starts looting another player

### OnPlayerLoot(Assembly-CSharp/PlayerLoot lootinventory, Assembly-CSharp/Item targetitem)
 * Called from Assembly-CSharp/PlayerLoot
 * No return behavior
 * Called when the player starts looting an item

# Configurations

## Creating a configuration

``` csharp
We need an example here
```

``` javascript
We need an example here
```

``` lua
PLUGIN.Title = "Title of Plugin"
PLUGIN.Version = V(0, 0, 1)
PLUGIN.Description = "Plugin description"
PLUGIN.Author = "Your Name"
PLUGIN.HasConfig = true

function PLUGIN:Init()
    self:LoadDefaultConfig()
end

function PLUGIN:LoadDefaultConfig()
    self.Config.ShowJoinMessage = true
    self.Config.ShowLeaveMessage = true
    self.Config.Messages = {}
    self.Config.Messages.Join = "Welcome to this server"
    self.Config.Messages.Leave = "Goodbye"
    self:SaveConfig()
end
```

``` python
We need an example here
```

## Saving a configuration

``` csharp
We need an example here
```

``` javascript
We need an example here
```

``` lua
We need an example here
```

``` python
We need an example here
```

# Data Tables

## Creating a data table

``` csharp
We need an example here
```

``` javascript
We need an example here
```

``` lua
We need an example here
```

``` python
We need an example here
```

## Saving a Data Table

``` csharp
We need an example here
```

``` javascript
We need an example here
```

``` lua
We need an example here
```

``` python
We need an example here
```

# Timers

## Creating a timer

Sometimes you come across a situation which only a timer can fix. Timers are great for delaying code, allowing it to be run later. The following sections will show you the various timer types, and how to use them properly.

## timer.Once

> Basic example of timer.Once

``` csharp
We need an example here
```

``` javascript
We need an example here
```

``` lua
self.BroadcastTimer = timer.Once(3, function()
    rust.BroadcastChat("SERVER", "Hello world!")
end)
```

``` python
We need an example here
```

> Example of timer.Once with a table

``` csharp
We need an example here
```

``` javascript
We need an example here
```

``` lua
self.TimersList = {}
self.TimersList["Notice1"] = timer.Once(3, function()
    rust.BroadcastChat("SERVER", "This is the Notice 1 every 3 seconds")
end)
self.TimersList["Notice2"] = timer.Once(10, function()
    rust.BroadcastChat("SERVER", "This is the Notice 2 every 10 seconds")
end)
```

``` python
We need an example here
```

Executes the specified function once after the specified delay.

## timer.Repeat

> Basic example of timer.Repeat

``` csharp
We need an example here
```

``` javascript
We need an example here
```

``` lua
self.BroadcastTimer = timer.Repeat(10, 0, function()
    rust.BroadcastChat("SERVER", "Hello world!")
end)
```

``` python
We need an example here
```

Executes the specified function every "delay" seconds. If "repeats" is specified, the function will only be called "repeats" times.

## timer.NextFrame

> Basic example of timer.NextFrame

``` csharp
We need an example here
```

``` javascript
We need an example here
```

``` lua
We need an example here
```

``` python
We need an example here
```

Executes the specified function at the next frame.

## timer.Chain

> Basic example of timer.Chain

``` csharp
We need an example here
```

``` javascript
We need an example here
```

``` lua
We need an example here
```

``` python
We need an example here
```

Executes a chain of delayed functions. Each number in the argument list delays the timer chain by n more seconds, and each function in the argument list gets called after the previous delays in the chain have passed.

## Destroying a timer

> Basic example in Unload

``` c#
We need an example here
```

``` javascript
We need an example here
```

``` lua
function PLUGIN:Unload()
    if self.BroadcastTimer then
        self.BroadcastTimer:Destroy()
    end
end
```

``` python
We need an example here
```

> Example in Unload with a table

``` c#
We need an example here
```

``` javascript
We need an example here
```

``` lua
function PLUGIN:Unload()
    for key, value in pairs(self.TimersList) do
        self.TimersList[key]:Destroy()
    end
end
```

``` python
We need an example here
```

It's always a good habit to stop all timers when your plugin is unloaded; do this by destroying the instance of the timer.

Timers can be used anywhere in your plugin, not just in the Unload function. Just make sure to always destroy them, as you wouldn't want a bunch of timers piling up and slowing down someone's server!

Placeholder text

# Web Requests

Sends a HTTP web request to the specified URL. Returns true if the web request was sent, false if not. The callback is called with 2 parameters - an integer HTTP response code and a string response.

## Get method

This uses the raw connection to a web page as you would on your browser.

Returns true/false

``` c#
We need an example here
```

``` javascript
We need an example here
```

``` lua
webrequests.EnqueueGet("http://www.google.com/search?q=rust+oxide", function(code, response)
    if response == nil or code ~= 200 then 
        print("Couldn't get an answer from Google!") 
        return 
    end
    print("Google answered: " .. tostring(response))
end, self.Object)
```

``` python
We need an example here
```

## Post method

Returns true/false

# Styling Messages

> Render the text in boldface

``` html
We are <b>not</b> amused.
```

> Render the text in italics

``` html
We are <i>usually</i> not amused.
```

> It is possible to apply more than one style to a section of text by “nesting” one element inside another.

``` html
We are <b><i>definitely not</i></b> amused
```

> Note the ordering of the ending tags, which is in reverse to that of the starting tags. The reason for this is perhaps clearer when you consider that the inner tags need not span the whole text of the outermost element.

``` html
We are <b>absolutely <i>definitely</i> not</b> amused
```

> Change the size of text, by pixel value

``` html
We are <size=50>largely</size> unaffected.
```

> Change the color of text

``` html
<color=#00ffffff>Hello world</color>
```

With Rust, you can stylize messages send from the server via plugins. Styling is limited to bold, italic, size, and color.

The color can be specified in the traditional HTML format. `#rrggbbaa`... where the letters correspond to pairs of hexadecimal digits denoting the red, green, blue and alpha (transparency) values for the color.

Another option is to use the name of the color. This is easier to understand but naturally, the range of colors is limited and full opacity is always assumed. `<color=cyan>`... The available color names are given in the table below.

|Color Name                 |Hex Value  |Swatch                            |
|---------------------------|-----------|----------------------------------|
|aqua (same as cyan)        |#00ffffff  |![](images/cyan-swatch.png)       |
|black                      |#000000ff  |![](images/black-swatch.png)      |
|blue                       |#0000ffff  |![](images/blue-swatch.png)       |
|brown                      |#a52a2aff  |![](images/brown-swatch.png)      |
|cyan (same as aqua)        |#00ffffff  |![](images/cyan-swatch.png)       |
|darkblue                   |#0000a0ff  |![](images/darkblue-swatch.png)   |
|fuchsia (same as magenta)  |#ff00ffff  |![](images/magenta-swatch.png)    |
|green                      |#008000ff  |![](images/green-swatch.png)      |
|grey                       |#808080ff  |![](images/grey-swatch.png)       |
|lightblue                  |#add8e6ff  |![](images/lightblue-swatch.png)  |
|lime                       |#00ff00ff  |![](images/lime-swatch.png)       |
|magenta (same as fuchsia)  |#ff00ffff  |![](images/magenta-swatch.png)    |
|maroon                     |#800000ff  |![](images/maroon-swatch.png)     |
|navy                       |#000080ff  |![](images/navy-swatch.png)       |
|olive                      |#808000ff  |![](images/olive-swatch.png)      |
|orange                     |#ffa500ff  |![](images/orange-swatch.png)     |
|purple                     |#800080ff  |![](images/purple-swatch.png)     |
|red                        |#ff0000ff  |![](images/red-swatch.png)        |
|silver                     |#c0c0c0ff  |![](images/silver-swatch.png)     |
|teal                       |#008080ff  |![](images/teal-swatch.png)       |
|white                      |#ffffffff  |![](images/white-swatch.png)      |
|yellow                     |#ffff00ff  |![](images/yellow-swatch.png)     |

_Source: [http://docs.unity3d.com/Manual/StyledText.html](http://docs.unity3d.com/Manual/StyledText.html)_

Placeholder text

# Rust Functions

``` lua
rust.BroadcastChat(name, message, userid)
```

``` lua
rust.SendChatMessage(player, name, message, userid)
```

``` lua
rust.QuoteSafe(message)
```

``` lua
rust.UserIDFromConnection(connection)
```

``` lua
rust.UserIDFromDeployedItem(deployeditem)
```

``` lua
rust.UserIDFromPlayer(player)
```

``` lua
rust.UserIDsFromBuildingPrivlidge(buildingpriv)
```

``` lua
rust.RunServerCommand(command, args)
```

``` lua
rust.ForcePlayerPosition(player, x, y, z)
```

``` lua
rust.PrivateBindingFlag()
```

There are a few functions that have been added to wrap Rust functions, creating aliases of sorts to make your life easier during initial coding as well as during upgrades.

Placeholder text

# Compiling Source

While we recommend using one of the [official release builds](http://forum.rustoxide.com/download/), you can compile your own builds if you'd like.

 1. Clone the git repository locally using `git clone https://github.com/OxideMod/Oxide.git`
 2. Open the solution in Visual Studio (2013 is recommended, but it should work on earlier versions).
 3. Build the project using the solution. If you get errors, it probably means you're missing .NET framework.

<aside class="warning">Keep in mind that only official builds are supported by the Oxide team and community.</aside>
