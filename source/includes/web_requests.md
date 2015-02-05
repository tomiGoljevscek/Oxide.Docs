# Web Requests

Sends a HTTP web request to the specified URL. Returns true if the web request was sent, false if not. The callback is called with 2 parameters - an integer HTTP response code and a string response.

## Get method

This uses the raw connection to a web page as you would on your browser.

Returns true/false

``` c#
We need an example here
```

``` javascript
We need an example here
```

``` lua
webrequests.EnqueueGet("http://www.google.com/search?q=rust+oxide", function(code, response)
    if response == nil or code ~= 200 then 
        print("Couldn't get an answer from Google!") 
        return 
    end
    print("Google answered: " .. tostring(response))
end, self.Object)
```

``` python
We need an example here
```

## Post method

Returns true/false
