require 'todo_list'
require 'todo'

RSpec.describe "todo integration" do
  context "when new todos are added" do
    it "lists new todos as incomplete" do
      todo_list = TodoList.new
      todo1 = Todo.new("Wash the car")
      todo_list.add(todo1)
      expect(todo_list.incomplete).to eq [todo1]
    end 

    it "fails if todo is already on the list" do
      todo_list = TodoList.new
      todo1 = Todo.new("Wash the car")
      todo_list.add(todo1)
      expect { todo_list.add(todo1)}.to raise_error "Task is already on the list."
    end
  end

  context "when todos are marked complete" do
    it "lists them as complete" do
      todo_list = TodoList.new
      todo1 = Todo.new("Wash the car")
      todo_list.add(todo1)
      todo1.mark_done!
      expect(todo_list.complete).to eq [todo1]      
    end
  end

  context "given multiple tasks" do
    it "sorts them into complete or incomplete" do
      todo_list = TodoList.new
      todo1 = Todo.new("Wash the car")
      todo2 = Todo.new("Pet the cat")
      todo3 = Todo.new("Walk the dog")
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      todo1.mark_done!
      expect(todo_list.complete).to eq [todo1]      
      expect(todo_list.incomplete).to eq [todo2, todo3]      
    end
  end

  describe "give up behavior" do
    context "given a list of incomplete tasks" do
      it "marks all tasks as complete" do
        todo_list = TodoList.new
        todo1 = Todo.new("Wash the car")
        todo2 = Todo.new("Pet the cat")
        todo_list.add(todo1)
        todo_list.add(todo2)
        todo_list.give_up!
        expect(todo_list.complete).to eq [todo1, todo2]          
      end
    end  

    context "given a list of mixed tasks" do
      it "marks all incomplete tasks as complete" do
        todo_list = TodoList.new
        todo1 = Todo.new("Wash the car")
        todo2 = Todo.new("Pet the cat")
        todo_list.add(todo1)
        todo_list.add(todo2)
        todo1.mark_done!
        todo_list.give_up!
        expect(todo_list.complete).to eq [todo1, todo2]          
      end
    end  

    context "given a list of completed tasks" do
      it "fails" do
        todo_list = TodoList.new
        todo1 = Todo.new("Wash the car")
        todo_list.add(todo1)
        todo1.mark_done!
        expect{ todo_list.give_up! }.to raise_error "All tasks are already completed."
      end
    end  
  end

end