# encoding: UTF-8
require 'spec_helper'

describe HL7::Message::Segment::FT1 do
  describe 'initialization' do
    context 'with payload' do
      # from https://docs.google.com/document/d/1yu4NSdkDSiGXZhhtA_ox__LinD_mdScq58ACw5bf2-g/edit
      let(:payload) { 'FT1||||20091007000000|20091014|CG||||1|||||||||780.4^Dizziness/Giddiness~785.2^Heart Murmur~272.0^Hypercholesterolemia Pure~458.9^Hypotension Nos||||||99261^Consult' }

      let(:ft1) { described_class.new payload }

      specify { expect { ft1 }.to_not raise_error }

      specify { expect(ft1.set_id).to eq '' }
      specify { expect(ft1.transaction_id).to eq '' }
      specify { expect(ft1.transaction_batch_id).to eq '' }
      specify { expect(ft1.transaction_date).to eq '20091007000000' }
      specify { expect(ft1.transaction_posting_date).to eq '20091014' }
      specify { expect(ft1.transaction_type).to eq 'CG' }
      specify { expect(ft1.transaction_code).to eq '' }
      specify { expect(ft1.transaction_description).to eq '' }
      specify { expect(ft1.transaction_description_alt).to eq '' }
      specify { expect(ft1.transaction_quantity).to eq '1' }
      specify { expect(ft1.transaction_amount_extended).to eq '' }
      specify { expect(ft1.transaction_amount_unit).to eq '' }
      specify { expect(ft1.department_code).to eq '' }
      specify { expect(ft1.insurance_plan_id).to eq '' }
      specify { expect(ft1.insurance_amount).to eq '' }
      specify { expect(ft1.assigned_patient_location).to eq '' }
      specify { expect(ft1.fee_schedule).to eq '' }
      specify { expect(ft1.patient_type).to eq '' }
      specify { expect(ft1.diagnosis_code).to eq '780.4^Dizziness/Giddiness~785.2^Heart Murmur~272.0^Hypercholesterolemia Pure~458.9^Hypotension Nos' }
      specify { expect(ft1.performed_by_code).to eq '' }
      specify { expect(ft1.ordered_by_code).to eq '' }
      specify { expect(ft1.unit_cost).to eq '' }
      specify { expect(ft1.filler_order_number).to eq '' }
      specify { expect(ft1.entered_by_code).to eq '' }
      specify { expect(ft1.procedure_code).to eq '99261^Consult' }
      specify { expect(ft1.procedure_code_modifier).to eq nil }
      specify { expect(ft1.advanced_beneficiary_notice_code).to eq nil }
      specify { expect(ft1.medically_necessary_duplicate_procedure_reason).to eq nil }
    end
  end
end
