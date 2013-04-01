class Tasks < ActiveRecord::Base
  attr_accessible :desc, :duedate, :is_complete, :title
end
