Deface::Override.new(:virtual_path => "spree/products/show",
  :name => "color_chart",
  :insert_after => "[data-hook='description']",
  :text => "<%= show_color_chart %>" )
