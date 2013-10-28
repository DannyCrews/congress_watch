class Page < ActiveRecord::Base
	include HTTParty
  base_uri  'http://api.nytimes.com/svc/politics/v3/us/legislative/congress'
  format :xml
end