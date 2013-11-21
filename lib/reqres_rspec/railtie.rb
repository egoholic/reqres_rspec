#if defined?(Rake.application) && Rake.application.top_level_tasks.grep(/^(reqres_rspec(:|$))/).any?
#  ENV['RAILS_ENV'] ||= 'test'
#  Rails.env = ENV['RAILS_ENV'] # don't know why but setting ENV['RAILS_ENV'] is not enough
#end

module Rails
  class ReqresRspecRailtie < Rails::Railtie
    rake_tasks do
      load 'tasks/reqres_rspec.rake'
    end
  end
end