module HydraAttribute
  class Railtie < Rails::Railtie
    initializer 'hydra_attribute.active_record' do
      ActiveSupport.on_load :active_record do
        ::ActiveRecord::Migration.send(:include, ::HydraAttribute::ActiveRecord::Migration)
      end
    end
  end
end