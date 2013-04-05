VmplusServer::Application.routes.draw do
  resources :credit_card_terminals


  resources :credit_transactions

  get "credit_transactions/charge_card"


end
