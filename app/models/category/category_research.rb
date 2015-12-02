class Category::CategoryResearch < ActiveRecord::Base
  include Category::CategoryBase

  ##
  # Main method to get category name.
  def name
    'Research'
  end

end
