require "rails_helper"

RSpec.describe IdeasController, type: :controller do
  let(:idea) { Idea.create(title: "Title", body: "Body", quality: "Swill") }

  describe "GET index" do
    it "renders the index" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET show" do
  #   it "returns http success" do
  #     get :show, id: idea.id
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end
