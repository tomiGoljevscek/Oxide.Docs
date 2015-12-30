# Player Hooks

## OnPlayerConnected

``` csharp
void OnPlayerConnected(EntityPlayer player)
{
    Puts("OnPlayerConnected works!");
}
```

``` lua
function PLUGIN:OnPlayerConnected(player)
    print("OnPlayerConnected works!")
end
```

``` javascript
OnPlayerConnected: function(player) {
    print("OnPlayerConnected works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerConnected(self, player):
    print "OnPlayerConnected works!"
```

 * Called from GameManager.RequestToSpawnPlayer
 * Called when a player has connected to the server
 * No return behavior

## OnPlayerDisconnected

``` csharp
void OnPlayerDisconnected(EntityPlayer player)
{
    Puts("OnPlayerDisconnected works!");
}
```

``` lua
function PLUGIN:OnPlayerDisconnected(player)
    print("OnPlayerDisconnected works!")
end
```

``` javascript
OnPlayerDisconnected: function(player) {
    print("OnPlayerDisconnected works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerDisconnected(self, player):
    print "OnPlayerDisconnected works!"
```

 * Called from GameManager.PlayerDisconnected
 * Called when a player has disconnected from the server
 * No return behavior

## OnPlayerChat

``` csharp
void OnPlayerChat(string message, string playerName)
{
    Puts("OnPlayerChat works!");
}
```

``` lua
function PLUGIN:OnPlayerChat(message, playerName)
    print("OnPlayerChat works!")
end
```

``` javascript
OnPlayerChat: function(message, playerName) {
    print("OnPlayerChat works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerChat(self, message, playerName):
    print "OnPlayerChat works!"
```

 * Called from GameManager.GameMessageServer
 * Called when a player sends chat to the server
 * No return behavior

## OnPlayerRespawned

``` csharp
void OnPlayerRespawned(EntityPlayer player, string reason)
{
    Puts("OnPlayerRespawned works!");
}
```

``` lua
function PLUGIN:OnPlayerRespawned(player, reason)
    print("OnPlayerRespawned works!")
end
```

``` javascript
OnPlayerRespawned: function(player, reason) {
    print("OnPlayerRespawned works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnPlayerRespawned(self, player, reason):
    print "OnPlayerRespawned works!"
```

 * Called from EntityPlayer.Respawn
 * Called when a player has respawned
 * No return behavior

## OnExperienceGained

``` csharp
void OnExperienceGained(EntityPlayer player, uint exp)
{
    Puts("OnExperienceGained works!");
}
```

``` lua
function PLUGIN:OnExperienceGained(player, exp)
    print("OnExperienceGained works!")
end
```

``` javascript
OnExperienceGained: function(player, exp) {
    print("OnExperienceGained works!");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
def OnExperienceGained(self, player, exp):
    print "OnExperienceGained works!"
```

 * Called from EntityPlayer.AddExp
 * Called when a player has gained experience
 * No return behavior
