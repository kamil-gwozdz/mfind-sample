$(document).ready ->
  $('#checkout-log').DataTable()
  $('#books').DataTable()

@borrow = (id, e) ->
  if !$(e).is(':disabled')
    $(e).attr 'disabled', 'disabled'
    window.location = '/books/' + id + '/borrow'
