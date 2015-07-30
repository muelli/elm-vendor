module Vendor (Prefix(Moz, Webkit, MS, O), prefix) where

{-| A tiny module that detects the browser vendor prefix

# Definition
@docs Prefix, prefix
-}

import Native.Vendor

{-| A union of prefix tags

    type Prefix = Moz | Webkit | MS | O
-}
type Prefix = Moz | Webkit | MS | O


{-| The detected vendor

    displayValue : String
    displayValue =
        if Vendor.prefix == Vendor.Webkit
        then "-webkit-flex"
        else "flex"
-}
prefix : Prefix
prefix =
    case Native.Vendor.prefix of
        "webkit" -> Webkit
        "moz" -> Moz
        "ms" -> MS
        "o" -> O
