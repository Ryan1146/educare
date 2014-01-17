class StudentsController < ApplicationController
	before_action :find_teachers

	def index
	end

	def show
	end

	def new
		@student = @teacher.students.build
	end


	def create
		@student = @teacher.students.new(student_params)

		if(@student.save)
			flash[:notice] = "感謝您留下資料，待我們與老師聯絡後會盡快通知您，謝謝！"
			redirect_to(teachers_path)
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end


	private
		def find_teachers
			@teacher = Teacher.find(params[:teacher_id])
		end

		def student_params
			params.require(:student).permit(:name , :mail , :phoneNumbers , :message)
		end


end
