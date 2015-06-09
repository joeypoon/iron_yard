class ThoughtsController < ApplicationController

  before_action do
    @thoughts = Thought.all
  end

  def index
    @thought = Thought.new
  end

  def new
    @thought = Thought.new
  end

  def create
    @thought = Thought.new thought_params
    if @thought.save
      redirect_to root_path, notice: 'Your thought has been successfully posted.'
    else
      render :index
    end
  end

  private

    def thought_params
      params.require(:thought).permit(:content)
    end

end
