# Nouns
  ## Players
    ### State
      - Name
      - Lives
    ### Methods
      - Get lives
      - Set lives
      - Get name
      - Player Id

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
        - Already used questions?
    ### Methods
      - Execute turn result (Reduce life or just start next turn)
      - Call game over
