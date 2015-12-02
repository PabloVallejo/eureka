class Category::CategorySocialProjection < ActiveRecord::Base
  include Category::CategoryBase

  ##
  # Main method to get category name.
  def name
    'Social projection'
  end

end
