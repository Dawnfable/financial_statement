class StatementsController < ApplicationController
  before_action :set_statement, only: [:show, :edit, :update, :destroy, :toggle_status]

  def index
    @statements = Statement.where(user_id: current_user.id)

  end

  def new
    @statement = Statement.new
  end

  def create
    @statement = Statement.new(statement_params)
    @statement.user_id = current_user.id
    if @statement.save
      redirect_to statement_path(@statement)
    else
      render :new
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @statement.update(statement_params)
      @statement.save
      redirect_to @statement, notice: 'Your statement was edited successfully'
    else
      redirect_to :new, notice: 'Error editing your statement'
    end
  end

  def destroy
    if @statement.destroy
      redirect_to statements_path, notice: 'Your statement was deleted'
    else
      render :show, notice: 'Error deleting your statement'
    end
  end

  def toggle_status
    if @statement.pending?
      @statement.completed!
    elsif @statement.completed?
      @statement.pending!
    end
    redirect_to statements_path, notice: "#{@statement.date.strftime('%B %Y')} has been set to #{@statement.status}"
  end

  private

  def set_statement
    @statement = Statement.find(params[:id])
  end

  def statement_params
    params.require(:statement).permit(:date)
  end

end
