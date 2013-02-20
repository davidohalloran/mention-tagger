Rails.application.routes.draw do
  get "home/index"

  root :to => 'home#index', :via => [:get, :post]
  mount MentionTagger::Engine => "/mention-tagger"
end
