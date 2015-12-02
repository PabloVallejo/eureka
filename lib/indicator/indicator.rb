module Indicator

  ##
  # `BaseIndicator` is the main class to inherit from
  # when extending indicators.
  #
  class BaseIndicator < ActiveRecord::Base

    # Indicator name
    @name = ''

    ##
    # Main method to show the indicator
    def calculate_metric
      raise NotImplementedError, 'You must implement `calculate_metric` method'
    end

  end


  ##
  # `BaseIndicator` is the main class to inherit from
  # when extending indicators.
  #
  class Percentage < BaseIndicator

    # Indicator percentage.
    @percentage = 0

    ##
    # Main method to show the indicator
    def calculate_metric
      # If we have childs, iterate through all childs
      # and get such percentage.

    end

  end


end
