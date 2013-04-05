VmplusServer::Application.routes.draw do
  resources :credit_card_terminals


  match "credit_transactions/charge_card" => "credit_transactions#charge_card"
  resources :credit_transactions

  get "credit_transactions/charge_card"


end
