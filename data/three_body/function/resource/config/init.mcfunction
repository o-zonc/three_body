# Resource configuration used by the resource value API.
# Wood regeneration is expressed in ticks.
# lvl 0 is the base value; lvl 4 is the final upgrade.
data modify storage three_body:resource.config wood set value {unlock_cost:{type:"wood",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]}
