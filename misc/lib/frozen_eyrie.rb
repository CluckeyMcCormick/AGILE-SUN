require "frozen_eyrie/version"
require "frozen_eyrie/welcome"

module FrozenEyrie
  def self.hello(n = "Default Name")
    welcome = Welcome
    Welcome.name(n)
  end
end
