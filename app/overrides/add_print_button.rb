Deface::Override.new(:virtual_path => "spree/orders/show",
                     :insert_bottom => "[data-hook='links']",
                     :partial => "spree/orders/html_buttons",
                     :name => "print_invoice")
