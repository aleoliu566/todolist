class HomeController < ApplicationController
	def index
		@todos=Todo.all
		if params[:time1].present?
			@todos=@todos.where( :time => "true")
		end
		if params[:time2].present?
			@todos=@todos.where(:time => "false")
		end
	
	end
end
