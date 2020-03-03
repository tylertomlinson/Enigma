require "simplecov"

SimpleCov.start do

end

require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require 'date'
require './lib/enigma'
require './lib/generator'
require './lib/key'
require './lib/offset'
require './lib/shift'

include Generator
