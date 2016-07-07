class SiteController < ApplicationController
	def home
		render 'home' #name of the view template
	end

	def contact
		render 'contact'
	end

	def projects
		render 'projects'

	end

	


end
