resources :lean_canvas_items, only: [:index, :create, :update, :destroy] do
  collection do
    get :lean_canvas
  end
end
