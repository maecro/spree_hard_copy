Deface::Override.new(:virtual_path => "spree/orders/show",
                     :insert_bottom => "[data-hook='links']",
                     :text => "<%= link_to 'Print Invoice', '/invoice/#{@order}', :class => 'button' %>",
                     :name => "print_invoice")
