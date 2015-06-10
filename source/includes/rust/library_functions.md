# Library Functions

There are a few functions that have been added to wrap Rust functions, creating aliases of sorts to make your life easier during initial coding as well as during upgrades.

## BroadcastChat

``` csharp
void OnPlayerInit(BasePlayer player)
{
    var message = string.Format("{0} has joined the server", player.displayName);
    rust.BroadcastChat({ message });
}
```

``` javascript
OnPlayerInit : function(player) {
    rust.BroadcastChat(player.displayName + " has joined the server");
}
```

``` lua
function PLUGIN:OnPlayerInit(player)
    rust.BroadcastChat(player.displayName .. " has joined the server")
end
```

``` python
def OnPlayerInit(self, player):
    rust.BroadcastChat(player.displayName + " has joined the server")
```

Sends a chat message to all players. The optional userid argument is used for the avatar in the chat, with 0 the default and Rust logo.

`rust.BroadcastChat(name, message, userid)`

## SendChatMessage

``` csharp
void OnPlayerSpawn(BasePlayer player)
{
    var message = "You've respawned from a terrible death";
    rust.SendChatMessage({ player, message });
}
```

``` javascript
OnPlayerSpawn : function(player) {
    rust.SendChatMessage(player, "SERVER", "You've respawned from a terrible death");
}
```

``` lua
function PLUGIN:OnPlayerSpawn(player)
    rust.SendChatMessage(player, "SERVER", "You've respawned from a terrible death")
end
```

``` python
def OnPlayerSpawn(self, player):
    rust.SendChatMessage(player, "SERVER", "You've respawned from a terrible death")
```

Sends a chat message to specified player. The optional userid argument is used for the avatar in the chat, with 0 the default and Rust logo.

`rust.SendChatMessage(player, name, message, userid)`

## QuoteSafe

``` csharp
var message = "Use /kick \"playername\" to kick player";
message.QuoteSafe();
```

``` javascript
rust.QuoteSafe("Use /kick \"playername\" to kick player");
```

``` lua
rust.QuoteSafe("Use /kick \"playername\" to kick player")
```

``` python
rust.QuoteSafe("Use /kick \"playername\" to kick player")
```

Used to safely save text or send a message that contains quotation marks.

`rust.QuoteSafe(message)`

## UserIDFromConnection

``` csharp
We need a CSharp example here
```

``` javascript
OnPlayerConnected : function(packet) {
    var connection = packet.connection;
    rust.BroadcastChat(connection.username + " connected (" + rust.UserIDFromConnection(connection) + ")");
}
```

``` lua
function PLUGIN:OnPlayerConnected(packet)
    local connection = packet.connection
    rust.BroadcastChat(connection.username .. " connected (" .. rust.UserIDFromConnection(connection) .. ")")
end
```

``` python
def OnPlayerConnected(self, packet):
    connection = packet.connection
    rust.BroadcastChat(connection.username + " connected (" + rust.UserIDFromConnection(connection) + ")")
```

Gets the user ID (64-bit SteamID) of a player from their connection. This is mainly used for performing actions when a player connects to a server, or during the login process.

`rust.UserIDFromConnection(connection)`

## UserIDFromPlayer

``` csharp
[ChatCommand("steamid")]
void cmdChatSteamid(BasePlayer player, string command, string[] args)
{
    SendReply(player, "SERVER", "Your SteamID is: " + player.userID.ToString());
}
```

``` javascript
Init : function() {
    command.AddChatCommand("steamid",  self.Plugin, "cmdSteamId");
},
cmdSteamId : function(player, command, arg) {
    rust.SendChatMessage(player, "SERVER", "Your Steam ID is: " + rust.UserIDFromPlayer(player));
}
```

``` lua
function PLUGIN:Init()
    command.AddChatCommand("steamid",  self.Plugin, "cmdSteamId")
end
function PLUGIN:cmdSteamId(player, command, arg)
    rust.SendChatMessage(player, "SERVER", "Your Steam ID is: " .. rust.UserIDFromPlayer(player))
end
```

``` python
def Init(self):
    command.AddChatCommand("steamid",  self.Plugin, "cmdSteamId")
def cmdSteamId(self, player, command, arg):
    rust.SendChatMessage(player, "SERVER", "Your Steam ID is: " + rust.UserIDFromPlayer(player))
```

Gets the user ID (64-bit SteamID) of an online player.

`rust.UserIDFromPlayer(player)`

## UserIDsFromBuildingPrivlidge

``` csharp
We need a CSharp example here
```

``` javascript
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

Gets the user ID (64-bit SteamID) of players that have access to a Tool Cupboard. Yes, the typo in the function name is intentional.

`rust.UserIDsFromBuildingPrivlidge(buildingpriv)`

## RunServerCommand

``` csharp
We need a CSharp example here
```

``` javascript
rust.RunServerCommand("server.hostname", "New Server Name")
```

``` lua
rust.RunServerCommand("server.hostname", "New Server Name")
```

``` python
We need a Python example here
```

Runs a server command.

`rust.RunServerCommand(command, args)`

## ForcePlayerPosition

``` csharp
void ForcePlayerPosition(BasePlayer player, string x, string y, string z)
{
    Vector3 destination = new UnityEngine.Vector3();
    destination.x = x;
    destination.y = y;
    destination.z = z;
    player.transform.position = destination;
    player.ClientRPC(null, player, "ForcePositionTo", new object[] { destination });
    player.TransformChanged();
}
```

``` javascript
rust.ForcePlayerPosition(player, x, y, z)
```

``` lua
rust.ForcePlayerPosition(player, x, y, z)
```

``` python
We need a Python example here
```

Teleports a player to specified coordinates/position.

`rust.ForcePlayerPosition(player, x, y, z)`

## PrivateBindingFlag

``` csharp
We need a CSharp example here
```

``` javascript
// Get value of private property
var field = myObject.GetType().GetField("propertyName", rust.PrivateBindingFlag());
var privateFieldValue = field.GetValue(myObject);
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

Used to get/set private methods, fields, and properties.

`rust.PrivateBindingFlag()`
