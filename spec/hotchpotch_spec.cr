require "./spec_helper"

describe Hotchpotch do
  it "methods" do
    expected = ["|", "&", "^", "hash", "to_unsafe", "to_s", "to_s", "clone", "==", "!="]
    actual = Bool.methods
    true.should eq(actual == expected)
  end

  it "registry" do
    Registry.add("a", 1)
    Registry.add(1, "b")

    true.should eq(Registry.get("a") == 1)
    true.should eq(Registry.get(1) == "b")
  end
end
