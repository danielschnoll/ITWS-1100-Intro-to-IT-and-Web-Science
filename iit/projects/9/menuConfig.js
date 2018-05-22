$(document).ready(function() {
    $.ajax({
        type: "GET",
        url: "projects/9/lab9jsontemplate.json",
        dataType: "json",
        success: function(responseData, status) {
            output = "";
            $.each(responseData.menuItem, function(i, item) {
                output += '<a href=' + item.menuURL + '>' + item.menuName + '</a>';
            });
            $('.dropdown-content').append(output);
        },
        error: function(msg) {
            alert("There was a problem: " + msg.status + " " + msg.statusText);
        }
    });
});