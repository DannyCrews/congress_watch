class HomeController < ApplicationController
	def index
		@committees = Congress.committees
		@bills = Congress.bills
		@floor_updates = Congress.floor_updates
	end
end