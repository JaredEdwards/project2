class EndorsementsController < ApplicationController

  def index
    @endorsements = Endorsement.all
  end

  def show
    @endorsement = Endorsement.find(params[:id])
  end

  def new
    @idea = Idea.find(params[:idea_id])
    @endorsement = @idea.endorsements.create!(endorsement_params)

    redirect_to idea_path(@idea)
  end

  def create
  end

  def edit
  end

  def update
  end

  private
  def endorsement_params
    params.require(:endorsement).permit(:author, :amount)
  end
end
