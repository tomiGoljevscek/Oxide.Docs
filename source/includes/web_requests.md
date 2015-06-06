# Web Requests

Sends a HTTP web request to the specified URL. Returns true if the web request was sent, false if not. The callback is called with 2 parameters - an integer HTTP response code and a string response.

## Get method

``` csharp
using Oxide.Core;
using Oxide.Core.Libraries;

namespace Oxide.Plugins
{
    [Info("Example", "Oxide Team", 1.0)]
    [Description("This example illustrates how to use a GET WebRequest.")]
    class Example : RustPlugin
    {
        private readonly WebRequests webRequests = Interface.GetMod().GetLibrary<WebRequests>("WebRequests");

        [ChatCommand("getreqeust")]
        private void ExampleGetRequest(BasePlayer player, string command, string[] args)
        {
            webRequests.EnqueueGet("http://www.google.com/search?q=oxide+mod", (code, response) => WebRequestCallback(code, response, player), this);
        }

        private void WebRequestCallback(int code, string response, BasePlayer player)
        {
            if (response == null || code != 200)
            {
                Puts($"Couldn't get an answer from Google for {player.displayName}");
                return;
            }
            Puts($"Google answered for {player.displayName}: {response}");
        }
    }
}

```

``` javascript
webrequests.EnqueueGet("http://www.google.com/search?q=oxide+mod", function(code, response) {
    if (response == null || code != 200) {
        print("Couldn't get an answer from Google!");
        return
    }
    print("Google answered: " + response);
}.bind(this), this.Plugin);
```

``` lua
webrequests.EnqueueGet("http://www.google.com/search?q=oxide+mod", function(code, response)
    if response == nil or code ~= 200 then 
        print("Couldn't get an answer from Google!") 
        return 
    end
    print("Google answered: " .. tostring(response))
end, self.Plugin)
```

``` python
from System import Action, Int32, String
def response_handler(code, response):
    if response == None or code != 200:
        print "Couldn't get an answer from Google!" 
        return 
    print "Google answered: " + response
webrequests.EnqueueGet("http://www.google.com/search?q=oxide+mod", Action[Int32,String](response_handler), self.Plugin);
```

This uses the raw connection to a web page as you would on your browser.

Returns true/false

## Post method

``` csharp
using Oxide.Core;
using Oxide.Core.Libraries;

namespace Oxide.Plugins
{
    [Info("Example", "Oxide Team", 1.0)]
    [Description("This example illustrates how to use a POST WebRequest.")]
    class Example : RustPlugin
    {
        private readonly WebRequests webRequests = Interface.GetMod().GetLibrary<WebRequests>("WebRequests");

        [ChatCommand("getreqeust")]
        private void ExampleGetRequest(BasePlayer player, string command, string[] args)
        {
            webRequests.EnqueuePost("http://www.google.com/search?q=Oxide+Mod", "param1=value1&param2=value2", (code, response) => WebRequestCallback(code, response, player), this);
        }

        private void WebRequestCallback(int code, string response, BasePlayer player)
        {
            if (response == null || code != 200)
            {
                Puts($"Couldn't get an answer from Google for {player.displayName}");
                return;
            }
            Puts($"Google answered for {player.displayName}: {response}");
        }
    }
}

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

Returns true/false
