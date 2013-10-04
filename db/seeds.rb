require_relative '../config/application'
require 'faker'
# require 'pry'


List.create(:name => "BS LIST")

10.times do
Task.create(:description => Faker::Company.bs,
             :list_id => List.select(:id).where(:name == "BS_LIST") )
             # binding.pry
end


# Task.where(:id == 1).select(List.name)
