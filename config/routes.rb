Rails.application.routes.draw do
  get "/stocks" => "stocks#index"
  get "/stocks/:name" => "stocks#show"
end
