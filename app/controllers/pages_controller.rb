class PagesController < ApplicationController
	def index
		    @bill_bulk_data = Congress.bills_search(:query => "health care")
	end
end
