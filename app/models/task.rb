class Task < ActiveRecord::Base

  # Author.
  belongs_to :asigned_to, class_name: 'User'

  # Parent.
  belongs_to :parent, class_name: 'Task'

  ##
  # Gets the text for the indicator value
  def get_indicator_value
    indicator_class = "Indicator::#{self.indicator_class}".constantize
    indicator = indicator_class.find(self.indicator_id)
    indicator.calculate_metric
  end

  ##
  # Gets the text for the category value
  def get_category_name
    category_class = "Category::#{self.category_class}".constantize
    category = category_class.new
    category.name
  end

  ##
  # Gets the text for the category value
  def get_semaphore_value
    semaphore_class = "Semaphore::#{self.semaphore_class}".constantize
    semaphore = semaphore_class.new
    semaphore.color
  end


end
