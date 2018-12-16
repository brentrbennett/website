// https://wakirin.github.io/Lightpick/#usage

var picker = new Lightpick({
    field: document.getElementById('calendar'),
    singleDate: false,
    onSelect: function(start, end){
        var str = '';
        str += start ? start.format('Do MMMM YYYY') + ' to ' : '';
        str += end ? end.format('Do MMMM YYYY') : '...';
    }
});