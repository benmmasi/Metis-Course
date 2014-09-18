class LockerProblem
	

	def initialize
		@lockers = []
		100.times do 
			@lockers << "closed"
		end
	end

	def run
		students = (0..99)
		lockers = (0..99)
		#each of the 100 students
		#interacts with each of the 100 lockers
		students.each do |student|
			lockers.each do |locker|
				if locker % student == 0
					student_toggle_locker(locker)
				end
			end
		end
		give_answers
	end

	def student_toggle_locker(locker)
		if @lockers[locker] == "closed"
			@lockers[locker] = "open"
		else
			@lockers[locker] = "closed"
		end
	end

	def give_answers
		puts @lockers 
	end
end

locker_problem = LockerProblem.new
locker_problem.run

		

