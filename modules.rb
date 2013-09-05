# Modules or namespacing
module Treehouse
    MASCOT = "Mike The Frog"

    class Frog
        attr_accessor :name
    end
end

# :: enter inside the module
# Treehouse::MASCOT # "Mike The Frog"
# mike = Treehouse::Frog.new
# mike.name = "Mike The Frog"