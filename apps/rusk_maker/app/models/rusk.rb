class Rusk < ActiveRecord::Base
	validates :base, :extras, :dippable, presence: true
	validates :crunch_factor, numericality: { only_integer: true, greater_than: 0}
end
