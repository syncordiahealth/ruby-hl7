# encoding: UTF-8
require 'spec_helper'

describe HL7::Message::Segment::GT1 do
  describe 'initialization' do
    context 'with payload' do
      # based on FT1 payload from http://www.hosinc.com/Products/Interfaces/interface_documentation.htm
      let(:payload) { 'GT1|1|2857217|TEST^FIRST||158 N WASHINGTON ST^^MADISON^WI^54563^USA^^^GREEN LAKE|(920)867-5309||19800934|F|P/F|18\S\PARENT||||||^^^^^USA|||NONE' }

      let(:gt1) { described_class.new payload }

      specify { expect { gt1 }.to_not raise_error }

      specify { expect(gt1.set_id).to eq '1' }
      specify { expect(gt1.guarantor_number).to eq '2857217' }
      specify { expect(gt1.guarantor_name).to eq 'TEST^FIRST' }
    end
  end
end
