class TeachersController < ApplicationController
	before_action :set_teacher, only:[:show,:edit,:update,:destroy]

	def index
		@teachers = Teacher.all.order("created_at DESC")
	end

	def show
	end

	def new
		@teacher = Teacher.new
	end

	def create
		@teacher = Teacher.new(teacher_params)

		if(@teacher.save)
			redirect_to(@teacher, notice: 'teacher was successfully created')
		else
			format.html {render action: 'news'}
		end

	end

	def edit
	end

	def update
		if(@teacher.update(teacher_params))
			redirect_to teachers_path
		else
			render action: 'edit'
		end
	end

	def destroy
		if(@teacher.present?)
			@teacher.destroy
			redirect_to teachers_path
		end
	end


	private
		# Use callbacks to share common setup or constraints between actions.
		def set_teacher
			@teacher = Teacher.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def teacher_params
			params.require(:teacher).permit(:name , :image , :expertise , :background, :introduction)
		end



end
