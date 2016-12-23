# Web Requests

Web requests allow you to send a HTTP GET or POST to a specified URL.

The request will return true if the web request was sent, false if not. The callback is called with 2 parameters - an integer HTTP response code and a string response.

## Basic Get method

``` csharp
using Oxide.Core.Libraries.Covalence;

namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", 1.0)]
    [Description("This example illustrates how to use a GET WebRequest")]

    class EpicPlugin : CovalencePlugin
    {
        [Command("get")]
        void GetRequest(IPlayer player, string command, string[] args)
        {
            webrequest.EnqueueGet("http://www.google.com/search?q=oxide", (code, response) => GetCallback(code, response, player), this);
        }

        void GetCallback(int code, string response, IPlayer player)
        {
            if (response == null || code != 200)
            {
                Puts($"Error: {code} - Couldn't get an answer from Google for {player.Name}");
                return;
            }

            Puts($"Google answered for {player.Name}: {response}");
        }
    }
}
```

``` lua
webrequest.EnqueueGet("http://www.google.com/search?q=oxide", function(code, response)
    if response == nil or code ~= 200 then 
        print("Couldn't get an answer from Google!") 
        return 
    end
    print("Google answered: " .. tostring(response))
end, self.Plugin)
```

``` javascript
webrequests.EnqueueGet("http://www.google.com/search?q=oxide", function(code, response) {
    if (response == null || code != 200) {
        print("Couldn't get an answer from Google!");
        return
    }
    print("Google answered: " + response);
}.bind(this), this.Plugin);
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
from System import Action, Int32, String
def response_handler(code, response):
    if response == None or code != 200:
        print "Couldn't get an answer from Google!" 
        return 
    print "Google answered: " + response
webrequest.EnqueueGet("http://www.google.com/search?q=oxide", Action[Int32,String](response_handler), self.Plugin);
```

This uses the raw connection to a web page as you would on your browser.

## Basic POST method

``` csharp
using Oxide.Core.Libraries.Covalence;

namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", 1.0)]
    [Description("This example illustrates how to use a POST WebRequest")]

    class EpicPlugin : CovalencePlugin
    {
        [Command("post")]
        void PostRequest(IPlayer player, string command, string[] args)
        {
            webrequest.EnqueuePost("http://www.google.com/search?q=oxide", "param1=value1&param2=value2", (code, response) => PostCallback(code, response, player), this);
        }

        void PostCallback(int code, string response, IPlayer player)
        {
            if (response == null || code != 200)
            {
                Puts($"Error: {code} - Couldn't get an answer from Google for {player.Name}");
                return;
            }
            Puts("Google answered for " + player.Name + ": " + response);
        }
    }
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

## Advanced GET method

``` csharp
using Oxide.Core.Libraries.Covalence;

namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", 1.0)]
    [Description("This example illustrates how to use a GET WebRequest")]

    class EpicPlugin : CovalencePlugin
    {
        [Command("get")]
        void GetRequest(IPlayer player, string command, string[] args)
        {
            // Set a custom timeout (in milliseconds)
            var timeout = 200f;

            // Set some custom request headers (eg. for HTTP Basic Auth)
            var headers = new Dictionary<string, string> { { "header", "value" } };

            webrequest.EnqueueGet("http://www.google.com/search?q=oxide", (code, response) => GetCallback(code, response, player), this, headers, timeout);
        }

        void GetCallback(int code, string response, IPlayer player)
        {
            if (response == null || code != 200)
            {
                Puts($"Error: {code} - Couldn't get an answer from Google for {player.Name}");
                return;
            }

            Puts($"Google answered for {player.Name}: {response}");
        }
    }
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```

## Advanced POST method

``` csharp
using Oxide.Core.Libraries.Covalence;

namespace Oxide.Plugins
{
    [Info("EpicPlugin", "Unknown", 1.0)]
    [Description("This example illustrates how to use a POST WebRequest")]

    class EpicPlugin : CovalencePlugin
    {
        [Command("post")]
        void PostRequest(IPlayer player, string command, string[] args)
        {
            // Set a timeout (in milliseconds)
            var timeout = 200f;

            // Set some custom request headers (eg. for HTTP Basic Auth)
            var headers = new Dictionary<string, string> { { "header", "value" } };

            webrequest.EnqueuePost("http://www.google.com/search?q=oxide", "param1=value1&param2=value2", (code, response) => PostCallback(code, response, player), this, headers, timeout);
        }

        void PostCallback(int code, string response, IPlayer player)
        {
            if (response == null || code != 200)
            {
                Puts($"Error: {code} - Couldn't get an answer from Google for {player.Name}");
                return;
            }
            Puts("Google answered for " + player.Name + ": " + response);
        }
    }
}
```

``` lua
We need a Lua example here
```

``` javascript
We need a JavaScript example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` python
We need a Python example here
```
