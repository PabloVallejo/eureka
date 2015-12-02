class Category::CategoryTeaching < ActiveRecord::Base
  include Category::CategoryBase

  ##
  # Main method to get category name.
  def name
    'Teaching'
  end

end
