class PagesController < ApplicationController

	def home
		@teachers = Teacher.where(:academic_group => 1).order("created_at Desc")

	end

	def about
	end
	
end
