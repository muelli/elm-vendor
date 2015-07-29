
## elm-vendor
A tiny module to detect the vendor prefix string.

### usage

```elm
import Vendor

displayValue : String
displayValue =
    if Vendor.prefix == "webkit"
    then "-webkit-flex"
    else "flex"
```

And that's all there is to it.
