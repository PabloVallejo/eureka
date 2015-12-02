module Category
  def self.table_name_prefix
    'category_'
  end

  ##
  # Main category to inherit from.
  module CategoryBase

    ##
    # Main method to get category name.
    def name
      raise NotImplementedError, 'You must implement `name` method'
    end

  end

end
