Rails.application.routes.draw do
  resource :dashboard, only: :show
end
