require 'httparty'

	TRELLO_TOKEN = ""
	TRELLO_KEY = ""
	firstandlastname = "jack johnson"

	TrelloUsers = HTTParty.get("https://api.trello.com/1/organizations/---/members?key=" + TRELLO_KEY + "&token=" + TRELLO_TOKEN)
	trelloID = nil

    #pull trelloID

    TrelloUsers.each do |possible_user|
    	
    	if possible_user["fullName"] == firstandlastname
    		trelloID = possible_user["id"]
       	end

    end

    puts trelloID
    #delete Trello user
    HTTParty.delete("https://api.trello.com/1/organizations/---/members/" + TrelloID + "?key=" + TRELLO_KEY + "&token=" + TRELLO_TOKEN)


    #counter = 0
    #TrelloUsers.each do |possible_user|
    #    possible_user[counter]["fullName"]
    #end


