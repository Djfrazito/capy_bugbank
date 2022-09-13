require 'capybara'
require 'capybara/cucumber'
require 'report_builder'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #roda no navegador
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
    config.default_max_wait_time = 8
    config.app_host = 'https://bugbank.netlify.app' #url padrão
end