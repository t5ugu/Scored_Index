#> scored_index:index
#
# scoreboardを配列のインデックスとして用いる  
#
# E extends Array | number | string | Object
#
# @input
#   score index _ : int
#   storage si:
#     args : E[]
#
# @output
#   storage si:
#     res : E = args[index]

# ----- 定義

    ## strict storage check回避
    #define storage si: 用いるstorage

    ## 引数を定義
    #define score_holder index
    #define storage si:args

    ## 返り値を定義
    #define storage si:res 返り値

# ----- 移し替え

    #define score_holder #length = args.length - (index % args.length)
    #define score_holder #temp
        execute store result score #length _ if data storage si: args[]
        scoreboard players operation #temp _ = index _
        scoreboard players operation #temp _ %= #length _
        scoreboard players operation #length _ -= #temp _

    #define storage si:temp E配列型 = si:args
        data modify storage si: temp set from storage si: args

# ----- 処理

    function scored_index:repeat
    data modify storage si: res set from storage si: temp[-1]