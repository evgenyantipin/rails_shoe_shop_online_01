jQuery(document).on('turbolinks:load', function() {
  jQuery('.update-product').on('change', function() {
    var item_id = jQuery(this).data('id');
    var item_quantity = jQuery(this).val();

    jQuery.ajax({
      method: 'PATCH',
      url: '/cart_items/' + item_id,
      data: {id: item_id, cart_item: {quantity: item_quantity}},
      dataType: 'json',
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      },
      success: function(response) {
        if (response.status == 'success') {
          $('#price_item-' + item_id).text(response.price);
          $('#total_price_cart').text(response.total_price);
        }
      }
    });
  });
});
