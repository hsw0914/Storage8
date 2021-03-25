jQuery(function ($) {
    $(document).on('click', '.inset', function (e) {
        e.preventDefault();
        var link = $(this).attr('href')
        if (confirm("내부 인원에게 공유하시겠습니까?")) {
            location.href = link;
        }
    })

    var $checkAll = $('#check')
    var $checkList = $('[name = "name[]"]')
    $checkAll.on('change', function () {
        $checkList.prop('checked', this.checked)
    })

    $checkList.on('change', function () {
        var check = $checkList.length === $checkList.filter(':checked').length
        $checkAll.prop('checked', check)
    })

    var $checkAll_ = $('#check_')
    var $checkList_ = $('[name = "namee[]"]')
    $checkAll_.on('change', function () {
        $checkList_.prop('checked', this.checked)
    })
    $checkList_.on('change', function () {
        var check_ = $checkList_.length === $checkList_.filter(':checked').length
        $checkAll_.prop('checked', check_)
    })

    $('.openShareModal').on('click', function () {
        var self = $(this);
        var modal = $('#shareModal');
        modal.modal();

        $.post('/app/ajax/getShareContent.php', {'content-index': self.data('target')}, function (result) {
            var data = JSON.parse(result);
            console.log(data);
            if (data !== false) {
                $('#share-link').val("localhost/?q=" + data.Outsrc);
            }
        });
    });

    var fileTarget = $('.form-group .upload-hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }

        console.log($(this).siblings('.upload-name'))

        $(this).siblings('.upload-name').html(filename);
    });

    $(Document).on('click', '.file_', function (e) {
        e.preventDefault();
        $(this).children().children('.func').slideToggle(100)
    })
})