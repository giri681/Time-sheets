class ProjectsController < ApplicationController

	def index
		@time_sheets = TimeSheet.includes(:project).all
	end
	
  def new
  	@project = Project.new
  	@projects = Project.all.pluck(:name, :id)
  end

  def create
	time_sheet = Project.new(time_sheet_params)
	time_sheet.save
  end

  private

  def time_sheet_params
  	params.require(:project).permit(time_sheets_attributes: [:id, :project_id, :description, :_destroy])
  end
end
