Rails.application.routes.draw do
  get "home/index"

  post 'signup', to: 'members#signup'

  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # TODO: 레일즈가 root 액션을 posts controller의 index액션과 연결하는 것을 의미
  root :to => "home#index"
end