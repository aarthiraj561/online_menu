class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new(:menu_id => params[:menu_id])
  end

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      redirect_to feedbacks_path(:menu_id => params[:feedback][:menu_id]), notice: "Feedback successfully posted."
    else
      flash[:alert] = @feedback.errors.full_messages.first
      redirect_to new_feedback_path(:menu_id => params[:feedback][:menu_id])
    end
  end

  def index
    @feedbacks = Feedback.get_menu_feedback_list(params[:menu_id]).paginate(:page => params[:page], :per_page => 5)
    @menu = Menu.find(params[:menu_id])
  end

  private
  def feedback_params
    params.require(:feedback).permit(:author, :message, :menu_id)
  end
end
