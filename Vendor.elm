module Vendor (Prefix(Moz, Webkit, MS, O), prefix) where

{-| A tiny module that detects the browser vendor prefix

```elm
displayValue : String
displayValue =
    if Vendor.prefix == Vendor.Webkit
    then "-webkit-flex"
    else "flex"
```

@docs Prefix, prefix
-}

import Native.Vendor

{-| A union of prefix tags
-}
type Prefix = Moz | Webkit | MS | O


{-| The detected vendor
-}
prefix : Prefix
prefix =
    case Native.Vendor.prefix of
        "webkit" -> Webkit
        "moz" -> Moz
        "ms" -> MS
        "o" -> O
