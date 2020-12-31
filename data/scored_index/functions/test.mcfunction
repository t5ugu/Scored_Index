data modify storage si: args set value [{i: 1}, {i: 2}, {i: 3}, {i: 4}, {i: 5}]

scoreboard players set index _ 2

function scored_index:index

tellraw @a {"score": {"name": "index", "objective": "_"}}
tellraw @a {"storage": "si:", "nbt": "res"}