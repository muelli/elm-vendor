module Vendor (prefix) where

{-| A tiny module that returns the detected vendor prefix string

# Definition
@docs prefix
-}

import Native.Vendor

{-| The detected prefix string.

    displayValue : String
    displayValue =
        if Vendor.prefix == "webkit"
        then "-webkit-flex"
        else "flex"
-}
prefix : String
prefix = Native.Vendor.prefix
