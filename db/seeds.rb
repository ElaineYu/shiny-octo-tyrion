require_relative '../config/application'
require 'faker'


list = List.create(:name => "BS LIST")

10.times do
Task.create(:description => Faker::Company.bs,
             :list_id => list.select(:id) )
end


