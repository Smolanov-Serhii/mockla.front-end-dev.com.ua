document.addEventListener("DOMContentLoaded", function () {
    $('.category__group-input').change(applyFilters)
    $('#search').click(applyFilters)
    $('#reset_button').click(function () {
        showLoader();
        this.form.reset();

        let formData = new FormData(this.form);
        var url = new URL(this.form.action);

        var params = new URLSearchParams(url.search);


        for (var pair of formData.entries()) {
            params.set(pair[0], pair[1]);
        }
        $.get(this.form.action + '/?' + params.toString(), function (data, status) {
            $('.pagination').remove();
            $('#category_result')[0].outerHTML = data.view;
            hideLoader();
        })
    })

    $(document).on('click', '.pagination__link', function (e) {
        $('.pagination').remove();
        showLoader();
        e.preventDefault();
        var url = new URL(this.href);
        var params = new URLSearchParams(url.search);

        var form = $('#courses_filter')[0];
        let formData = new FormData(form);


        for (var pair of formData.entries()) {
            params.set(pair[0], pair[1]);
        }

        $.get(form.action + '/?' + params.toString(), function (data, status) {
            $('#category_result')[0].outerHTML = data.view;
            hideLoader();
        })
        return false;
    })
})

function applyFilters(e) {
    $('.pagination').remove();
    showLoader();
    e.preventDefault();

    let formData = new FormData(this.form);
    var url = new URL(this.form.action);

    var params = new URLSearchParams(url.search);


    for (var pair of formData.entries()) {
        params.set(pair[0], pair[1]);
    }

    $.get(this.form.action + '/?' + params.toString(), function (data, status) {
        if (data.status) {
            $('#category_result')[0].outerHTML = data.view;
            $( "#category_result" ).each(function() {
                var MacyResult = new Macy({
                    container: this,
                    trueOrder: true,
                    waitForImages: false,
                    useOwnImageLoader: false,
                    debug: true,
                    mobileFirst: true,
                    columns: 5,
                    margin: {
                        y: 40,
                        x: 20,
                    },
                    breakAt: {
                        1440: 6,
                        1200: 5,
                        940: 4,
                        768: 3,
                        500: {
                            margin: {
                                x: 20,
                                y: 40,
                            },
                            columns: 2
                        },
                        350: {
                            margin: {
                                x: 10,
                                y: 40,
                            },
                            columns: 2
                        },
                        300: {
                            margin: {
                                x: 10,
                                y: 40,
                            },
                            columns: 1
                        },
                    },
                });
            });
            hideLoader();
        }
    })

    return false;
}

function showLoader() {
//    сюда показать
}

function hideLoader() {
//   сюда убрать
}