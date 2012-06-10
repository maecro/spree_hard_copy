module Spree::HardCopy; end

module SpreeHardCopy
  class Engine < Rails::Engine
    engine_name 'spree_hard_copy'
    #isolate_namespace Spree

    config.autoload_paths += %W(#{config.root}/lib)

    # Precompile assets
    initializer "spree_hard_copy.assets.precompile", :after => "spree.assets.precompile" do |app|
      app.config.assets.precompile += [ "store/spree_hard_copy.css", "store/html-receipt.css", "store/html-invoice.css" ]
    end

    # Load the configuration file
    initializer "spree.spree_hard_copy.preferences", :after => "spree.environment" do |app|
      Spree::HardCopy::Config = Spree::HardCopyConfiguration.new
    end

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
      Dir.glob(File.join(File.dirname(__FILE__), '../../../app/overrides/*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
