class State < ApplicationRecord
    has_many :patients
    # I made this method when I was experimenting with disabling certain options in the dropdown menu, but it turned out to be superfluous
    def available?
        self.services
    end
end
