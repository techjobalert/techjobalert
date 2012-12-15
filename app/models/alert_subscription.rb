class AlertSubscription < ActiveRecord::Base
  belongs_to :alert_keyword
  belongs_to :user
  attr_accessible :frequency
end
