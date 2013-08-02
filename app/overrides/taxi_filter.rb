Deface::Override.new(:virtual_path => "spree/taxons/show",
  :name => "taxi_filter",
  :replace_contents => "[data-hook='taxon_sidebar_navigation']",
  :text => "<%= render :partial => 'spree/shared/taxonomies' %>"  
)
