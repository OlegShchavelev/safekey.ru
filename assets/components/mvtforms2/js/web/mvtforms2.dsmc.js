$(document).ready(function ($) {

    mvtForms2.callbacks.success = function(response) {
        Notiflix.Notify.Success(response.data.answer);
        $('#' + response.form + '_form').trigger('reset');
        $('#' + response.form + '_form .form-success').removeClass('d-none');
    };

    mvtForms2.callbacks.error = function(response) {
        Notiflix.Notify.Failure(response.data.message);
    };

    $(document).on('keypress change', '.is-invalid', function() {
         var key = $(this).attr('name');
         $(this).removeClass('is-invalid');
       });
});