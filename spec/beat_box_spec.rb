require "./lib/beat_box"
require "./lib/linkedlist"
require "./lib/node"

RSpec.describe BeatBox do

    it "exists" do
    bb = BeatBox.new
    expect(bb.list.head).to eq(nil)
    expect(bb.list.count).to eq(0)
    end

    it "append" do
        bb = BeatBox.new
        bb.append("deep doo ditt")
        expect(bb.list.count).to eq (3)
        expect(bb.list.to_string).to eq("deep doo ditt")
        expect(bb.list.head.value).to eq ("deep")
        expect(bb.list.head.value).to eq ("d00")
        expect(bb.list.head.value).to eq ("ditt")
        
        end


end