# Library Functions

There are a few functions that have been added to wrap Rust functions, creating aliases of sorts to make your life easier during initial coding as well as during upgrades.

## QuoteSafe

``` csharp
rust.QuoteSafe("Use /kick \"Player Name\" to kick player");
```

``` lua
rust.QuoteSafe("Use /kick \"Player Name\" to kick player")
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
rust.QuoteSafe("Use /kick \"Player Name\" to kick player");
```

``` python
rust.QuoteSafe("Use /kick \"Player Name\" to kick player")
```

Used to safely save text or send a message that contains quotation marks.

`rust.QuoteSafe(message)`

## PrivateBindingFlag

``` csharp
We need a CSharp example here
```

``` lua
We need a Lua example here
```

``` coffeescript
We need a CoffeeScript example here
```

``` javascript
// Get value of private property
var field = myObject.GetType().GetField("propertyName", rust.PrivateBindingFlag());
var privateFieldValue = field.GetValue(myObject);
```

``` python
We need a Python example here
```

Used to get/set private methods, fields, and properties.

`rust.PrivateBindingFlag()`
