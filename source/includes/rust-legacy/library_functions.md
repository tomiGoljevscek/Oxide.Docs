# Library Functions

There are a few functions that have been added to wrap Rust Legacy functions, creating aliases of sorts to make your life easier during initial coding as well as during upgrades.

## BroadcastChat

``` csharp
void OnPlayerConnected(NetUser netUser)
{
    PrintToChat($"{netUser.displayName} has joined the server"));
}
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

Searches for an online player by name, steam id or ip. Returns a netUser if a player is found, otherwise null is returned.

`rust.FindPlayer(string nameOrSteamIdOrIp)`

## PrivateBindingFlag

``` csharp
This should not be used in C# plugins, Reflection should be used instead

Used to get/set private methods, fields, and properties through Reflection.

`rust.PrivateBindingFlag()`

## QuoteSafe

``` csharp
var message = "Use /kick \"playername\" to kick player";
message.QuoteSafe();
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

Sends a notice to the player on the right side of the screen right above the player's health bar.

`rust.InventoryNotice(NetUser netUser, string message)`
