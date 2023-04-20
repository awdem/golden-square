require 'cat_facts'

RSpec.describe CatFacts do
  it "gets a cat fact and returns it" do
    requester = double :requester
    expect(requester).to receive(:get)
      .with(URI("https://catfact.ninja/fact"))
      .and_return('{"fact":"Cats have 30 vertebrae (humans have 33 vertebrae during early development; 26 after the sacral and coccygeal regions fuse)","length":122}')
    
      cat_facts = CatFacts.new(requester)
    
    expect(cat_facts.provide).to eq "Cat fact: Cats have 30 vertebrae (humans have 33 vertebrae during early development; 26 after the sacral and coccygeal regions fuse)"
  end
end