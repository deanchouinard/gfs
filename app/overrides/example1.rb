Deface::Override.new(:virtual_path => "spree/products/show",
  :name => "example1",
  :insert_before => "div#cart-form",
  :text => "<%= render :partial => 'spree/products/volume_pricing', :locals => { :product => @product }%>" )

