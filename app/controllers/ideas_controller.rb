class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:ideas_id])
    @endorsement = @idea.endorsement.find(params[:id])

    @endorsement2 = Endorsement.find(params[:id])

    redirect_to idea_endorsement_path
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
