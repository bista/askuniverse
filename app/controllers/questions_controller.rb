class QuestionsController < ApplicationController
# skip_before_filter  :verify_authenticity_token
	def create
		Question.create(question_params)
		redirect_to root_path
	end
		
	private 
		def question_params
			require(:question).permit(:email, :body)
		end
end
