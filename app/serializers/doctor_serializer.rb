class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :specialty, :patients
end
