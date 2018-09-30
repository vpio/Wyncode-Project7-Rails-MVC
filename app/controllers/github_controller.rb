class GithubController < ApplicationController
  def index
    username = params[:username]
    @profile = HTTParty.get("https://api.github.com/users/#{username}").parsed_response
  end
end
