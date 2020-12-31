#> scored_index:index
#
# scoreboardを配列のインデックスとして用いる  
# 以下の _E_ は何でも構わない
#
# @input
#     score index 整数型 objective: _
#     storage si:args E配列型
#
# @output
#     storage si:res E型 := E[index]

# ----- 定義

    ## strict storage check回避
    #define storage si: 用いるstorage

    ## 引数を定義
    #define score_holder index
    #define storage si:args

    ## 返り値を定義
    #define storage si:res 返り値

# ----- 移し替え

    #define score_holder repeat = args.length - index
        execute store result score repeat _ if data storage si: args[]
        scoreboard players operation repeat _ -= index _

    #define storage si:temp E配列型 = si:args
        data modify storage si: temp set from storage si: args

# ----- 処理

    function scored_index:repeat
    data modify storage si: res set from storage si: temp[-1]