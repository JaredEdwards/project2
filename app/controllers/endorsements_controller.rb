class EndorsementsController < ApplicationController

  def index
    @idea = Idea.find(params[:idea_id])
    @endorsements = @idea.endorsements.all
  end

  def show
    @endorsement = Endorsement.find(params[:id])
  end

  def new
    @idea = Idea.find(params[:idea_id])
    @endorsement = @idea.endorsements.new
  end

  def create
    @idea = Idea.find(params[:idea_id])
    @endorsement = @idea.endorsements.create!(endorsement_params)

    redirect_to idea_endorsements_path(@idea)
  end

  def edit
    @idea = Idea.find(params[:idea_id])
    @endorsement = Endorsement.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:idea_id])
    @endorsement =Endorsement.find(params[:id])
    @endorsement.update(endorsement_params)

    redirect_to idea_endorsement_path(@idea, @endorsement)
  end



  private
  def endorsement_params
    params.require(:endorsement).permit(:author, :amount)
  end
end
