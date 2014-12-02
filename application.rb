require 'lotus'

module ToDoApp
  class Application < Lotus::Application
    configure do
      routes do
        get '/', to: 'home#index'
        post '/', to: 'home#index'
        get '/impressum', to: 'imprint#page'
      end

      load_paths << [
        'controllers',
        'models',
        'views'
      ]
      layout :application
    end

    load!
  end
end
