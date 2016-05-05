# Library Functions

There are a few functions that have been added to wrap 7 Days to Die functions, creating aliases of sorts to make your life easier during initial coding as well as during upgrades.

## BroadcastChat

``` csharp
void OnPlayerConnected(ClientInfo client)
{
    PrintToChat($"{client.playerName} has joined the server");
}
```

``` coffeescript
We need a CoffeeScript example here
```

``` lua
function PLUGIN:OnPlayerConnected(client)
    sdtd.BroadcastChat(client.playerName .. " has joined the server")
end
```

``` javascript
OnPlayerConnected: function(client) {
    sdtd.BroadcastChat(client.playerName + " has joined the server");
}
```

``` python
def OnPlayerConnected(self, client):
    sdtd.BroadcastChat(client.playerName + " has joined the server")
```

Sends a chat message to all players. The name parameter is optional and will be blank if not provided.

`sdtd.BroadcastChat(name, message)`
