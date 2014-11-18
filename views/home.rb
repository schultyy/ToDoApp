module ToDoApp
  module Views
    module Home
      class Index
        include ToDoApp::View

        def greeting
          if name
            "Hallo #{name}!"
          else
            "Hallo Unbekannter!"
          end
        end

      end
    end
  end
end
