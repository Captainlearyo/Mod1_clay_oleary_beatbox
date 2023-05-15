require "./lib/node"
require "./lib/linkedlist"

RSpec.describe LinkedList do

   

    it "head initializes as nil" do
        linkedlist = LinkedList.new()
        expect(linkedlist.head).to eq(nil)
     end

    it "append adds to an empty list" do
        linkedlist = LinkedList.new
        expect(linkedlist.head).to eq(nil)
        linkedlist.append("Noel")
        expect(linkedlist.head.value).to eq("Noel")
        expect(linkedlist.head.next).to eq(nil)
    end

    it "count returns number of nodes" do
        linkedlist = LinkedList.new()
        expect(linkedlist.count).to eq(0)
        linkedlist.append("Margaret")
        expect(linkedlist.count).to eq(1)
        linkedlist.append("Noel")
        expect(linkedlist.count).to eq(2)
        linkedlist.append("Juan")
        expect(linkedlist.count).to eq(3)
        linkedlist.append("Jones")
        expect(linkedlist.count).to eq(4)
    end
    
    it "append adds to the end of list" do 
        linkedlist = LinkedList.new()
        linkedlist.append("Margaret")
        expect(linkedlist.count).to eq(1)
        expect(linkedlist.head.value).to eq("Margaret")
        expect(linkedlist.head.next).to eq(nil)
        linkedlist.append("Noel")
        expect(linkedlist.count).to eq(2)
        expect(linkedlist.head.next.value).to eq("Noel")
    end

    it "prepend adds to the beggining of list" do 
        linkedlist = LinkedList.new()
        linkedlist.prepend("Margaret")
        expect(linkedlist.count).to eq(1)
        expect(linkedlist.head.value).to eq("Margaret")
        expect(linkedlist.head.next).to eq(nil)
        linkedlist.prepend("Noel")
        expect(linkedlist.count).to eq(2)
        expect(linkedlist.head.next.value).to eq("Margaret")
        expect(linkedlist.to_string).to eq("Noel Margaret")
    end

    it "insert will insert one or more elements at a given position" do 
        linkedlist = LinkedList.new()
        linkedlist.append("Margaret")
        linkedlist.append("Noel")
        linkedlist.append("Juan")
        linkedlist.append("Jones")
        
        expect(linkedlist.to_string).to eq("Margaret Noel Juan Jones")
        expect(linkedlist.count).to eq(4)
        linkedlist.insert(1, "insert_1", "insert_2")
        expect(linkedlist.to_string).to eq("Margaret insert_1 insert_2 Noel Juan Jones")
        expect(linkedlist.count).to eq(6)
        linkedlist.insert(0, "insert_3")
        expect(linkedlist.to_string).to eq("insert_3 Margaret insert_1 insert_2 Noel Juan Jones")
        expect(linkedlist.count).to eq(7)
        linkedlist.insert(7, "insert_4")
        expect(linkedlist.to_string).to eq("insert_3 Margaret insert_1 insert_2 Noel Juan Jones insert_4")
        expect(linkedlist.count).to eq(8)
        linkedlist.insert(6, "insert_5", "insert_6", "insert_7")
        expect(linkedlist.to_string).to eq("insert_3 Margaret insert_1 insert_2 Noel Juan insert_5 insert_6 insert_7 Jones insert_4")
        expect(linkedlist.count).to eq(11)
    end

    it "generates a string of all the elements in the list" do 
        linkedlist = LinkedList.new()
        expect(linkedlist.to_string).to eq("Empty List")
        linkedlist.append("Margaret")
        expect(linkedlist.to_string).to eq("Margaret")
        linkedlist.append("Noel")
        linkedlist.append("Juan")
        linkedlist.append("Jones")
        expect(linkedlist.to_string).to eq("Margaret Noel Juan Jones")
    end

    it "includes? gives back true or false" do 
        linkedlist = LinkedList.new()
        expect(linkedlist.includes?("Jones")).to be false
        linkedlist.append("Margaret")
        linkedlist.append("Noel")
        linkedlist.append("Juan")
        linkedlist.append("Jones")
        expect(linkedlist.includes?("Cassidy")).to be false
        expect(linkedlist.includes?("Juan")).to be true
        expect(linkedlist.includes?("Jones")).to be true
    end

    it "pop removes elements the last element from the list." do 
        linkedlist = LinkedList.new()
        expect(linkedlist.pop).to eq("Empty List")
        linkedlist.append("Margaret")
        expect(linkedlist.count).to eq(1)
        linkedlist.pop
        expect(linkedlist.head).to eq(nil)

        linkedlist.append("Margaret")
        linkedlist.append("Noel")
        linkedlist.append("Juan")
        linkedlist.append("Jones")
        expect(linkedlist.to_string).to eq("Margaret Noel Juan Jones")
        expect(linkedlist.count).to eq(4)
        linkedlist.pop
        expect(linkedlist.to_string).to eq("Margaret Noel Juan")
        expect(linkedlist.count).to eq(3)

        
    end  

    it "Find slices linkedlist." do 
        linkedlist = LinkedList.new()
        expect(linkedlist.pop).to eq("Empty List")
        linkedlist.append("Margaret")
        expect(linkedlist.count).to eq(1)
        linkedlist.pop
        expect(linkedlist.head).to eq(nil)

        linkedlist.append("Margaret")
        linkedlist.append("Noel")
        linkedlist.append("Juan")
        linkedlist.append("Jones")
        expect(linkedlist.find(1,2)).to eq(["Noel", "Juan",])
    end  
        

        
    

end