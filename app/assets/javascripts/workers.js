$(document).ready(function() {

	$('.finish-task').click(function(e) {
		e.preventDefault();
		if (confirm('Tem certeza que deseja terminar esta atividade?')) {
			var taskUrl = $(this).attr("href");
			$.ajax({
				url: '/workers/' + $('#worker_id').val() + taskUrl,
				method: 'POST',
				success: function () {
					console.log("deu");
				}
			})
			$(this).parent().parent().removeClass('panel-primary');
			$(this).parent().parent().addClass('panel-success');	
		}
		
	})
})

