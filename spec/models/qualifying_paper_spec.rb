require 'spec_helper'

describe QualifyingPaper do
  before :all do
    create_ead('UA071')
  end

  it_behaves_like 'rels-ext collection and ead correspond to source value', 'UA071'

  describe "description" do
    before do
      subject.description = 'student provided description'
    end

    it "should get prefixed" do
      expect(subject.tufts_pdf.description).to eq ["A qualifying paper submitted in partial fulfillment of the requirements for the degree of Doctor of Philosophy in CATALOGER-FIX-ME Education. Abstract: student provided description"]
    end
  end
end
