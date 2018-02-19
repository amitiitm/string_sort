require 'rails_helper'

RSpec.describe HomeController, type: :request do
	describe "POST /home/sort_string" do
    it "Sorts String based on unique occurence of words." do
      post_params = {
        q: 'aa bb cc dd aa dd dd'
      }
      post "/home/sort_string",
          params: post_params
      expect(response).to have_http_status(200)
    end

    it "validates if no string is passed then return blank hash." do
      post_params = {
        q: ''
      }
      post "/home/sort_string",
          params: post_params
      expect(response).to have_http_status(200)
    end
  end
end
