jQuery(document).on('turbolinks:load', function() {
  jQuery('.update-product').on('change', function() {
    var item_id = jQuery(this).data('id');
    var item_quantity = jQuery(this).val();
    
    jQuery.ajax({
      method: 'PATCH',
      url: '/cart_items/' + item_id,
      data: {id: item_id, cart_item: {quantity: item_quantity}},
      dataType: 'json',
      success: function(data) {
        console.log(data);
      }
    });
  });
});
