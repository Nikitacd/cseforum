Rails.application.routes.draw do
  devise_for :users
  #get 'pages/home'
  root 'pages#home'
  get 'about' =>"pages#about"
  get 'dashboard' =>"questions#dashboard"
  get 'question_page' =>"pages#question"
  get 'list'  =>"pages#list"
  get 'inc_likes', to: "answers#inc_likes"
  get 'inc_dislike', to: "answers#inc_dislike"


  resources :questions do

  resources :answers
end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
