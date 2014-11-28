Rails.application.routes.draw do
  devise_for :users
  # Routes for the Level resource:
  # CREATE
  get('/levels/new', { :controller => 'levels', :action => 'new' })
  get('/create_level', { :controller => 'levels', :action => 'create' })

  # READ
  get('/levels', { :controller => 'levels', :action => 'index' })
  get('/levels/:id', { :controller => 'levels', :action => 'show' })

  # UPDATE
  get('/levels/:id/edit', { :controller => 'levels', :action => 'edit' })
  get('/update_level/:id', { :controller => 'levels', :action => 'update' })

  # DELETE
  get('/delete_level/:id', { :controller => 'levels', :action => 'destroy' })
  #------------------------------

  # Routes for the Event_title resource:
  # CREATE
  get('/event_titles/new', { :controller => 'event_titles', :action => 'new' })
  get('/create_event_title', { :controller => 'event_titles', :action => 'create' })

  # READ
  get('/event_titles', { :controller => 'event_titles', :action => 'index' })
  get('/event_titles/:id', { :controller => 'event_titles', :action => 'show' })

  # UPDATE
  get('/event_titles/:id/edit', { :controller => 'event_titles', :action => 'edit' })
  get('/update_event_title/:id', { :controller => 'event_titles', :action => 'update' })

  # DELETE
  get('/delete_event_title/:id', { :controller => 'event_titles', :action => 'destroy' })
  #------------------------------

  # Routes for the School resource:
  # CREATE
  get('/schools/new', { :controller => 'schools', :action => 'new' })
  get('/create_school', { :controller => 'schools', :action => 'create' })

  # READ
  get('/schools', { :controller => 'schools', :action => 'index' })
  get('/schools/:id', { :controller => 'schools', :action => 'show' })

  # UPDATE
  get('/schools/:id/edit', { :controller => 'schools', :action => 'edit' })
  get('/update_school/:id', { :controller => 'schools', :action => 'update' })

  # DELETE
  get('/delete_school/:id', { :controller => 'schools', :action => 'destroy' })
  #------------------------------

  # Routes for the Gender resource:
  # CREATE
  get('/genders/new', { :controller => 'genders', :action => 'new' })
  get('/create_gender', { :controller => 'genders', :action => 'create' })

  # READ
  get('/genders', { :controller => 'genders', :action => 'index' })
  get('/genders/:id', { :controller => 'genders', :action => 'show' })

  # UPDATE
  get('/genders/:id/edit', { :controller => 'genders', :action => 'edit' })
  get('/update_gender/:id', { :controller => 'genders', :action => 'update' })

  # DELETE
  get('/delete_gender/:id', { :controller => 'genders', :action => 'destroy' })
  #------------------------------

  # Routes for the Sport resource:
  # CREATE
  get('/sports/new', { :controller => 'sports', :action => 'new' })
  get('/create_sport', { :controller => 'sports', :action => 'create' })

  # READ
  get('/sports', { :controller => 'sports', :action => 'index' })
  get('/sports/:id', { :controller => 'sports', :action => 'show' })

  # UPDATE
  get('/sports/:id/edit', { :controller => 'sports', :action => 'edit' })
  get('/update_sport/:id', { :controller => 'sports', :action => 'update' })

  # DELETE
  get('/delete_sport/:id', { :controller => 'sports', :action => 'destroy' })
  #------------------------------

  # Routes for the Location resource:
  # CREATE
  get('/locations/new', { :controller => 'locations', :action => 'new' })
  get('/create_location', { :controller => 'locations', :action => 'create' })

  # READ
  get('/locations', { :controller => 'locations', :action => 'index' })
  get('/locations/:id', { :controller => 'locations', :action => 'show' })

  # UPDATE
  get('/locations/:id/edit', { :controller => 'locations', :action => 'edit' })
  get('/update_location/:id', { :controller => 'locations', :action => 'update' })

  # DELETE
  get('/delete_location/:id', { :controller => 'locations', :action => 'destroy' })
  #------------------------------

  # Routes for the Photographer resource:
  # CREATE
  get('/photographers/new', { :controller => 'photographers', :action => 'new' })
  get('/create_photographer', { :controller => 'photographers', :action => 'create' })

  # READ
  get('/photographers', { :controller => 'photographers', :action => 'index' })
  get('/photographers/:id', { :controller => 'photographers', :action => 'show' })

  # UPDATE
  get('/photographers/:id/edit', { :controller => 'photographers', :action => 'edit' })
  get('/update_photographer/:id', { :controller => 'photographers', :action => 'update' })

  # DELETE
  get('/delete_photographer/:id', { :controller => 'photographers', :action => 'destroy' })
  #------------------------------

  # Routes for the Game resource:
  # CREATE
  get('/games/new', { :controller => 'games', :action => 'new' })
  get('/create_game', { :controller => 'games', :action => 'create' })

  # READ
  get('/games', { :controller => 'games', :action => 'index' })
  get('/games/:id', { :controller => 'games', :action => 'show' })

  # UPDATE
  get('/games/:id/edit', { :controller => 'games', :action => 'edit' })
  get('/update_game/:id', { :controller => 'games', :action => 'update' })

  # DELETE
  get('/delete_game/:id', { :controller => 'games', :action => 'destroy' })

  # Checkin
#  get('/game_check_in/:id', { :controller => 'games', :actions => 'check_in' })
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
