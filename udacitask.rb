require_relative 'todolist.rb'

# Creates a new todo list
mylist = TodoList.new("Pengtianqing's daily routine")
# Add four new items
4.times.mylist.add_item(gets.chomp)
# Print the list
mylist.print_list
# Delete the first item
mylist.delete_item(1)
# Print the list
mylist.print_list
# Delete the second item
mylist.delete_item(2)
# Print the list
mylist.print_list
# Update the completion status of the first item to complete
mylist.update_status(1, true)
# Print the list
mylist.print_list
# Update the title of the list
mylist.title = "Title is Updated!"
# Print the list
mylist.print_list
