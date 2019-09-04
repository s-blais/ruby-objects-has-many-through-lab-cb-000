class Appointment

  attr_accessor :doctor, :patient, :date

  @@all = []

  def intialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date.strftime("%A, %B %-d")
    @@all << self
  end

  def self.all
    @@all
  end

end
