require "rails_helper"

RSpec.describe PtosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ptos").to route_to("ptos#index")
    end

    it "routes to #new" do
      expect(:get => "/ptos/new").to route_to("ptos#new")
    end

    it "routes to #show" do
      expect(:get => "/ptos/1").to route_to("ptos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ptos/1/edit").to route_to("ptos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ptos").to route_to("ptos#create")
    end

    it "routes to #update" do
      expect(:put => "/ptos/1").to route_to("ptos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ptos/1").to route_to("ptos#destroy", :id => "1")
    end

  end
end
