Rails.application.routes.draw do

resources :moussaillons

root"moussaillon#index"

get "moussaillon/new"

get "moussaillon/edit"

get "moussaillon/show"

end
