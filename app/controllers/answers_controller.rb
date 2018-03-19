class AnswersController < ApplicationController
	def create
		@question = Question.find(params[:question_id])
		@answer= @question.answers.create(ans_params)
		@answer.user_id = current_user.id
		if @answer.save
			redirect_to question_path(@question)
		else
		end	
	end
	def destroy
		@answer = Answer.find(params[:id])
		if @answer.delete

		else
		end
	end
	def inc_likes
		@answer = Answer.find(params[:pass_answer])
		@answer.likes = @answer.likes + 1
		if @answer.save
			redirect_back(fallback_location: dashboard_path)
		else
			redirect_back(fallback_location: dashboard_path)
		end
	end
	def inc_dislike
		@answer = Answer.find(params[:pass_answer])
		@answer.dislikes = @answer.dislikes + 1
		if @answer.save
			redirect_back(fallback_location: dashboard_path)
		else
			redirect_back(fallback_location: dashboard_path)
		end
	end
	private
	def ans_params
		params.require(:answer).permit(:body,:likes,:dislikes,:user_id,:ques_id)
	end
end
