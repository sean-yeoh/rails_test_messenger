Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
