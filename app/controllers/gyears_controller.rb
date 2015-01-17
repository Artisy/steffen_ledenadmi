class GyearsController < ApplicationController
  
  def show
    @member_groups = Membergroup.all
    @members = Member.all
    
    @group_id = params[:group_id].to_i
    @year = params[:id].to_i
   
  end
end
