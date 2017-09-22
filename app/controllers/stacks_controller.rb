class StacksController < ApplicationController
  before_action :set_stack, only: [:edit, :show, :update, :delete]
  def index
    @stacks = Stack.all
    render json: @stacks
  end

  def new
    @stack = Stack.new
    render json: @stack
  end

  def create
    render json: @stack
  end

  def edit
    render json: @stack
  end

  def show
    render json: @stack
  end

  # def update
  #   render json: @stack
  # end

  # def destroy
  #   render json: @stack
  # end

  private
  def stack_params
    params.require(:stack).permit(:code, :company, :stack_price)
  end

  def set_stack
    @stack = Stack.find(params[:id])
  end

end
