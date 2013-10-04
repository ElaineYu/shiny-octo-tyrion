#MVC

#View is talking to the controller

class ListView

  def show_list(list_all) #list_all is an array of objects
    list_all.each do |list_object|
      puts "#{list_object.id}. #{list_object.name}"
    end
  end
  
  def confirm_addition(task_object) # task_object is an object
    puts "You added #{task_object.description}."
  end
  
  def confirm_update(task_object)
    puts "You updated #{task_object.description}."
  end

  def confirm_deletion(task_object) #task object
    puts "You deleted #{task_object.description}."
  end
  
  def show_task(task_object) #task object from controller
    puts "#{task_object.description}."
  end

end
