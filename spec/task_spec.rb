require 'rspec'
require_relative '../app/models/task'
require_relative '../app/models/list'

require 'spec_helper'

describe Task do
  before(:all) do
    @task = Task.new
  end

  it "Task should exist" do
    @task.class == Task
  end
end

describe List do
  before(:all) do
    @list = List.new
  end

  it "List should exist" do
    @list.class == List
  end
end



