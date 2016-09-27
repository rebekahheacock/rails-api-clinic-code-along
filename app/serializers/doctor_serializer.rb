class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :specialty
  has_many :patients
  has_many :appointments
end
