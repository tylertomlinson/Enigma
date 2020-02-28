require 'date'

module Generator

  def key_generator
    (1..9).to_a.sample(5)
  end

  def default_date
    Date.today.strftime("%y%m%d")
  end
end
