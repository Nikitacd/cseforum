class PagesController < ApplicationController
  def home
  end
  def about
  end
  def AskaQuestion
  end
  def AnsweraQuestion
  end
  def list
    @param  = String.new
    @param = params[:passed_params]
    @questions = Question.where(:domain  => @param)
    
  end

  
end
