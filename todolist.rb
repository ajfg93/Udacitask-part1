class TodoList
    # methods and stuff go here
    def initialize(list_title)
      @title = list_title
      @items = Array.new
    end

    attr_reader :items
    attr_accessor :title  #naming, renaming a list

    def delete_item (id)
      @items.delete(id-1) #delete item
    end

    def add_item(item_description)  # add item
      item = Item.new(item_description)
      @items.push(item)
    end

    def update_status(id, true_or_false) #update completion status
      @items[id-1].change_complete_status (true_or_false)
    end

    def completed?(id)
      @items[id-1].@completed_status
    end

    def print_list
      @title.length.times {puts "-"}
      puts @title
      @title.length.times {puts "-"}
      counter = 0
      while counter < @items.length
        puts "#{counter+1} - #{@items[counter]}" + "\t" + "Completed: #{@items[counter].@completed_status}"
        counter += 1
      end
end

class Item
    # methods and stuff go here
    attr_reader :description, :completed_status
    def initialize(item_description)
      @description = item_description
      @completed_status = false
    end

    def change_complete_status(true_or_false)
      @completion = true_or_false
    end
end
