require 'yaml'

# ---
class Settings
  def self.configure_environment_path
    yaml_file_path   = "/config/#{ENVIRONMENT}.yaml"
    environment_path = YAML.load_file(File.dirname(__FILE__) + yaml_file_path)
    return environment_path
  end

  def self.generate_configurations
    config = configure_environment_path

    Capybara.configure do |config|
      config.default_driver = :selenium
    end

    Capybara.default_max_wait_time = 60
    Capybara.current_session.driver.browser.manage.window.maximize
    return config
  end

  def self.get_url(path)
    return "#{generate_configurations['url']}/#{path}"
  end
end
