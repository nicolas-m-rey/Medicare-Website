Rails.application.routes.draw do
  resources :medicare_websites
  root to: "medicare_websites#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Medicare Resources Drop Down Menu Section
  get "medicare_resources", to: "medicare_resources#index"
  get "mr_menu_two", to: "medicare_resources#mr_menu_two"
  get "mr_menu_three", to: "medicare_resources#mr_menu_three"
  get "mr_menu_four", to: "medicare_resources#mr_menu_four"
  get "mr_menu_five", to: "medicare_resources#mr_menu_five"
  get "mr_menu_six", to: "medicare_resources#mr_menu_six"
  get "mr_menu_seven", to: "medicare_resources#mr_menu_seven"

  # Medicare Options Drop Down Menu Section
  get "medicare_options", to: "medicare_options#index"
  get "mo_menu_two", to: "medicare_options#mo_menu_two"
  get "mo_menu_three", to: "medicare_options#mo_menu_three"
  get "mo_menu_four", to: "medicare_options#mo_menu_four"
  get "mo_menu_five", to: "medicare_options#mo_menu_five"

  # Dental & Vision Drop Down Menu Section
  get "dental_vision", to: "dental_vision#index"
  get "dv_menu_two", to: "dental_vision#dv_menu_two"

  # Cancer & Hospital Indemnity Drop Down Menu Section
  get "cancer_hospital", to: "cancer_hospital#index"
  get "ch_menu_two", to: "cancer_hospital#ch_menu_two"

  # Request A Quote Drop Down Menu Section
  get "quote", to: "quote#index"

end
