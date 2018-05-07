require 'rails_helper'

describe EquilibriumController do
  describe 'GET new' do
    before { get :new }

    it "is expected to render new form" do
      expect(response).to render_template(:new)
    end
  end

  describe 'POST create' do
    before { post :create, params: { equilibrium: { array_string: "-7, 1, 5, 2, -4, 3, 0" } } }

    it "is expected to redirect to another page" do
      expect(response).to render_template(:create)
    end

    it "is expected to set an answer variable" do
      expect(assigns(:ans)).to be_instance_of(Array)
    end
  end
end

