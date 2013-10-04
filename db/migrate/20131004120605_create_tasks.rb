require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration # "to create tasks"
  def change
    create_table :tasks do |t|
      t.integer :list_id
      t.string :description
      t.timestamp
    end
  end
end

