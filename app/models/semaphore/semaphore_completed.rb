class Semaphore::SemaphoreCompleted < ActiveRecord::Base
  include Semaphore::SemaphoreBase

  ##
  # Main method to show the semaphore color.
  def color
    '#cccccc'
  end

end
