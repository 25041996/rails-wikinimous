class ActionsController < ApplicationController

    def index
      @actions = Action.all
    end

    def show
      @action = Action.find(params[:id])
    end

    def new
      @action = Action.new
    end

    def create
      @action = Action.new(action_params)
      @action.save
      redirect_to action_path(@action)
    end

    def edit
      @action = Action.find(params[:id])
    end

    def update
      @action = Action.find(params[:id])
      @action.update(action_params)
      redirect_to action_path(@action)
    end

    def destroy
      @action = Action.find(params[:id])
      @action.destroy
      redirect_to tasks_path(@action)
    end
    private

    def task_params
      params.require(:action).permit(:title, :text)
    end



  end
