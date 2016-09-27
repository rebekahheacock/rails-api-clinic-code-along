class PatientSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :sickness
  has_many :doctors
  has_many :appointments
end
