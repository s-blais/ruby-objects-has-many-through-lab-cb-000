class Appointment

  attr_accessor :patient, :doctor, :date

  @@all = []

  def intialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
