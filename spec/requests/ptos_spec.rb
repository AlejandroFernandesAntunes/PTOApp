require 'rails_helper'

RSpec.describe "Ptos", :type => :request do
  describe "GET /ptos" do
    it "works! (now write some real specs)" do
      get ptos_path
      expect(response).to have_http_status(200)
    end
  end
end
