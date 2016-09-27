class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :start, :length
  has_one :doctor
  has_one :patient
end
