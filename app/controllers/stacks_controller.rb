class StacksController < ApplicationController
  def index
    @stacks = Stack.all
    render json: @stacks
  end

  def show
    @stack = Stack.find(params[:id])
    render json: @stack
  end

end
