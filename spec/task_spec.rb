require 'rspec'
require_relative '../app/models/task'

require 'spec_helper'

describe Task do



before(:all) do
  @task = Task.new
end

it "should exist" do
  @task.class == Task
end
end
