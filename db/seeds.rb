require_relative '../config/application'
require 'faker'


List.create(:name => "BS LIST")

10.times do
Task.create(:description => Faker::Company.bs,
             :list_id => List.select(:id).where(:name == "BS LIST") )
end


