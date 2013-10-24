class LegislatorsController < ApplicationController
  def index
    @user = User.first
    @zipcode = params[:zipcode] || "02134"
    @legislators = Congress.legislators_locate(@zipcode)
  end

  def create
    @house_rep = @legislators[:representative]
    @senator_sr = @legislators[:senior_senator]
    @senator_jr = @legislators[:junior_senator]
  end
end
