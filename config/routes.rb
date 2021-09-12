Aiia::Engine.routes.draw do
  resources :payments
		member do
			post "pay"
		end
	end
  get '/splash', to: "endpoint#splash"
  get '/webhook', to: "endpoint#webhook"
  get '/callback', to: "endpoint#callback"
  root to: "endpoint#splash"
end
