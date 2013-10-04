srequire 'rspec'
require_relative '../app/models/task'
require_relative '../app/models/list'

require 'spec_helper'

describe Task do
  before(:all) do
    @task = Task.new({description: "Do something", list_id: 1})
  end


  it "Task should be valid" do
    @task.should be_valid


  end
end

describe List do
  before(:all) do
    @list = List.new(name: "Todo List")
  end


  it "List should be valid" do
    @list.should be_valid
end




end



