#> scored_index:repeat
#
# scored_index:indexから引き継いで、
# 再帰的に処理を行うfunction
# 
# #length をデクリメントしていき、0 になったら要素を返す
#
# E extends Array | number | string | Object
#
# @input
#   score #length _ : int
#   storage si:
#     temp : E[]

# ----- 定義

    #define score_holder #length
    #define storage si:temp

    #define storage si:res

# ----- 処理

    scoreboard players remove #length _ 1
    execute unless score #length _ matches 0 run data remove storage si: temp[-1]

    execute unless score #length _ matches 0 run function scored_index:repeat
