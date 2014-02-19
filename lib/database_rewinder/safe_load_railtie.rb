require 'database_rewinder/hooks'

begin
  require 'rails'
rescue LoadError
  # do nothing
end

# if not using Railtie, call `DatabaseRewinder::Hooks.init` directly
if defined? Rails
  require 'database_rewinder/railtie'
end
