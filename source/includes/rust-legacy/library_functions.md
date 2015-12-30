# Library Functions

There are a few functions that have been added to wrap Rust Legacy functions, creating aliases of sorts to make your life easier during initial coding as well as during upgrades.

## BroadcastChat

``` csharp
void OnPlayerConnected(NetUser netuser)
{
    var message = string.Format("{0} has joined the server", netuser.displayName);
    rust.BroadcastChat({ message });
}
```

``` lua
function PLUGIN:OnPlayerConnected(netuser)
    rust.BroadcastChat(netuser.displayName .. " has joined the server")
end
```

``` javascript
OnPlayerConnected: function(netuser) {
    rust.BroadcastChat(netuser.displayName + " has joined the server");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerConnected(self, netuser):
    rust.BroadcastChat(netuser.displayName + " has joined the server")
```

Sends a chat message to all players.

`rust.BroadcastChat(string message, object[] args)`

## BroadcastConsole

``` csharp
void OnPlayerConnected(NetUser netuser)
{
    var message = string.Format("{0} has joined the server", netuser.displayName);
    rust.BroadcastConsole({ message });
}
```

``` lua
function PLUGIN:OnPlayerConnected(netuser)
    rust.BroadcastConsole(netuser.displayName .. " has joined the server")
end
```

``` javascript
OnPlayerConnected: function(netuser) {
    rust.BroadcastConsole(netuser.displayName + " has joined the server");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerConnected(self, netuser):
    rust.BroadcastConsole(netuser.displayName + " has joined the server")
```

Prints a message to all players' in-game console

`rust.BroadcastConsole(string message, object[] args)`

## FindPlayer
``` csharp
[ChatCommand("ex")
void Example(NetUser netuser, string command, string[] args)
{
    NetUser target = rust.FindPlayer(args[0]);
}
```

``` lua
function PLUGIN:Init()
    cmd.AddChatCommand("ex",  self.Plugin, "Example")
end
function PLUGIN:Example(netuser, command, args)
    target = rust.FindPlayer(args[0])
end
```

``` javascript
Init: function() {
    cmd.AddChatCommand("ex",  self.Plugin, "Example");
},
Example: function(netuser, command, args) {
    target = rust.FindPlayer(args[0]);
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def Init(self):
    cmd.AddChatCommand("ex",  self.Plugin, "Example")
def Example(self, netuser, command, args):
    target = rust.FindPlayer(args[0])
```

Searches for an online player by name, steam id or ip. Returns a netuser if a player is found, otherwise null is returned.

`rust.FindPlayer(string nameOrSteamIdOrIp)`

## PrivateBindingFlag

``` csharp
This should not be used in C# plugins, Reflection should be used instead
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

Used to get/set private methods, fields, and properties through Reflection.

`rust.PrivateBindingFlag()`

## QuoteSafe

``` csharp
var message = "Use /kick \"playername\" to kick player";
message.QuoteSafe();
```

``` lua
rust.QuoteSafe("Use /kick \"playername\" to kick player")
```

``` javascript
rust.QuoteSafe("Use /kick \"playername\" to kick player");
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
rust.QuoteSafe("Use /kick \"playername\" to kick player")
```

Used to safely save text or send a message that contains quotation marks.

`rust.QuoteSafe(message)`

## SendChatMessage

``` csharp
void OnPlayerSpawn(NetUser netuser)
{
    var message = "You've respawned from a terrible death";
    rust.SendChatMessage({ netuser, message });
}
```

``` lua
function PLUGIN:OnPlayerSpawn(player)
    rust.SendChatMessage(netuser, "You've respawned from a terrible death")
end
```

``` javascript
OnPlayerSpawn: function(netuser) {
    rust.SendChatMessage(netuser, "You've respawned from a terrible death");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerSpawn(self, player):
    rust.SendChatMessage(netuser, "You've respawned from a terrible death")
```

Sends a chat message to specified player.

`rust.SendChatMessage(NetUser netuser, string message, object[] args)`

## SendConsoleMessage

``` csharp
void OnPlayerSpawn(NetUser netuser)
{
    var message = "You've respawned from a terrible death";
    rust.SendConsoleMessage({ netuser, message });
}
```

``` lua
function PLUGIN:OnPlayerSpawn(player)
    rust.SendConsoleMessage(netuser, "You've respawned from a terrible death")
end
```

``` javascript
OnPlayerSpawn: function(netuser) {
    rust.SendConsoleMessage(netuser, "You've respawned from a terrible death");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerSpawn(self, player):
    rust.SendConsoleMessage(netuser, "You've respawned from a terrible death")
```

Sends a console message to specified player's console.

`rust.SendConsoleMessage(NetUser netuser, string message, object[] args)`

## UserIDFromPlayer

``` csharp
[ChatCommand("steamid")]
void cmdChatSteamid(NetUser netuser, string command, string[] args)
{
    SendReply(netuser, "Your SteamID is: " + netuser.userID.ToString());
}
```

``` lua
function PLUGIN:Init()
    cmd.AddChatCommand("steamid",  self.Plugin, "cmdSteamId")
end
function PLUGIN:cmdSteamId(netuser, command, arg)
    rust.SendChatMessage(netuser, "Your Steam ID is: " .. rust.UserIDFromPlayer(netuser))
end
```

``` javascript
Init: function() {
    cmd.AddChatCommand("steamid",  self.Plugin, "cmdSteamId");
},
cmdSteamId: function(netuser, command, arg) {
    rust.SendChatMessage(netuser, "Your Steam ID is: " + rust.UserIDFromPlayer(netuser));
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def Init(self):
    cmd.AddChatCommand("steamid",  self.Plugin, "cmdSteamId")
def cmdSteamId(self, netuser, command, arg):
    rust.SendChatMessage(netuser, "Your Steam ID is: " + rust.UserIDFromPlayer(netuser))
```

Gets the user ID (64-bit SteamID) as a string of an online player.

`rust.UserIDFromPlayer(NetUser netuser)`

## Notice

``` csharp
[ChatCommand("notice")]
void cmdNotice(NetUser netuser, string command, string[] args)
{
    var message = "Notice Demo";
    var icon = "!";
    var duration = 4f;
    rust.Notice(netuser, message, icon, duration);
}
```

``` lua
function PLUGIN:Init()
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice")
end
function PLUGIN:cmdNotice(netuser, command, arg)
    rust.Notice(netuser, "Notice Demo", "!", 4);
end
```

``` javascript
Init: function() {
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice");
},
cmdNotice: function(netuser, command, arg) {
    rust.Notice(netuser, "Notice Demo", "!", 4);
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def Init(self):
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice")
def cmdNotice(self, netuser, command, arg):
    rust.Notice(netuser, "Notice Demo", "!", 4);
```

Sends a notice to the player at the top of the screen.

`rust.Notice(NetUser netuser, string message, string icon, float duration)`

## InventoryNotice

``` csharp
[ChatCommand("notice")]
void cmdNotice(NetUser netuser, string command, string[] args)
{
    var message = "InventoryNotice Demo";
    rust.InventoryNotice(netuser, message);
}
```

``` lua
function PLUGIN:Init()
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice")
end
function PLUGIN:cmdNotice(netuser, command, arg)
    rust.InventoryNotice(netuser, "InventoryNotice Demo");
end
```

``` javascript
Init: function() {
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice");
},
cmdNotice: function(netuser, command, arg) {
    rust.InventoryNotice(netuser, "InventoryNotice Demo");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def Init(self):
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice")
def cmdNotice(self, netuser, command, arg):
    rust.InventoryNotice(netuser, "InventoryNotice Demo");
```

Sends a notice to the player on the right side of the screen right above the player's health bar.

`rust.InventoryNotice(NetUser netuser, string message)`
