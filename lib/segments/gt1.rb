# encoding: UTF-8
# via https://github.com/bbhoss/ruby-hl7/blob/master/lib/segments/in1.rb
class HL7::Message::Segment::GT1 < HL7::Message::Segment
  weight 2

  add_field :set_id
  add_field :guarantor_number
  add_field :guarantor_name
  add_field :guarantor_spouse_name
  add_field :guarantor_address
  add_field :guarantor_home_phone
  add_field :guarantor_work_phone
  add_field :guarantor_dob
  add_field :guarantor_sex
  add_field :guarantor_type
  add_field :guarantor_relationship
  add_field :guarantor_ssn
  add_field :guarantor_begin_date
  add_field :guarantor_end_date
  add_field :guarantor_priority
  add_field :guarantor_employer_name
  add_field :guarantor_employer_address
  add_field :guarantor_employer_phone
  add_field :guarantor_employee_id
  add_field :guarantor_employment_status
end
