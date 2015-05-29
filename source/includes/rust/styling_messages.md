# Styling Messages

> Render the text in boldface

``` html
We are <b>not</b> amused.
```

> Render the text in italics

``` html
We are <i>usually</i> not amused.
```

> It is possible to apply more than one style to a section of text by nesting one element inside another.

``` html
We are <b><i>definitely not</i></b> amused
```

> Note the ordering of the ending tags, which is in reverse to that of the starting tags. The reason for this is perhaps clearer when you consider that the inner tags need not span the whole text of the outermost element.

``` html
We are <b>absolutely <i>definitely</i> not</b> amused
```

> Change the size of text, by pixel value

``` html
We are <size=50>largely</size> unaffected.
```

> Change the color of text

``` html
<color=#00ffffff>Hello world</color>
```

With Rust, you can stylize messages send from the server via plugins. Styling is limited to bold, italic, size, and color.

The color can be specified in the traditional HTML format. `#rrggbbaa`... where the letters correspond to pairs of hexadecimal digits denoting the red, green, blue and alpha (transparency) values for the color.

Another option is to use the name of the color. This is easier to understand but naturally, the range of colors is limited and full opacity is always assumed. `<color=cyan>`... The available color names are given in the table below.

|Color Name                 |Hex Value  |Swatch                            |
|---------------------------|-----------|----------------------------------|
|aqua (same as cyan)        |#00ffffff  |![](images/cyan-swatch.png)       |
|black                      |#000000ff  |![](images/black-swatch.png)      |
|blue                       |#0000ffff  |![](images/blue-swatch.png)       |
|brown                      |#a52a2aff  |![](images/brown-swatch.png)      |
|cyan (same as aqua)        |#00ffffff  |![](images/cyan-swatch.png)       |
|darkblue                   |#0000a0ff  |![](images/darkblue-swatch.png)   |
|fuchsia (same as magenta)  |#ff00ffff  |![](images/magenta-swatch.png)    |
|green                      |#008000ff  |![](images/green-swatch.png)      |
|grey                       |#808080ff  |![](images/grey-swatch.png)       |
|lightblue                  |#add8e6ff  |![](images/lightblue-swatch.png)  |
|lime                       |#00ff00ff  |![](images/lime-swatch.png)       |
|magenta (same as fuchsia)  |#ff00ffff  |![](images/magenta-swatch.png)    |
|maroon                     |#800000ff  |![](images/maroon-swatch.png)     |
|navy                       |#000080ff  |![](images/navy-swatch.png)       |
|olive                      |#808000ff  |![](images/olive-swatch.png)      |
|orange                     |#ffa500ff  |![](images/orange-swatch.png)     |
|purple                     |#800080ff  |![](images/purple-swatch.png)     |
|red                        |#ff0000ff  |![](images/red-swatch.png)        |
|silver                     |#c0c0c0ff  |![](images/silver-swatch.png)     |
|teal                       |#008080ff  |![](images/teal-swatch.png)       |
|white                      |#ffffffff  |![](images/white-swatch.png)      |
|yellow                     |#ffff00ff  |![](images/yellow-swatch.png)     |

_Source: [http://docs.unity3d.com/Manual/StyledText.html](http://docs.unity3d.com/Manual/StyledText.html)_
