module Spree
  class HardCopyConfiguration < Preferences::Configuration
    preference :html_invoice_logo_path, :string
    preference :html_receipt_logo_path, :string
    preference :print_buttons, :string
    preference :suppress_anonymous_address, :boolean, :default => true
  end
end
