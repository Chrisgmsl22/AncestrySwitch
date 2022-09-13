class Node < ApplicationRecord

    #has_ancestry jj
    has_ancestry
    
    #For files 
    has_one_attached :document

    def get_document_url
	if self.document.attached?
		url_for(self.document)
    	end
    end
end
#Inside the Node Class we have to add "has_ancestry " in order to actually use the gem
