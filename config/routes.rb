Rails.application.routes.draw do
  
  namespace :api do 
    namespace :v1 do
      post 'shorturls', to: 'short_urls#create'
      get 'longurls/:short_url', to: 'long_urls#show'
    end
  end
end
