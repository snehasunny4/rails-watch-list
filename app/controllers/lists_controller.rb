class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def method_name
    
  end
end
