class PatientSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :age, :sickness, :doctor
end
