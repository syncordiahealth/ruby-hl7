# encoding: UTF-8
# via https://github.com/bbhoss/ruby-hl7/blob/master/lib/segments/in1.rb
class HL7::Message::Segment::GT1 < HL7::Message::Segment
  weight 2
  add_field :guarantor_name, :idx=>3
end
