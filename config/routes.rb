Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get  "/about", to: "static_pages#about"
    get  "/contact", to: "static_pages#contact"
    get "/cart", to:"carts#view_cart"
    get "/payment", to:"carts#payment"
    get "/bill", to:"carts#bill"
    resources :shoes
  end
end
