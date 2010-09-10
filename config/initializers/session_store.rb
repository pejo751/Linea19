# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_linea19_session',
  :secret      => '603fb40557cf3928d7861332c89c7cf19c2f76b8470e5dd7f4b4c7069e4d8db212c9b0aa8cef5d6035ac4bf4b75c6a0e5918fd7beb3fd1506ddfdbade0840d18'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
