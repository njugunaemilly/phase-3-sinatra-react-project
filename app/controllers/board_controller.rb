class BoardController < Sinatra::Base
#All boards
get "/board" do
    board = Board.all
    board.to_json()
end

#Get single board
get"/board/:id" do
    board = Board.find_by(id: params[:id])
    board.to_json()
  end
end