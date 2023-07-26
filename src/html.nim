import std/macros

#
# <!DOCTYPE html>
# <html lang="en">
# <head>
#     <meta charset="UTF-8">
#     <meta name="viewport" content="width=device-width, initial-scale=1.0">
#     <title>Document</title>
# </head>
# <body>
#
# </body>
# </html>
#
# var firstEl: proc(): Element
# var secondEl: proc(): Element
# html:
#   head:
#     meta(charset="UTF-8")
#     meta(name="viewport" content="width=device-width, initial-scale=1.0")
#   body:
#     el(attr-a="", firstEl(), attr-b=""):
#       secondEl()
#       el:
#         for i in 1...5:
#           span("wtf?", @i)
#
macro html(): untyped =
  discard


proc add*(x, y: int): int =
  ## Adds two numbers together.
  return x + y
