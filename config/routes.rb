Aiia::Engine.routes.draw do
  get '/splash', to: "endpoint#splash"
  get '/webhook', to: "endpoint#webhook"
  get '/callback' to: "endpoint#callback"
  root to: "endpoint#splash"
end
