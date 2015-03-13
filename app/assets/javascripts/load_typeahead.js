$(document).ready(function() {
	$('#search').typeahead({
		hint: true,
		highlight: true,
		minLength: 1,
		source: function (menu, process) {
			$.getJSON('/search_menu_items', { query: menu }, function (data) {
					process(data);
			});
			}
		});
})
