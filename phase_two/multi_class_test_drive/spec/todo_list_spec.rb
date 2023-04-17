require 'todo_list'

RSpec.describe TodoList do
  context "constructs" do
    it 'returns an empty list' do
      todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []
      expect(todo_list.complete).to eq []
    end
  end
end