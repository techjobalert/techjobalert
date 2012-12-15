class JobPost < ActiveRecord::Base
  attr_accessible :company, :description, :instructions, :location, :title
end
