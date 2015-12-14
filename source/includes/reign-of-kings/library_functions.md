# Library Functions

There are a few functions that have been added to wrap Reign of Kings functions, creating aliases of sorts to make your life easier during initial coding as well as during upgrades.

## BroadcastChat

``` csharp
void OnPlayerConnected(Player player)
{
    PrintToChat(string.Format("{0} has joined the server", player.DisplayName));
}
```

``` javascript
OnPlayerConnected: function(player) {
    rok.BroadcastChat(player.DisplayName + " has joined the server");
}
```

``` lua
function PLUGIN:OnPlayerConnected(player)
    rok.BroadcastChat(player.DisplayName .. " has joined the server")
end
```

``` python
def OnPlayerConnected(self, player):
    rok.BroadcastChat(player.DisplayName + " has joined the server")
```

Sends a chat message to all players. The name parameter is optional and will be blank if not provided.

`rok.BroadcastChat(name, message)`
