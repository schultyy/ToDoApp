module ToDoApp
  module Controllers
    module Home
      class Delete
        include Lotus::Action

        def call(params)
          task = ToDoApp::Repositories::TaskRepository.find(params[:task_id])
          ToDoApp::Repositories::TaskRepository.delete(task)

          redirect_to '/'
        end

      end
    end
  end
end
