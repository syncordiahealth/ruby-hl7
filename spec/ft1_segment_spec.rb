# encoding: UTF-8
require 'spec_helper'

describe HL7::Message::Segment::FT1 do
  describe 'initialization' do
    context 'with payload' do
      # from http://www.hosinc.com/Products/Interfaces/interface_documentation.htm
      let(:payload) { 'FT1|1|48390||20050111|20050112|CH|66000230^AMLODIPINE BESYLATE|AMLODIPINE BESYLATE||1|||1|||||I|||||||' }

      let(:ft1) { described_class.new payload }

      specify { expect { ft1 }.to_not raise_error }

      specify { expect(ft1.set_id).to eq '1' }
      specify { expect(ft1.transaction_id).to eq '48390' }
      specify { expect(ft1.transaction_batch_id).to eq '' }
      specify { expect(ft1.transaction_date).to eq '20050111' }
      specify { expect(ft1.transaction_posting_date).to eq '20050112' }
      specify { expect(ft1.transaction_type).to eq 'CH' }
      specify { expect(ft1.transaction_code).to eq '66000230^AMLODIPINE BESYLATE' }
      specify { expect(ft1.transaction_description).to eq 'AMLODIPINE BESYLATE' }
      specify { expect(ft1.transaction_description_alt).to eq '' }
      specify { expect(ft1.transaction_quantity).to eq '1' }
      specify { expect(ft1.transaction_amount_extended).to eq '' }
      specify { expect(ft1.transaction_amount_unit).to eq '' }
      specify { expect(ft1.department_code).to eq '1' }
      specify { expect(ft1.insurance_plan_id).to eq '' }
      specify { expect(ft1.insurance_amount).to eq '' }
      specify { expect(ft1.assigned_patient_location).to eq '' }
      specify { expect(ft1.fee_schedule).to eq '' }
      specify { expect(ft1.patient_type).to eq 'I' }
      specify { expect(ft1.diagnosis_code).to eq '' }
      specify { expect(ft1.performed_by_code).to eq '' }
      specify { expect(ft1.ordered_by_code).to eq '' }
      specify { expect(ft1.unit_cost).to eq '' }
      specify { expect(ft1.filler_order_number).to eq '' }
      specify { expect(ft1.entered_by_code).to eq '' }
      specify { expect(ft1.procedure_code).to eq '' }
      specify { expect(ft1.procedure_code_modifier).to eq nil }
      specify { expect(ft1.advanced_beneficiary_notice_code).to eq nil }
      specify { expect(ft1.medically_necessary_duplicate_procedure_reason).to eq nil }
    end
  end
end
