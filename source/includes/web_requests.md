# Web Requests

Sends a HTTP web request to the specified URL. Returns true if the web request was sent, false if not. The callback is called with 2 parameters - an integer HTTP response code and a string response.

## Get method

``` csharp
We need a CSharp example here
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

Returns true/false
