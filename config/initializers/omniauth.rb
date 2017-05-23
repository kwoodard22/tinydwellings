Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :google_oauth2, 
  #   fields: [:email], 
  #   on_failed_registration: lambda { |env|
  #     CallbacksController.action(:new).call(env)
  #   }
  # provider :identity, on_registration: lambda { |env|
  #   IdentitiesController.action(:new).call(env)
  # }
end