module ToDoApp
  module Controllers
    module Home
      class Index
        include Lotus::Action

        expose :tasks

        def call(params)
          new_task = ToDoApp::Models::Task.new({name: params[:task]})
          #if !new_task.name.nil? && !new_task.name.strip.empty?
          unless new_task.name.nil? || new_task.name.strip.empty?
            ToDoApp::Repositories::TaskRepository.create(new_task)
          end

          @tasks = ToDoApp::Repositories::TaskRepository.all
        end

      end
    end
  end
end
