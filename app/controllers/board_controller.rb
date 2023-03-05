class BoardController < Sinatra::Base
#All boards
get "/board" do
    board = board.all
    board.to_json()
end
#Get single board
get"/board/:id" do
    board = board.find_by(id: params[:id])
    board.to_json()
end

#Delete board
delete "/board/:id" do
    board = board.find_by(id: params[:id])
    board.destroy
{
    "Message": "board deleted successfuly",
    "Status": "HTTP_Status_OK"
}.to_json()
end
end