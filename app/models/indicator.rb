module Indicator
  def self.table_name_prefix
    'indicator_'
  end

  # Base indicator class
  module Indicator::Base

    #
    # Units
    module Units

      ##
      # Main method to show the indicator
      def calculate_metric
        raise NotImplementedError, 'You must implement `calculate_metric` method'
      end

    end


  end


end
