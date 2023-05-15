
class BeatBox
 attr_reader :list
 #attr_writer :
    def initialize()
       
        @list = LinkedList.new() 
        @valid_beats = ["tee", "dee", "deep", "bop", "boop", "la", "na", "ditt", "woo", "hoo", "doo", "shu"]
    end  



    def validate(string)
        arr = string.split(" ")
        new_arr = []
        arr.each{ |i| 
            if @valid_beats.include?(i)
                new_arr << i
            end
        }
        new_arr
    end

    def append(string)
        arr = validate(string)
        arr.each{ |i| @list.append(i) }
    end

    def play(rate, voice)
        `say -r #{rate} -v #{voice} #{list.to_string}`
    end

end

a