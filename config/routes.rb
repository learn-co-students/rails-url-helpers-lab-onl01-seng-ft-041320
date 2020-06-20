Rails.application.routes.draw do
  resources :students, only: :index #, as:'students'
  resources :students, only: :show #, as:'student'
  get 'students/:id/activate', to: 'students#activate', as:'activate-student'
end

