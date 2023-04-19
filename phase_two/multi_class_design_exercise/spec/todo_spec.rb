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
      todo.mark_complete!
      expect(todo.done?).to eq true
    end
  end

  context "when marking a complete task done" do
    it "fails" do
      todo = Todo.new("Wash the car")
      todo.mark_complete!
      expect {todo.mark_complete!}.to raise_error "task is already marked complete"
    end
  end

  describe "#task_with_status" do
    it "returns task and completions status" do
      todo = Todo.new("task")
      expect(todo.task_with_status).to include(:incomplete => "task")
    end
  end
  
end