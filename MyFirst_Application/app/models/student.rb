class Student < ActiveRecord::Base
  attr_accessible :Address, :age, :description, :first_name, :last_name, :stream, :title
end
