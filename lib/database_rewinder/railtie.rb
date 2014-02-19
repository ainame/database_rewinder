module DatabaseRewinder
  class Railtie < ::Rails::Railtie
    initializer 'database_rewinder', after: 'active_record.initialize_database' do
      DatabaseRewinder::Hooks.init(Rails.root)
    end
  end
end
