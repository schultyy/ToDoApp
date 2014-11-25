require 'lotus'

module ToDoApp
  class Application < Lotus::Application
    configure do
      routes do
        get '/', to: 'home#index'
        get "/tasks/input", to: "tasks#input"
        post "/tasks/task", to: "tasks#task"
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
