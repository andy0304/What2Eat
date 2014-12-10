require 'yelp'

Yelp.client.configure do |config|
  config.consumer_key = 'xpAR5zVg1sU332IODPxS8A'
  config.consumer_secret = 'SxAmaNQfNB6GCi3KgE3sNDofS5E'
  config.token = 'P2LH_LDNE6UJzyQI6K3d1AUseqU4pxFH'
  config.token_secret = 'sP8c0ODTs13hilKtNWNldPS0e9s'
end

p Yelp.client.search('San Francisco', { term: 'food' })