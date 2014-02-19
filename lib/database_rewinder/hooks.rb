module DatabaseRewinder
  class Hooks
    def self.init(root_path)
      ActiveSupport.on_load :active_record do
        DatabaseRewinder.init(root_path)
        require_relative 'active_record_monkey'
      end
    end
  end
end
