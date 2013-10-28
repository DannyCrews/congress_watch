class PagesController < ApplicationController   

	def index 
		@bill_bulk_data = Congress.bills_search(:query => "health care") 
		@response = Page.get('/113/house/members/current?api-key=6cfc49901eb5136c7537c705595f4f0d:13:63277080')   
	end


	def create          
		@page = Page.new(zipcode_params)          
		if @page.save format.html { redirect_to @page, notice: 'Pages were successfully created.' }
		end    
	end




end


