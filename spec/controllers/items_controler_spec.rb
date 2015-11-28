require 'rails_helper'

RSpec.describe ItemsController do

  describe "GET #index" do

    it "Shows the list of objects" do

      # Create items and get index.
      item = FactoryGirl.create(:item)
      item1 = FactoryGirl.create(:item)
      get :index

      expect(response).to render_template(:index)
      expect(assigns(:items).length).to eq(4)
    end
  end

  describe "GET #show" do

    it "Shows item detail" do
      # Create item and make request.
      item = FactoryGirl.create(:item)
      get :show, id: item.id

      # Test response and context.
      expect(response).to render_template(:show)
      expect(assigns(:item).title).to eq(item.title)
    end

  end

  describe "POST #create" do

    it "Should create a new item" do
      @user = FactoryGirl.create(:user)
      sign_in @user

      post :create, { item: {
          title: 'Lorem ipsum',
          description: 'Lorem ipsum',
          status: 'found'
        }
      }

      expect(response).to redirect_to(item_url(assigns(:item)))
    end
  end

end
