class QuestionsController < ApplicationController
# skip_before_filter  :verify_authenticity_token
	def show
		@question = Question.find(params[:id])
	end

	def create
		Question.create(question_params)
		redirect_to root_path
	end
		
	private 
		def question_params
			params.require(:question).permit(:email, :body)
		end
end
