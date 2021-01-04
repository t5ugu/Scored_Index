#> utils:get_by_index/repeat
# 
# #length をデクリメントしていき、0 になったら要素を返す
#
# E extends Array | number | string | Object
#
# @input
#   score #length _ : Integer
#   storage su:index
#     temp : E[]

# ----- 処理

    scoreboard players remove #length _ 1
    execute unless score #length _ matches 0 run data remove storage su:index temp[-1]

    execute unless score #length _ matches 0 run function utils:get_by_index/repeat