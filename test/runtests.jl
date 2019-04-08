using UnicodeGraphics, 
      OffsetArrays,
      Test

pac = [0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0;
       0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0;
       0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0;
       0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0;
       0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0;
       0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0;
       0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0;
       1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0;
       1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0;
       1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0;
       1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1;
       1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0;
       1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0;
       0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0;
       0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
       0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
       0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0;
       0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0;
       0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0;
       0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0]


block_pac = """
     ▄▄██████▄▄     
  ▄██████████████▄  
 ▄███████  ████████ 
▄██████████████▀▀   
███████████▀▀       
███████████▄▄      ▀
▀██████████████▄▄   
 ▀█████████████████ 
  ▀██████████████▀  
     ▀▀██████▀▀     \0"""

test_pac = blockize(pac)
@test test_pac == block_pac
println(test_pac, "\n\n", block_pac, "\n\n")


brail_pac = 
"""
⠀⣠⣴⣾⣿⣿⣷⣦⣄⠀
⣰⣿⣿⣿⣧⣼⣿⡿⠟⠃
⣿⣿⣿⣿⣿⣏⡁⠀⠀⠠
⠹⣿⣿⣿⣿⣿⣿⣷⣦⡄
⠀⠙⠻⢿⣿⣿⡿⠟⠋⠀\0"""

test_pac = brailize(pac)
@test test_pac == brail_pac
println(test_pac, "\n\n", brail_pac, "\n\n")


ghost = [1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0;
         0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
         1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0 1.0 1.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0;
         0.0 0.0 0.0 0.0 0.0 0.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 0.0 0.0 0.0 0.0;
         1.0 0.0 0.0 0.0 0.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 0.0 0.0 1.0;
         0.0 0.0 0.0 0.0 1.0 0.0 0.0 1.0 1.0 1.0 1.0 0.0 0.0 1.0 1.0 1.0 0.0 0.0 0.0;
         1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0 1.0 0.0 0.0 0.0 0.0 1.0 1.0 0.0 0.0 1.0;
         0.0 0.0 0.0 0.0 1.0 1.0 0.0 0.0 1.0 1.0 1.0 1.0 0.0 0.0 1.0 1.0 0.0 0.0 0.0;
         1.0 0.0 0.0 1.0 1.0 1.0 0.0 0.0 1.0 1.0 1.0 1.0 0.0 0.0 1.0 1.0 1.0 0.0 1.0;
         0.0 0.0 0.0 1.0 1.0 0.0 0.0 1.0 1.0 1.0 1.0 0.0 0.0 1.0 1.0 1.0 1.0 0.0 0.0;
         1.0 0.0 0.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 1.0;
         0.0 0.0 0.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 0.0;
         1.0 0.0 0.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 1.0;
         0.0 0.0 0.0 1.0 1.0 0.0 1.0 1.0 1.0 0.0 0.0 1.0 1.0 1.0 0.0 1.0 1.0 0.0 0.0;
         1.0 0.0 0.0 1.0 0.0 0.0 0.0 1.0 1.0 0.0 0.0 1.0 1.0 0.0 0.0 0.0 1.0 0.0 1.0;
         0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
         1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0 0.0 1.0]


block_ghost =
"""
   ▄▄████▄▄   
 ▄▀▀████▀▀██▄ 
 ▄▄  ██▄▄  ██ 
██▀ ▄███▀ ▄███
██████████████
██▀███▀▀███▀██
▀   ▀▀  ▀▀   ▀\0"""

test_ghost = blockize(OffsetArray(ghost[3:15, 4:17], 3:15, 4:17), 0.5, )
@test test_ghost == block_ghost
println(test_ghost, "\n\n", block_ghost, "\n\n")


braile_ghost =
"""
⠀⣠⣴⣶⣦⣄⠀
⣨⡄⢹⣯⡄⢹⣇
⣿⣶⣿⣿⣶⣿⣿
⠋⠈⠛⠀⠛⠁⠙\0"""

test_ghost = brailize(OffsetArray(ghost[2:15, 4:17], 2:15, 4:17), 0.5)
@test test_ghost == braile_ghost
println(test_ghost, "\n\n", braile_ghost)
