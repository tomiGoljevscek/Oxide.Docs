# Rust Functions

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
We need a JavaScript example here
```

``` lua
function PLUGIN:OnPlayerInit(player)
    rust.BroadcastChat(player.diplayName .. " has joined the server")
end
```

``` python
We need a Python example here
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
We need a JavaScript example here
```

``` lua
function PLUGIN:OnPlayerSpawn(player)
    rust.SendChatMessage(player, "SERVER", "You've respawned from a terrible death")
end
```

``` python
We need a Python example here
```

Sends a chat message to specified player. The optional userid argument is used for the avatar in the chat, with 0 the default and Rust logo.

`rust.SendChatMessage(player, name, message, userid)`

## QuoteSafe

``` csharp
var message = "Use /kick \"playername\" to kick player";
message.QuoteSafe();
```

``` javascript
We need a JavaScript example here
```

``` lua
rust.QuoteSafe("Use /kick \"playername\" to kick player")
```

``` python
We need a Python example here
```

Used to safely save text or send a message that contains quotation marks.

`rust.QuoteSafe(message)`

## UserIDFromConnection

``` csharp
We need a CSharp example here
```

``` javascript
We need a JavaScript example here
```

``` lua
function PLUGIN:OnPlayerConnected(packet)
    local connection = packet.connection
    rust.BroadcastChat(connection.username .. " connected (" .. rust.UserIDFromConnection(connection) .. ")")
end
```

``` python
We need a Python example here
```

Gets the user ID (64-bit SteamID) of a player from their connection. This is mainly used for performing actions when a player connects to a server, or during the login process.

`rust.UserIdFromConnection(connection)`

## UserIDFromPlayer

``` csharp
[ChatCommand("steamid")]
void cmdChatSteamid(BasePlayer player, string command, string[] args)
{
    SendReply(player, "SERVER", "Your SteamID is: " + player.userID.ToString());
}
```

``` javascript
We need a JavaScript example here
```

``` lua
function PLUGIN:Init()
    command.AddChatCommand("steamid",  self.Object, "cmdSteamId")
end

function PLUGIN:cmdSteamId(player, command, arg)
    rust.SendChatMessage(player, "SERVER", "Your Steam ID is: " .. rust.UserIDFromPlayer(player))
end
```

``` python
We need a Python example here
```

Gets the user ID (64-bit SteamID) of an online player.

`rust.UserIDFromPlayer(player)`

## UserIDFromDeployedItem

``` csharp
object CanClientLogin(Network.Connection connection)
{
    var playerid = connection.userid.ToString();
    if (playerid == "76175462486136042")
    {
        return "Sorry, you are not allowed on this server!"
    }
    return null;
}
```

``` javascript
We need a JavaScript example here
```

``` lua
function PLUGIN:CanClientLogin(connection)
    local playerid = rust.UserIDFromConnection(connection)
    if playerid == "76175462486136042" then
        return "Sorry, you are not allowed on this server!"
    end
end
```

``` python
We need a Python example here
```

Gets the owner ID (64-bit SteamID) of a deployed item.

`rust.UserIDFromDeployedItem(deployeditem)`

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
We need a JavaScript example here
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
We need a JavaScript example here
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
We need a JavaScript example here
```

``` lua
We need a Lua example here
```

``` python
We need a Python example here
```

Used to get/set private methods, fields, and properties.

`rust.PrivateBindingFlag()`
