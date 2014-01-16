require 'spec_helper'

describe PetsController do
  let!(:max) { Pet.create(name: "Max") }
  describe "GET 'index'" do
    it "is successful" do
      get :index
      expect(response).to be_successful
    end
    
    it "assigns @pets" do
      get :index
      expect(assigns(:pets)).to include max
    end
    
  end
  
  describe "GET 'show'" do
    it "is successful" do
      get :show, id: max.id
      expect(response).to be_successful
    end
    
    it "assigns @pet" do
      get :show, id: max.id
      expect(assigns(:pet)).to be_an_instance_of Pet
    end
  end
end
