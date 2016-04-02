# CASClient::Frameworks::Rails::Filter.configure(
#     :cas_base_url => "https://auth.berkeley.edu/cas/",
#     :login_url     => "https://auth.berkeley.edu/cas/login"
# )

# Load the Rails application.
require File.expand_path('../application', __FILE__)
# require File.expand_path(File.dirname(__FILE__) + "/lib/casclient/frameworks/rails/filter.rb")
    

# Initialize the Rails application.
Rails.application.initialize!
