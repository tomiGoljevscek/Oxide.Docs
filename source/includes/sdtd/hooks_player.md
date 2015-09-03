# Player Hooks

## OnPlayerConnected

``` csharp
void OnPlayerConnected(EntityPlayer player)
{
    Puts("OnPlayerConnected works!");
}
```

``` javascript
OnPlayerConnected: function(player) {
    print("OnPlayerConnected works!");
}
```

``` lua
function PLUGIN:OnPlayerConnected(player)
    print("OnPlayerConnected works!")
end
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

``` javascript
OnPlayerDisconnected: function(player) {
    print("OnPlayerDisconnected works!");
}
```

``` lua
function PLUGIN:OnPlayerDisconnected(player)
    print("OnPlayerDisconnected works!")
end
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

``` javascript
OnPlayerChat: function(message, playerName) {
    print("OnPlayerChat works!");
}
```

``` lua
function PLUGIN:OnPlayerChat(message, playerName)
    print("OnPlayerChat works!")
end
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

``` javascript
OnPlayerRespawned: function(player, reason) {
    print("OnPlayerRespawned works!");
}
```

``` lua
function PLUGIN:OnPlayerRespawned(player, reason)
    print("OnPlayerRespawned works!")
end
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

``` javascript
OnExperienceGained: function(player, exp) {
    print("OnExperienceGained works!");
}
```

``` lua
function PLUGIN:OnExperienceGained(player, exp)
    print("OnExperienceGained works!")
end
```

``` python
def OnExperienceGained(self, player, exp):
    print "OnExperienceGained works!"
```

 * Called from EntityPlayer.AddExp
 * Called when a player has gained experience
 * No return behavior
