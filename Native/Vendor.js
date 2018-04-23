
var _coreytrampe$elm_vendor$Native_Vendor = function(elm) {

    try {
        //  http://davidwalsh.name/vendor-prefix
        var styles = window.getComputedStyle(document.documentElement, '');
    } catch (err) {
        var styles = "";
    }
    var vendorPrefix = (Array.prototype.slice
        .call(styles)
        .join('')
        .match(/-(moz|webkit|ms)-/) || (styles.OLink === '' && ['', 'o'])
    )[1];

    return  { prefix: vendorPrefix };
}();
