require 'todo_list'

RSpec.describe TodoList do
  context "constructs" do
    it 'returns an empty list' do
      todo_list = TodoList.new
      expect(todo_list.see_incomplete).to eq []
      expect(todo_list.see_complete).to eq []
    end
  end
end