# Library Functions

There are a few functions that have been added to wrap Rust Legacy functions, creating aliases of sorts to make your life easier during initial coding as well as during upgrades.

## BroadcastChat

``` csharp
void OnPlayerConnected(NetUser netUser)
{
    PrintToChat($"{netUser.displayName} has joined the server"));
}
```

``` lua
function PLUGIN:OnPlayerConnected(netUser)
    rust.BroadcastChat(netUser.displayName .. " has joined the server")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnPlayerConnected: function(netUser) {
    rust.BroadcastChat(netUser.displayName + " has joined the server");
}
```

``` python
def OnPlayerConnected(self, netUser):
    rust.BroadcastChat(netUser.displayName + " has joined the server")
```

Sends a chat message to all players.

`rust.BroadcastChat(string message, object[] args)`

## BroadcastConsole

``` csharp
void OnPlayerConnected(NetUser netUser)
{
    PrintToConsole($"{netUser.displayName} has joined the server");
}
```

``` lua
function PLUGIN:OnPlayerConnected(netUser)
    rust.BroadcastConsole(netUser.displayName .. " has joined the server")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnPlayerConnected: function(netUser) {
    rust.BroadcastConsole(netUser.displayName + " has joined the server");
}
```

``` python
def OnPlayerConnected(self, netUser):
    rust.BroadcastConsole(netUser.displayName + " has joined the server")
```

Prints a message to all players' in-game console

`rust.BroadcastConsole(string message, object[] args)`

## FindPlayer
``` csharp
[ChatCommand("ex")
void Example(NetUser netUser, string command, string[] args)
{
    NetUser target = rust.FindPlayer(args[0]);
}
```

``` lua
function PLUGIN:Init()
    cmd.AddChatCommand("ex",  self.Plugin, "Example")
end
function PLUGIN:Example(netUser, command, args)
    target = rust.FindPlayer(args[0])
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
Init: function() {
    cmd.AddChatCommand("ex",  self.Plugin, "Example");
},
Example: function(netUser, command, args) {
    target = rust.FindPlayer(args[0]);
}
```

``` python
def Init(self):
    cmd.AddChatCommand("ex",  self.Plugin, "Example")
def Example(self, netUser, command, args):
    target = rust.FindPlayer(args[0])
```

Searches for an online player by name, steam id or ip. Returns a netUser if a player is found, otherwise null is returned.

`rust.FindPlayer(string nameOrSteamIdOrIp)`

## PrivateBindingFlag

``` csharp
This should not be used in C# plugins, Reflection should be used instead
```

``` lua
We need a Lua example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
We need a JavaScript example here
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

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
rust.QuoteSafe("Use /kick \"playername\" to kick player");
```

``` python
rust.QuoteSafe("Use /kick \"playername\" to kick player")
```

Used to safely save text or send a message that contains quotation marks.

`rust.QuoteSafe(message)`

## SendChatMessage

``` csharp
void OnPlayerSpawn(NetUser netUser)
{
    var message = "You've respawned from a terrible death";
    rust.SendChatMessage({ netUser, message });
}
```

``` lua
function PLUGIN:OnPlayerSpawn(player)
    rust.SendChatMessage(netUser, "You've respawned from a terrible death")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnPlayerSpawn: function(netUser) {
    rust.SendChatMessage(netUser, "You've respawned from a terrible death");
}
```

``` python
def OnPlayerSpawn(self, player):
    rust.SendChatMessage(netUser, "You've respawned from a terrible death")
```

Sends a chat message to specified player.

`rust.SendChatMessage(NetUser netUser, string message, object[] args)`

## SendConsoleMessage

``` csharp
void OnPlayerSpawn(NetUser netUser)
{
    var message = "You've respawned from a terrible death";
    rust.SendConsoleMessage({ netUser, message });
}
```

``` lua
function PLUGIN:OnPlayerSpawn(player)
    rust.SendConsoleMessage(netUser, "You've respawned from a terrible death")
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
OnPlayerSpawn: function(netUser) {
    rust.SendConsoleMessage(netUser, "You've respawned from a terrible death");
}
```

``` python
def OnPlayerSpawn(self, player):
    rust.SendConsoleMessage(netUser, "You've respawned from a terrible death")
```

Sends a console message to specified player's console.

`rust.SendConsoleMessage(NetUser netUser, string message, object[] args)`

## UserIDFromPlayer

``` csharp
[ChatCommand("id")]
void ChatId(NetUser netUser, string command, string[] args)
{
    SendReply(netUser, "Your ID is: " + netUser.userID.ToString());
}
```

``` lua
function PLUGIN:Init()
    cmd.AddChatCommand("steamid",  self.Plugin, "ChatId")
end
function PLUGIN:ChatId(netUser, command, arg)
    rust.SendChatMessage(netUser, "Your ID is: " .. rust.UserIDFromPlayer(netUser))
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
Init: function() {
    cmd.AddChatCommand("steamid",  self.Plugin, "ChatId");
},
ChatId: function(netUser, command, arg) {
    rust.SendChatMessage(netUser, "Your ID is: " + rust.UserIDFromPlayer(netUser));
}
```

``` python
def Init(self):
    cmd.AddChatCommand("steamid",  self.Plugin, "cmdSteamId")
def cmdSteamId(self, netUser, command, arg):
    rust.SendChatMessage(netUser, "Your Steam ID is: " + rust.UserIDFromPlayer(netUser))
```

Gets the user ID (64-bit SteamID) as a string of an online player.

`rust.UserIDFromPlayer(NetUser netUser)`

## Notice

``` csharp
[ChatCommand("notice")]
void cmdNotice(NetUser netUser, string command, string[] args)
{
    var message = "Notice Demo";
    var icon = "!";
    var duration = 4f;
    rust.Notice(netUser, message, icon, duration);
}
```

``` lua
function PLUGIN:Init()
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice")
end
function PLUGIN:cmdNotice(netUser, command, arg)
    rust.Notice(netUser, "Notice Demo", "!", 4);
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
Init: function() {
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice");
},
cmdNotice: function(netUser, command, arg) {
    rust.Notice(netUser, "Notice Demo", "!", 4);
}
```

``` python
def Init(self):
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice")
def cmdNotice(self, netUser, command, arg):
    rust.Notice(netUser, "Notice Demo", "!", 4);
```

Sends a notice to the player at the top of the screen.

`rust.Notice(NetUser netUser, string message, string icon, float duration)`

## InventoryNotice

``` csharp
[ChatCommand("notice")]
void cmdNotice(NetUser netUser, string command, string[] args)
{
    var message = "InventoryNotice Demo";
    rust.InventoryNotice(netUser, message);
}
```

``` lua
function PLUGIN:Init()
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice")
end
function PLUGIN:cmdNotice(netUser, command, arg)
    rust.InventoryNotice(netUser, "InventoryNotice Demo");
end
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
Init: function() {
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice");
},
cmdNotice: function(netUser, command, arg) {
    rust.InventoryNotice(netUser, "InventoryNotice Demo");
}
```

``` python
def Init(self):
    cmd.AddChatCommand("notice",  self.Plugin, "cmdNotice")
def cmdNotice(self, netUser, command, arg):
    rust.InventoryNotice(netUser, "InventoryNotice Demo");
```

Sends a notice to the player on the right side of the screen right above the player's health bar.

`rust.InventoryNotice(NetUser netUser, string message)`
