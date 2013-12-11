class HomeController < ApplicationController
	def index
		@committees = Congress.committees
		@bills = Congress.bills('per_page' => 5)
		@floor_updates = Congress.floor_updates
	end
end