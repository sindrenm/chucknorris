class ChuckNorris

  def <(other); false; end
  def >(other); true; end
  def ==(other); false; end

  def method_missing method_name, *args, &block
    raise sample_error, "That should teach you not to try and tell Chuck Norris to " \
                        "#{method_name.to_s.gsub("_", " ")}."
  end

  def sample_error
    errors.sample
  end

  def errors
    [
      RoundHouseKick, Uppercut,
      SidewaysPowerslam, Bodyslam,
      ToTetteOgEnBadehette
    ]
  end

end

class RoundHouseKick < StandardError; end
class Uppercut < StandardError; end
class SidewaysPowerslam < StandardError; end
class Bodyslam < StandardError; end
class ToTetteOgEnBadehette < StandardError; end
