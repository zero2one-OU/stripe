Rails.application.routes.draw do
  mount Stripe::Engine => "/stripe"
end
