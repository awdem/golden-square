require "todo_list"


RSpec.describe TodoList do
  context "given an empty list" do
    it "returns 'list is empty'" do
      todo_list = TodoList.new
      expect(todo_list.see_list).to eq "list is empty!"
    end
  end
  
  describe "#add_todo" do
    context "given a todo " do
      it "returns a list with that todo" do
        todo_list = TodoList.new
        todo_list.add_todo('Walk the dog')
        expect(todo_list.see_list).to eq "- Walk the dog" 
      end
    end

    context "given multiple todos" do
      it "returns a list of those todos" do
        todo_list = TodoList.new
        todo_list.add_todo('Walk the dog')
        todo_list.add_todo('Go to the shop')
        expect(todo_list.see_list).to eq "- Walk the dog\n- Go to the shop"
      end
    end

    context "given a task that is an empty string" do
      it "fails with 'No text in todo!'" do
        todo_list = TodoList.new
        expect {todo_list.add_todo('') }.to raise_error 'No text in todo!'
      end
    end


  end

end 