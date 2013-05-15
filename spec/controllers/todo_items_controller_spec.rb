require 'spec_helper'

describe TodoItemsController do

  describe "index" do

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq 200
    end

    it "loads all of the todo items into @todoitems" do
      todo1 = TodoItem.create(:name => "Laundry")
      todo2 = TodoItem.create(:name => "Dishes")
      get :index
      expect(assigns(:todo_items).size).to eq 2
      expect(assigns(:todo_items)).to include todo1
      expect(assigns(:todo_items)).to include todo1
    end

  end



end