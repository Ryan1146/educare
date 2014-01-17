class Teacher < ActiveRecord::Base
	has_many :students
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "20x20>" }, :default_url => "/images/:style/missing.png"
end
