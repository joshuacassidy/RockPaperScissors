Shoes.app :width => 490, :height => 280, :title => "RPS" do

  @player = nil
  @ai = nil

  flow() do
    style(:margin_left => '9%', margin_top => '25%')
    @player = image "images/playerrock.png"
    @ai = image "images/airock.png"

  end

  flow() do
    style(:margin_left => '42%', margin_top => '25%')

    button "Play!" do
      gamesNumber = ask("how many games would you like to play?").to_i
      computer_Score = 0
      player_Score = 0

  for i in 1..gamesNumber
        num1 = ask("Choose Rock Paper or Scissors").to_s.downcase
        num2 = "rps"[rand(3)].to_s

    case num1
      when "r" , "rock"
          @player.path = "images/playerrock.png"
        when "s" , "scissor"
          @player.path = "images/playerscissors.png"
        when "p" , "paper"
          @player.path = "images/playerpaper.png"
        end

    case num2
      when "r"
        @ai.path = "images/airock.png"
      when "s"
        @ai.path = "images/aiscissors.png"
      when "p"
        @ai.path = "images/aipaper.png"
      end

    case [num1, num2]
      when ["p","r"],["s","p"],["r","s"],["paper","r"],["scissor","p"],["rock","s"]
        alert("you win this round")
        player_Score +=1

      when ["r","r"],["s","s"],["p","p"],["rock","r"],["scissor","s"],["paper","p"]
        alert("this round is a draw")

      when ["s","r"],["p","s"],["r","p"],["scissor","r"],["paper","s"],["rock","p"]
        alert("you lose this round")
        computer_Score += 1
      else
        alert("invalid input")

    end

end
      if(computer_Score < player_Score)
          alert("player wins out of #{gamesNumber} rounds with the players score being #{player_Score} and the computers score being #{computer_Score}")
            elseif(computer_Score > player_Score)
              alert("computer wins out of #{gamesNumber} rounds with the computers score being #{computer_Score} and the players score being #{player_Score}")
                else
                  alert("player and computer draw out of #{gamesNumber} rounds with both scores being #{player_Score} ")
      end
end



  end

end
