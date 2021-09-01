class Secret
  def initialize
    @secret_code = generate_secret_code
  end

  def generate_secret_code
    possibilities = ["b", "r", "g", "y"]
    4.times.map {possibilities.sample}
  end

end
