class Appointment

  attr_accessor :doctor, :patient, :date

  @@all = []

  def intialize(patient, doctor, date="")
    @patient = patient
    @doctor = doctor
    @date = date.to_s
    @@all << self
  end

  def self.all
    @@all
  end

end
