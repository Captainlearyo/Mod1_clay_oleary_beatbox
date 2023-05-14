
class BeatBox
 attr_reader :list
 #attr_writer :
    def initialize()
       
        @list = LinkedList.new() 

    end  

    def append(string)
        new_arr = string.split(" ")
        new_arr.each{ |i| @list.append(i) }
    end

    def play
        
        `say -r 10 -v Boing #{list.to_string}`
    end

end