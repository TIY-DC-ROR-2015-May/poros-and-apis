class GithubApi
  include HTTParty
  base_uri "https://api.github.com"

  def repositories_for_user username
    data = self.class.get("/users/#{username}/repos")
    data.map { |h| Repository.new(h["name"], h["description"], h["updated_at"]) }
  end
end