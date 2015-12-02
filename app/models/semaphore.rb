module Semaphore
  def self.table_name_prefix
    'semaphore_'
  end

  ##
  # Main module to inherit from.
  module SemaphoreBase

    ##
    # Main method to get category name.
    def color
      raise NotImplementedError, 'You must implement `color` method'
    end

  end

end
