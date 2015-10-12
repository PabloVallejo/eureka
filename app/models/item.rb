class Item < ActiveRecord::Base


  #
  # Model string representation.
  #
  def to_s
    self.title
  end

end
