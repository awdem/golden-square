require 'todo'

RSpec.describe Todo do
  context "initially" do
    it "constructs" do
      todo = Todo.new("Wash the car")
      expect(todo.task).to eq "Wash the car"
    end
  end
  
  context "when marking an incomplete task done" do
    it "shows up as done" do
      todo = Todo.new("Wash the car")
      todo.mark_done!
      expect(todo.done?).to eq true
    end
  end

  context "when marking a complete task done" do
    it "fails" do
      todo = Todo.new("Wash the car")
      todo.mark_done!
      expect {todo.mark_done!}.to raise_error "task is already marked complete"
    end
  end
  
end