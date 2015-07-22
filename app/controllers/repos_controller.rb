class ReposController < ApplicationController
  def display
    @repositories = GithubApi.new.repositories_for_user params[:username]
  end
end