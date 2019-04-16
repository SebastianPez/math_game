# Nouns
  ## Players
    ### State
      - Name
      - Lives
      - Player Id
    ### Methods
      - Get lives
      - Set lives
      - Get name

  ## Question
    ### State
      - Question
    ### Methods
      - Answer (Is correct)


  ## Turns
    ### State
      - Active player
      - Current Question
      - Result (Right/Wrong)
   

  ## Math Game
    ### State
      - Players
        - Player1
        - Player2
        - Current Score (P1 lives vs P2 lives)
      - Turns
        - Current player
        - Player answer
      - Questions
        - Question list
    ### Methods
      - Execute turn result (Reduce life or just start next turn)
      - Call game over


  #  @current_score = "P1: #{@player1.lives}/3 VS. P2: #{player2.lives}/3"
