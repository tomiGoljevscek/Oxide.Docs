# Rust Functions

There are a few functions that have been added to wrap Rust functions, creating aliases of sorts to make your life easier during initial coding as well as during upgrades.

## BroadcastChat

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

Placeholder text

## SendChatMessage

``` csharp
void OnPlayerSpawn(BasePlayer player)
{
    var message = "You've respawned from a terrible death";
    rust.SendChatMessage({ player, "SERVER", message });
}
```

``` javascript
We need an example here
```

``` lua
function PLUGIN:OnPlayerSpawn(player)
    rust.SendChatMessage(player, "SERVER", "You've respawned from a terrible death")
end
```

``` python
We need an example here
```

**Usage:** `rust.SendChatMessage(player, name, message, userid)`

Sends a message to specified player. The optional userid argument is used for the avatar in the chat, with 0 the default and Rust logo.

## QuoteSafe

``` csharp
var message = "Use /kick \"playername\" to kick player";
message.QuoteSafe();
```

``` javascript
We need an example here
```

``` lua
rust.QuoteSafe("Use /kick \"playername\" to kick player")
```

``` python
We need an example here
```

**Usage:** rust.QuoteSafe(message)

Used to safely save text or send a message that contains quotation marks.

## UserIDFromConnection

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

**Usage:** rust.UserIdFromConnection(connection)

## UserIDFromDeployedItem

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

**Usage:** rust.UserIDFromDeployedItem(deployeditem)

## UserIDFromPlayer

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

**Usage:** rust.UserIDFromPlayer(player)

## UserIDsFromBuildingPrivlidge

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

Placeholder text

## RunServerCommand

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

Placeholder text

## ForcePlayerPosition

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

Placeholder text

## PrivateBindingFlag

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

Placeholder text
