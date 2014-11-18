module ToDoApp
  module Controllers
    module Home
      include ToDoApp::Controller

      action 'Index' do
        expose :name

        def call(params)
          @name = params[:name]
        end
      end
    end
  end
end
