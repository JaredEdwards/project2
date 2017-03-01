class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.create!(idea_params.merge({user: current_user}))

    redirect_to idea_path(@idea)
  end

  def edit
    @idea = Idea.find([params[:id]])
  end

  def update
    @idea = Idea.find(params[:id])
    if(current_user == @idea.user)
      @idea.update(idea_params.merge(user: current_user))
    else
      flash[:alert] = "You cant update this"
    end

    redirect_to idea_path(@idea)
  end

  def destroy
    @idea = Idea.find(params[:id])
    if(current_user == @idea.user)
      @idea.destroy
    else
      flash[:alert] = "You are not the author of this post"
    end

    redirect_to ideas_path
  end

  private
  def idea_params
    params.require(:idea).permit(:author, :title, :content)
  end
end
