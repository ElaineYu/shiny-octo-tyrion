require_relative '../config/application'
require 'faker'
#require 'pry'


List.create(:name => "BS LIST")

15.times do
  Task.create(
    description: Faker::Company.bs,
             binding.pry
    list_id: List.select(:id).where(:name == "BS_LIST"))  
end
#binding_pry

# Task.where(:id == 1).select(List.name)
