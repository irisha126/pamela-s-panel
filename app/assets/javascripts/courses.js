// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function () {
    if (document.querySelector('body.courses.index') == undefined) {
        return;
    }


    // $('.delete-todo').click(function (e) {
    // 	e.preventDefault();
    // 	let deletionUrl = e.target.getAttribute('href');

    // 	$.ajax({
    // 		method: 'DELETE',
    // 		url: deletionUrl,
    // 		success: function (data) {
    // 			$(e.target).parents('.main-todo').remove();
    // 			toastr.success('Your todo has been successfully deleted');
    // 		}
    // 	});
    // });


    $('.delete-thing').on('ajax:success', function (e) {
        $(e.target).parents('.to-remove').remove();
        toastr.success('Your todo has been successfully deleted');
    });
});
