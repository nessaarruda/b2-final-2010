Rails.application.routes.draw do
  resources :competitions, only: [:index, :show]
  #   resources :teams, controller: 'competition/teams'
  # end
  post 'competitions/:competition_id/teams/:id', to: 'competition_teams#create'
end
