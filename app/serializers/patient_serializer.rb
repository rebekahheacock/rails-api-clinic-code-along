class PatientSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :age, :sickness, :doctors
end
