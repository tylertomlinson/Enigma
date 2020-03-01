require 'date'

module Generator

  def number_generator
    rand(0..99999).to_s.rjust(5, "0")
  end

  def default_date
    Date.today.strftime("%y%m%d").to_i
  end

end
