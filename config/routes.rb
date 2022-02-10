Rails.application.routes.draw do

  root to: "public/homes#top"

  devise_for :members,skip: [:passwords,],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

#会員側のurl変更
scope module: 'public' do
  resources :members,only: [:sohw,:edit,:update] do
    resource :relationships,only:[:create,:destroy]
     get :followings,on: :member
     get :followers,on: :member
    member do
      get :post_favorites
      get :item_favorites
    end
  end

  resources :posts do
    resources :post_comments,only:[:create,:destroy]
  end


end


  devise_for :admins,skip: [:registrations, :passwords],controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
