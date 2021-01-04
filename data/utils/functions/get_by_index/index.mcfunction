#> utils:get_by_index/index
#
# scoreboardを配列のインデックスとして用いる  
#
# E extends Array | number | string | Object
#
# @input
#   storage su:index
#         io.in.args : E[]
#         io.in.index : Integer
#
# @output
#   storage su:index
#     io.out : E = args[index]

# ----- 移し替え

    #define score_holder #length = args.length - (index % args.length)
    
        execute store result score #length _ if data storage su:index io.in.args[]
        execute store result score #temp _ run data get storage su:index io.in.index
        scoreboard players operation #temp _ %= #length _
        scoreboard players operation #length _ -= #temp _

    data modify storage su:index temp set from storage su:index io.in.args

# ----- 処理

    function utils:get_by_index/repeat
    data modify storage su:index io.out set from storage su:index temp[-1]