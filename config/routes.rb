Rails.application.routes.draw do
  get '/gh/:username' => 'repos#display'
end
