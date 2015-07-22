class ReposController < ApplicationController
  def display
    response = GithubApi.get "/users/jamesdabbs/repos"
    @repositories = response.map { |r| r.values_at("name", "updated_at", "description") }
  end
end