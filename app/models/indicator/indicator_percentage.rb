class Indicator::IndicatorPercentage < ActiveRecord::Base
  include Indicator::Base::Units

  ##
  # Main method to show the indicator
  def calculate_metric
    self.percentage
  end

end
