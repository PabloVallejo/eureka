class Item < ActiveRecord::Base

  # Author.
  belongs_to :created_by, class_name: 'User'

  # Attachments.
  has_many :attachments, class_name: 'ItemAttachment', dependent: :destroy

  #
  # Model string representation.
  #
  def to_s
    self.title
  end

  #
  # Get a status string.
  #
  def status_class
    self.status == 'encontrado' ? 'alert-success' : 'alert-danger'
  end


end
