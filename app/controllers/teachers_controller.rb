class TeachersController < ApplicationController
	before_action :set_teacher, only:[:show,:edit,:update,:destroy]

	def index
		@teachers = Teacher.all.order("created_at DESC")
	end

	def academic_group_first
		@teachers = Teacher.where(:academic_group => 1).order("created_at DESC")
		#@north_teachers = Teacher.where(:academic_group => 1 , :location => 1).order("created_at DESC")
		#@hsinchu_teachers = Teacher.where(:academic_group => 1, :location => 2).order("created_at DESC")
		#@south_teachers = Teacher.where(:academic_group => 1, :location => 3).order("created_at DESC")
	end

	def academic_group_second
		@north_teachers = Teacher.where(:academic_group => 2, :location => 1).order("created_at DESC")
		@hsinchu_teachers = Teacher.where(:academic_group => 2,:location => 2).order("created_at DESC")
		@south_teachers = Teacher.where(:academic_group => 2, :location => 3).order("created_at DESC")
	end

	def academic_group_third
		@north_teachers = Teacher.where(:academic_group => 3, :location => 1).order("created_at DESC")
		@hsinchu_teachers = Teacher.where(:academic_group => 3, :location => 2).order("created_at DESC")
		@south_teachers = Teacher.where(:academic_group => 3, :location => 3).order("created_at DESC")
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
			format.html {render action: 'new'}
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
			params.require(:teacher).permit(:name , :image , :expertise , :background, :academic_group, :location ,:introduction)
		end



end
