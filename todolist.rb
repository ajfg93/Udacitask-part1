class TodoList
    # methods and stuff go here
    def initialize(list_title)
      @title = list_title
      @items = Array.new
    end

    attr_reader :title, :items

    def add_item(item_description)
      item = Item.new(item_description)
      @items.push(item)
    end
end

class Item
    # methods and stuff go here
    attr_reader :description, :completed_status
    def initialize(item_description)
      @description = item_description
      @completed_status = false
    end
end
