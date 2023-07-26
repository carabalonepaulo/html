### Example

```nim
import html
import std/streams

template hello(name: string): Element = span("hello " & name)

let htmlDoc = doc(lang="en"):
  head:
    meta(charset="UTF-8")
    meta(name="viewport", content="width=device-width, initial-scale=1.0")
    title("Hello World!")
  body:
    span("hello"):
      for i in 0..3:
        span("worl", b("d"), if i mod 2 == 0: ("class", "visible"), hello("paulo"))


var buff = newStringOfCap(2048)
var stream = newStringStream(buff)
stream.write(htmlDoc, false)
stream.flush()
stream.setPosition(0)

echo stream.readAll()
```
