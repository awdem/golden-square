require 'contact_list'

RSpec.describe ContactList do
  it 'constructs' do
    contact_list = ContactList.new
    contact_list.list => []        
  end
end