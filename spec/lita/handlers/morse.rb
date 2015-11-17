require "spec_helper"

describe Lita::Handlers::Morse, lita_handler: true do
  it { is_expected.to route_command("morse").to (:morse) }

  describe "transform to morse" do
    subject do
      send_command("morse stuff")
    end

    it "changes stuff to morse" do
      expect(replies.last).to match(/··· − ··− ··−· ··−·/)
    end
  end
end
