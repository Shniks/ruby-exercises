class TrickOrTreater

  attr_reader :costume,
              :dressed_up_as

  def initialize(costume)
    @costume = costume
    @dressed_up_as = costume.style
  end




end
