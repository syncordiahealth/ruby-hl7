# encoding: UTF-8
class HL7::Message::Segment::FT1 < HL7::Message::Segment
  add_field :set_id
  add_field :transaction_id
  add_field :transaction_batch_id
  add_field :transaction_date do |value|
    convert_to_ts(value)
  end
  add_field :transaction_posting_date do |value|
    convert_to_ts(value)
  end
  add_field :transaction_type
  add_field :transaction_code
  add_field :transaction_description
  add_field :transaction_description_alt
  add_field :transaction_quantity
  add_field :transaction_amount_extended
  add_field :transaction_amount_unit
  add_field :department_code
  add_field :insurance_plan_id
  add_field :insurance_amount
  add_field :assigned_patient_location
  add_field :fee_schedule
  add_field :patient_type
  add_field :diagnosis_code
  add_field :performed_by_code
  add_field :ordered_by_code
  add_field :unit_cost
  add_field :filler_order_number
  add_field :entered_by_code
  add_field :procedure_code
  add_field :procedure_code_modifier
  add_field :advanced_beneficiary_notice_code
  add_field :medically_necessary_duplicate_procedure_reason
end
