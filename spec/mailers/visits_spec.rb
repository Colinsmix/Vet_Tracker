require "spec_helper"

describe Visits do
  describe "appointment_notification" do
    let(:mail) { Visits.appointment_notification }

    it "renders the headers" do
      mail.subject.should eq("Appointment notification")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
