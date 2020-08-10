import TableFilter from 'tablefilter';

var filtersConfig = {
        // base_path: 'tablefilter/',
        auto_filter: {
            delay: 300 //milliseconds
        },
        filters_row_index: 1,
        state: true,
        alternate_rows: true,
    };
    var tf = new TableFilter('inventory', filtersConfig);
    tf.init();