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

  describe "create" do

    context "with a valid todo item input"
      it "creates a new todo item" do
        post :create, :todo_item => {:name => "Buy milk"}
        item = TodoItem.last
        expect(assigns(:todo_item)).to eq item
      end

    context "without a valid todo item input"
      it "redirects to the page to create a new todo item" do
        get :create
        expect(response).to be_success
        expect(response.status).to eq 200
      end

  end

  # describe ".update" do

  # end

  describe "destroy" do
    it "deletes a selected todo item" do
      todo1 = TodoItem.create(:name => "Laundry")
      delete :destroy, :todo_item => {:name => "Laundry"}
      expect(todo1).to be_not_found
    end
  end



end