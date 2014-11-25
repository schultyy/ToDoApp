module ToDoApp
  module Controllers
    module Tasks
      include ToDoApp::Controller

      action 'Input' do

        def call(params)
        end
      end

      action 'Task' do
        expose :aufgaben

        def call(params)
          @aufgaben = params[:task]
        end
      end
    end
  end
end

#tasks.rb:13: syntax error, unexpected ':', expecting keyword_end