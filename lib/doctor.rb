class Doctor

  @@all = []

  def initialize

  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    new.Appointment(patient, self, date)
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

  def patients
    appointments.collect {|appt| appt.patient}
  end



end
