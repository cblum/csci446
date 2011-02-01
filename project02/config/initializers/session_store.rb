# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project02_session',
  :secret      => '0a8ca56166a60980c86ea5eb20e309b3a36f11ed9155e0bca3dacbfb7264adf5a5ca0eadf5077f1e2a598c46724facf6bceb16c84b8d1d9269b2f0a16df1e8f2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
