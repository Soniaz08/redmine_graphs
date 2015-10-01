class ReGraphsController < ApplicationController
  unloadable
  menu_item :redmine_graphs

  def index
    @project = Project.find(params[:project_id])
    @data = {"Monday"=>37, "Tuesday"=>23, "Wednesday"=>7, "Thursday"=>11, "Friday"=>9, "Saturday"=>2}
  end

end