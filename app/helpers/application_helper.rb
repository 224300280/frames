module ApplicationHelper

  
  def title
    base_title = "Frames"
    if @title.nil?
      base_title
    else
      "#{@title}"
    end
  end


end
