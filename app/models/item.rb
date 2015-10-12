class Item < ActiveRecord::Base

  belongs_to :created_by, class_name: 'User'

  #
  # Model string representation.
  #
  def to_s
    self.title
  end

end
