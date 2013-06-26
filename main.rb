# We need rubygems for ever application
require 'rubygems'

# We use pry for debugging and inserting breakpoints
require 'pry'

# Sinatra is our framework/DSL for web applications this week
require 'sinatra'

# The reload reloads the application every time we make a change.
require 'sinatra/reloader' if development?

# Dotenv (https://github.com/bkeepers/dotenv) lets us keep some variables in
# a configuration file called .env that we don't check into Git.
require 'dotenv'

# This is the Twitter API access gem
# More info about the Twitter gem at: https://github.com/sferik/twitter
# More info about the Twitter API at: https://dev.twitter.com
require 'twitter'


# This is where a run-once configuration is stored in Sinatra
# More documentation at: http://www.sinatrarb.com/intro.html#Configuration
# We are using this to setup our Twitter client
# DO NOT put your API keys in here directly
configure do
  # This line loads the configuration from the .env file into the ENV hash
  # ENV values are accessible like ENV['CONSUMER_KEY']
  Dotenv.load

  # This block is where we're setting up our Twitter authentication
  Twitter.configure do |config|
    config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
    config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
    config.oauth_token = ENV['TWITTER_OAUTH_TOKEN']
    config.oauth_token_secret = ENV['TWITTER_OAUTH_TOKEN_SECRET']
  end
end

get '/tweets/:username' do
  @username = params[:username]
  @my_tweets = Twitter.user_timeline(@username)
  erb :tweets
end