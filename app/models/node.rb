class Node < ApplicationRecord

    #has_ancestry jj
    has_ancestry
    
    #For files 
    has_one_attached :document
    
end

#Inside the Node Class we have to add "has_ancestry " in order to actually use the gem
