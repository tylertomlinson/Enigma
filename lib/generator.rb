require 'date'

module Generator

  def key_generator
    (0..9).to_a.sample(5)
  end

  def default_date
    Date.today.strftime("%y%m%d").to_i
  end

end
