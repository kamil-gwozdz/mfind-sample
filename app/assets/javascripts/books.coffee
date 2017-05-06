$(document).ready ->
  $('#checkout-log').DataTable()
  $('#books').DataTable 'columnDefs': [ {
    'orderable': false
    'targets': 3
  } ]

@borrow = (id, e) ->
  if !$(e).is(':disabled')
    $(e).attr 'disabled', 'disabled'
    window.location = '/books/' + id + '/borrow'
