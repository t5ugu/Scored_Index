# ----- Storage
    #define storage su:index Scored Utilityのindex
    ## {
    ##   io: {
    ##     in: {
    ##       args: E[], 
               #define storage su:index io.in.args
    ##       index: Number
               #define storage su:index io.in.index
    ##     },
    ##     out: E
             #define storage su:index io.out
    ##    },
    ##    temp: E[]
            #define storage su:index temp
    ##    }
    ##  }