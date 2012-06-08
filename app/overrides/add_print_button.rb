Deface::Override.new(:virtual_path => "spree/orders/show",
                     :insert_bottom => "[data-hook='links']",
                     :partial => "spree/admin/orders/html_buttons",
                     :name => "print_invoice")
