# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

# What2eat::Application.config.secret_token = 'f7a06ed72dc6b8d927401fe2dbcd5a2a302b1e2ccbbd748ad2e8ad79a2a892b179a30984417db37beca63e454cbcca7feb16548f86f1e2cf0e326e08e03127bb'

What2eat::Application.config.secret_token = ENV['SECRET_TOKEN'] # || 'f7a06ed72dc6b8d927401fe2dbcd5a2a302b1e2ccbbd748ad2e8ad79a2a892b179a30984417db37beca63e454cbcca7feb16548f86f1e2cf0e326e08e03127bb'