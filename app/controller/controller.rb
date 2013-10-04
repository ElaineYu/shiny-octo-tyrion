require 'pry'
require_relative '../../config/application'
require_relative '../models/list'
require_relative '../models/task'
# require_relative '../views/view'
class Controller
  def initialize
    # display = View.new
  end

  def add(task, list_name)
    task = Task.create(description: task, 
                list_id: List.where(:name == list_name).first.id
                )
    # confirm_addition(task)
  end

  def get(condition, value)
    task = Task.where(condition.to_sym => value)
    # show_task(task)
  end

  def list
    # show_list(Task.all)
    Task.all
  end

  def update(id, updated_description)
    task = get("id", id).first
    task.description = updated_description
    task.save
    # confirm_update(task)
  end

  def delete(id)
    task = get("id", id).first
    # confirm_deletion(task)
    task.destroy
  end
end



(Controller.new).list
(Controller.new).add("cats", "BS LIST")
(Controller.new).get("id", 10)
(Controller.new).update(10, "dogs")
(Controller.new).delete(10)
(Controller.new).list









# cat = (Controller.new).get("id", 3)
# p (Controller.new).update(12, "don't walk the dog")
# show_list(List.all)
# confirm_addition(task)
# confirm_deletion(task)
# p (Controller.new).get("id",10)
# p (Controller.new).delete(10)
# p (Controller.new).list
