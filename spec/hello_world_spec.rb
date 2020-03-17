require "hello_world"

RSpec.describe HelloWorld do
  subject(:hello_world) { described_class.new }

  describe "#hello" do
    it "returns the correct message" do
      expect(hello_world.hello).to eq("Hello, World")
    end
  end
end
