#> scored_index:repeat
#
# scored_index:indexから引き継いで、
# 再帰的に処理を行うfunction
# 
# repeat をデクリメントしていき、0 になったら要素を返す
#
# E extends Array | number | string | Object
#
# @input
#   score repeat _ : int
#   storage si:
#     temp : E[]

# ----- 定義

    #define score_holder repeat
    #define storage si:temp

    #define storage si:count

    #define storage si:res

# ----- 処理

    scoreboard players remove repeat _ 1
    execute unless score repeat _ matches 0 run data remove storage si: temp[-1]

    execute unless score repeat _ matches 0 run function scored_index:repeat
