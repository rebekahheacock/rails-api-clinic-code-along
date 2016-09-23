# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

Doctor.create([
                { given_name: 'Tucker',
                  surname: 'The Rockstar',
                  specialty: 'Being a boss' },
                { given_name: 'Jen',
                  surname: 'Diagnostic Enthusiast',
                  specialty: 'Rocking Diagnostics' },
                { given_name: 'Lauren',
                  surname: 'Happy go lucky',
                  specialty: 'Bringing joy to everyone!' },
                { given_name: 'Herb',
                  surname: 'The Herbster!',
                  specialty: 'The Herbinator!' }
              ])

Patient.create([
                 { name: 'Jeff Horn',
                   sickness: 'Too cool for school',
                   doctor_id: 2 },
                 { name: 'Chris Payne',
                   sickness: 'Way to excited',
                   doctor_id: 2 },
                 { name: 'Brian Berzellini',
                   sickness: 'Sad' },
                 { name: 'Antony Donovan',
                   sickness: 'Robot Syndrome',
                   doctor_id: 1 },
                 { name: 'Jason Weeks',
                   sickness: 'Oddly large chest',
                   doctor_id: 4 }
               ])
