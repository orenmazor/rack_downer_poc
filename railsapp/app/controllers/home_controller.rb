
class HomeController < ApplicationController
  def create 
    render :nothing => {status: 200}
  end

  def index
    require "library_that_never_loads"
    LibraryThatNeverLoads.knockknock
    #shouldn't get here
    render :nothing => {status: 200}
  end
end
