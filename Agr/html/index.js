$(function () {
    function display(bool) {
        if (bool) {
            $(".container").show();
        } else {
            $(".container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "dfgdfgdfgdfgdfg") {
            if (item.status == true) {
                display(true)
                $("#Agr").text(item.Test);
            } else {
                display(false)
            }
        }
    })

    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('https://Agr/exit', JSON.stringify({}));
            return
        }
    };

});
