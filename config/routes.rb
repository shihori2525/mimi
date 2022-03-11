Rails.application.routes.draw do
  root to: 'public/homes#top'

  devise_for :members, skip: [:passwords], controllers: {
    registrations: 'public/registrations',
    sessions: 'public/sessions'
  }

  # 会員側のurl変更
  scope module: 'public' do
    resources :members, only: %i[show edit update] do
      resource :relationships, only: %i[create destroy]
      get :followings, on: :member
      get :followers, on: :member

      # 投稿・商品のいいね一覧
      member do
        get :post_favorites
        get :item_favorites
      end
    end

    resources :posts do
      resource :post_favorites, only: %i[create destroy]

      resources :post_comments, only: %i[create destroy]
    end

    resources :items, only: [:show] do
      resource :item_favorites, only: %i[create destroy]
      get 'sort_item_post' => 'items#sort_item_post'
    end

    resources :brands, only: %i[show index]

    resources :categories, only: %i[show index]

    get 'search' => 'searches#search'
    get 'sort' => 'posts#sort'
  end

  namespace :admin do
    root to: 'homes#top'
  end

  devise_for :admins, skip: %i[registrations passwords], controllers: {
    sessions: 'admin/sessions'
  }

  namespace :admin do
    resources :items
    resources :brands
    resources :categories
    get 'search' => 'searches#search'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
