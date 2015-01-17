class MembergroupsController < ApplicationController

def index
    @membergroups = Membergroup.all
    @membergroup = Membergroup.new
    
    
    @group = Group.new  
    @groups = Group.all 
    @members = Member.all
    @group_member = @group.membergroups.build
  end
  
  def new
    
  end
  
  def show
    
  end
  
  def create 
     
    @group_id = params[:group][:id]
    @groupyear = params[:date][:groupyear]
   
    params[:member][:id].each do |group|
      if !group.empty?
        Membergroup.new(:member_id => group, :groupyear => @groupyear, :group_id => @group_id).save
      end
    end
     
     
    
    
    respond_to do |format|
        format.html { redirect_to groups_path, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
    end
  end
 
end
