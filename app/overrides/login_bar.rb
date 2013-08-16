Deface::Override.new(:virtual_path => "spree/shared/_login_bar",
  :name => "login_bar",
  :insert_after => "code[erb-silent]:contains('if spree_current_user')",
  :text => "<li><%= t(:logged_in_as) %>: <%= spree_current_user.email %></li>"  
)
