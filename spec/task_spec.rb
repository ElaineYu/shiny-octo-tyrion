require 'rspec'
require_relative '../app/models/task'
require_relative '../app/models/list'

require 'spec_helper'

describe Task do
  before(:all) do
    @task = Task.new
  end

  it "Task should be valid" do
    @task.should be_valid
  end
end

describe List do
  before(:all) do
    @list = List.new
  end

  it "List should be valid" do
    @list.should be_valid
  end

end



