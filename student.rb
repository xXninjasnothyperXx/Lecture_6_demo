class Student
	attr_reader :name, :email
	@@all = []

	def initialize(name, email)
		@name = name
		@email = email
	end
	
	def self.all
		@@all
	end
end