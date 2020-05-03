

class Doctor
 attr_accessor :name
 @@all  = []
 
 def initialize(name)
   @name = name
   save
 end
 
 def self.all
   @@all
 end
 
 def save
   @@all << self
 end
 
 def new_appointment(patient, date)
   new_appointment = Appointment.new(date, patient, self)
 end 
 
 def appointments
   Appointment.all.select {|appointment| appointment.doctor == self}
 end
 
 def patients
   self.appointments.collect {|appointment| appointment.patient}
 end

end

