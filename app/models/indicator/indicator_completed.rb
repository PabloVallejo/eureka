class Indicator::IndicatorCompleted < ActiveRecord::Base
  include Indicator::Base::Units

  ##
  # Main method to show the indicator
  def calculate_metric
    'calculate_metric'
  end

end
