require_relative '../spec_helper'

describe TodoItem do

  it "has a name" do
    todo = TodoItem.new(:name => "Milk the cow")
    expect(todo.name).to eq "Milk the cow"
  end

  it "is not completed" do
    todo = TodoItem.new(:completed => false)
    expect(todo.completed).to be_false
  end

  it "is not deleted" do
    todo = TodoItem.new(:deleted => false)
    expect(todo.deleted).to be_false
  end

end
