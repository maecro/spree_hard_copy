Deface::Override.new(:virtual_path => "spree/orders/show",
                     :name => "add_print_button",
                     :insert_after => "[data-hook='links']",
                     :text => "<%= link_to 'Print Invoice', '/', :class => 'button' %>",
                     :disabled => false)
