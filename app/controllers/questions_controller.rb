class QuestionsController < ApplicationController
	 def dashboard
	 	@questions=Question.all.order("created_at DESC")
 	 end
 	 def show
 	 	@question = Question.find(params[:id])
 	 	@answers = @question.answers
 	 end
 	 def new
 	 	@question=Question.new
 	 end
 	 def create
 	 	@question=Question.new(question_params)
 	 	if @question.save
 	 		redirect_to dashboard_path
 	 	else
 	 		flash[:error]="Unable to save Question"
 	 		render 'new'
 	 	end
 	 end
 	 private
 	 def question_params
 	 	params.require(:question).permit(:title,:description,:domain)
 	 	
 	 end
end
