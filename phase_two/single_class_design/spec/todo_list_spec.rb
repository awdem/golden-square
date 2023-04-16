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

  describe "#complete" do

    context "given an empty string" do
      it "fails with 'No text in todo!'" do
        todo_list = TodoList.new
        expect { todo_list.complete('') }.to raise_error 'No text in todo!'
      end
    end

    context "given one todo on todo list" do
      it "removes the todo from the list" do
        todo_list = TodoList.new
        todo_list.add_todo('Walk the dog')
        todo_list.complete('Walk the dog')
        expect(todo_list.see_list).to eq "list is empty!"
      end

      it "returns 'Not on the list!' if given a different todo" do
        todo_list = TodoList.new
        todo_list.add_todo('Walk the dog')
        expect(todo_list.complete('Make lunch')).to eq 'Not on the list!'
      end
      
    end

    context "given a multi-line todo list" do
      it "maintains format" do
        todo_list = TodoList.new
        todo_list.add_todo('Walk the dog')
        todo_list.add_todo('Make lunch')
        todo_list.add_todo('Go to the shop')
        todo_list.complete('Make lunch')
        expect(todo_list.see_list).to eq "- Walk the dog\n- Go to the shop"
      end
    end

  end

end 