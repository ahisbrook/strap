require "spec_helper"

describe MessageGenerator do
  subject(:generator) { MessageGenerator.new }

  describe '#generate' do
    context "when input is invalid" do
      it "should return empty string for nil input" do
        expect(generator.generate(nil)).to eq('')
      end

      it "should respond to empty input" do
        expect(generator.generate('')).to eq("You suck. Type something.")
      end
    end

    context "when input is valid" do
      it "should respond" do
        expect(generator.generate('I love estimations')).to eq("'I love estimations'? Hahaha what?")
      end
    end
  end
end