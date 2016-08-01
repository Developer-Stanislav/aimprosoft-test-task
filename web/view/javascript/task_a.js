function js_asort(obj, sort_order) {
    var result = { };
    sort_rec(obj);
    function sort_rec(obj) {
        var value = '';
        var key = '';
        for (var item in obj) {
            if (value == '' || ((typeof sort_order == 'undefined' || sort_order == false || sort_order == 'ASC' ) && value > obj[item]) || ((sort_order == true || sort_order == 'DESC' ) && value < obj[item])) {
                value = obj[item];
                key = item;
            }
        }
        if (value != '' && key != '') {
            result[key] = value;
            delete obj[key];
            sort_rec(obj);
        }
    }
    return result;
}