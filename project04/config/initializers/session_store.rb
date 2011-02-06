# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project04_session',
  :secret      => '16f3368935b8899c5e7ac5b74364c12a8c06886f677af40a17abfb4d3f974b4d1ea797d8cf114b29ce997b5d9c6080044dee6405ca6a2da9e9bb939d410193b7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
