require "./lib/node"


RSpec.describe Node do

    it "has a value" do
      node = Node.new("Robert")
      expect(node.value).to eq("Robert")
    end
  
    it "next_node" do
      node_1 = Node.new("Margaret")
      node_2 = Node.new("Noel")

      expect(node_1.next).to eq(nil)

     # node_1.next_node = node_2

     # expect(node_1.next_node).to eq(node_2)
    end

end