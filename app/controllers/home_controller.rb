class HomeController < ApplicationController

  def sort_string
  	return {} unless params[:q]
  	names = params[:q].split(' ')
	@new_string = {}
	names.group_by(&:itself).each { |k,v| @new_string[k] = v.length }
	@new_string = Hash[ @new_string.sort_by{|k,v| v}.reverse ]
	render 'sort_string.js.erb'
  end
end
