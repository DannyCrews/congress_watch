class LegislatorsController < ApplicationController
  def index
    @user = User.first
    @zipcode = params[:zipcode]
    @legislators = Congress.legislators_locate('01879')
  end

  def create
    @house_rep = @legislators[:representative]
    @senator_sr = @legislators[:senior_senator]
    @senator_jr = @legislators[:junior_senator]
  end
end
