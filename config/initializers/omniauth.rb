OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '32131876716-k5m51fmn6bktpu63og2hktih8i3up745.apps.googleusercontent.com', 'UhwyXeu-i2PvU6jEg9TyTADo', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
