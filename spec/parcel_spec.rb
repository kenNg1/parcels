require ('rspec')
require ('parcel')

describe("Parcel#parcel") do
  it("returns the volume of the parcel") do
    expect(Parcel.new(2,2,2,4).volume).to(eq(8))
  end

  it("returns the volume of the parcel") do
    expect(Parcel.new(2,2,2,4).shippingcost(8,"Normal")).to(eq(96))
  end

  it("returns the volume of the parcel") do
    expect(Parcel.new(2,2,2,4).shippingcost(8,"Express")).to(eq(120))
  end

  it("returns the volume of the parcel") do
    expect(Parcel.new(2,2,2,4).shippingcost(20,"Express")).to(eq(176))
  end

end
