MaskmeMini::Application.routes.draw do
  get 'pricing', :controller => 'home', :action => 'pricing'
  get 'portfolio', :controller => 'home', :action => 'portfolio'
  get 'features', :controller => 'home', :action => 'features'
  get 'faq', :controller => 'home', :action => 'faq'
  get 'contact', :controller => 'home', :action => 'contact'
  get 'about', :controller => 'home', :action => 'about'
  get "dashboard", :controller => "dashboard", :action => "index"
  root :to => "home#index"
  get "home/contact"
  get "home/faq"
  get "home/features"
  get "home/portfolio"
  get "home/pricing"
  get "home/about"
  devise_for :users
end
