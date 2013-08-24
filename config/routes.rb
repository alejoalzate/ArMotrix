Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :cost_centers


  resources :cash_receipts


  resources :suppliers


  resources :spares


  resources :labors


  resources :work_orders


  resources :mechanicals


  resources :sale_by_cost_centers


  resources :form_of_payments


  resources :banks


  resources :shoppings


  resources :history_of_vehicles


  resources :account_receivables


  resources :account_payables


  resources :customers


  resources :profiles


  resources :documents


  authenticated :user do
    root :to => 'home#admin'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  

end