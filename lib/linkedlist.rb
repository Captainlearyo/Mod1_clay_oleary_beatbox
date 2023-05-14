require "./lib/node"


class LinkedList
 attr_reader :head, :count 
    def initialize()

       @head = nil
       @count = 0

    end  

    def append(value)
        new_node = Node.new(value)
        @count += 1 
        
        if !@head
            @head = new_node
        else

            curr = @head

                while curr.next
                
                    curr = curr.next

                end

            curr.next = new_node

        end
    end

    def prepend(value)
        new_node = Node.new(value)
        @count += 1 

        if !@head
            @head = new_node
        else
            prev = @head
             @head = new_node
            new_node.next = prev
        end

    end

    def insert(position, *values)
    new_arr = [@head.value]
    
    
    if !@head
        "Empty List"
    elsif position >= @count
        values.each{ |i| append(i) }
    elsif position == 0 
        values.each{ |i|prepend(i) }
    else
        curr = @head
        counter = 0
        while curr.next
            counter +=1
            curr = curr.next
            if counter == position
                values.each{ |i| new_arr << i }
            end
            new_arr << curr.value
            end
            
          @count.times {pop}

        new_arr.each{ |i| append(i) }
    end

    end

    def includes?(item)
        if !@head
            false
        else

            curr = @head

                while curr.next

                    if curr.value == item
                        return true
                    end

                    curr = curr.next

                end

                if curr.value == item
                    return true
                else false
                end
            
        end

    end


    def to_string
        if !@head
            "Empty List"
        else

            curr = @head
            print_str = [@head.value]

                while curr.next
                curr = curr.next
                print_str << curr.value
                end

             print_str.join(" ")

        end
    end

    def pop
        if !@head
            "Empty List"
        elsif @count == 1
            @count -= 1
            @head = nil
        else
            @count -= 1
            curr = @head
            prev = nil

                while curr.next
                    prev = curr
                    curr = curr.next

                end
            ret = prev.next
            prev.next = nil
             ret.value
        end
    end

    def find(position, length)
        if !@head
            "Empty List"
        else

            curr = @head
            print_str = [@head.value]

                while curr.next
                curr = curr.next
                print_str << curr.value
                end

             print_str.slice(position, length)

        end
    
    end


end