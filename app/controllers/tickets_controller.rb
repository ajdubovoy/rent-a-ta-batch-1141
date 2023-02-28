class TicketsController < ApplicationController
  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user
    @teacher = Teacher.find(params[:teacher_id])
    @ticket.teacher = @teacher

    if @ticket.save
      redirect_to ticket_path(@ticket)
    else
      render :new
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:description)
  end
end
