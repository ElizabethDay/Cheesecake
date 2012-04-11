require 'spec_helper'

describe "Recipes" do
  describe "GET /recipes" do
    it "works!" do
      get recipes_path
      response.status.should be(200)
    end
  end
end
