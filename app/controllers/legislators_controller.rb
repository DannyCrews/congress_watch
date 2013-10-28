class LegislatorsController < ApplicationController
  def index
    @zipcode = params[:zip] || "02134"
    @legislators = Congress.legislators_locate(@zipcode)
  end

  def new
  end

  def show
  end


  def create     
    @legislator = Legislator.new(zipcode_params)     
    if
      @legislator.save format.html { redirect_to @legislator, notice: 'Legislators were
        successfully created.' }
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through. def person_params params.require(: person). permit(: first_name, :last_name) end
  end
