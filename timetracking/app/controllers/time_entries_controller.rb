class TimeEntriesController < ApplicationController
	def index
		@my_project = Project.find(params[:project_id])
		@my_entries = @my_project.time_entries

		render "index"
	end


	def new
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.new

		render "new"
	end

	def create
		
		@my_project = Project.find(params[:project_id])
		
		@my_entry = @my_project.time_entries.new(entry_params)

			if @my_entry.save
				flash[:notice] = "Project created successfully" 
				redirect_to project_time_entries_path
			else 
				redirect_to new_project_time_entry_path
			end
		end	
	




	def edit
		@my_project = Project.find params[:project_id]
		@my_entry = TimeEntry.find params[:id]

		render "edit"	
		
	end

	def update
		@my_project = Project.find_by(id: params[:project_id])
		@my_entry = @my_project.time_entries.find_by(id: params[:id])

		if @my_entry.update(entry_params)
			redirect_to action: "index",controller: 'time_entries',
		project_id:@my_project.id
	else
		render 'edit'
	end
end

	def destroy
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.find(params[:id])

		@my_entry.destroy

		redirect_to project_time_entries_path(@my_project)
	end






#add any new methods ABOVE	 the "private"

	private

	def entry_params

		# {hours: params[:time_entry][:hours],
		#  minutes: params[:time_entry][:minutes],
		#  date: params[:time_entry][:date],
		#  comment: params[:time_entry][:date]}

		params.require(:time_entry).permit(:hours, :minutes, :date, :comment)
	end
end
