# Resource configuration used by the resource value API.
# The configuration is the source of truth for the available regeneration levels.
# Add/remove levels here; consumers must not hard-code a maximum level.
# TODO: replace placeholder balance values with final game balance.
data modify storage three_body:resource config set value {
  wood:{unlock_cost:{type:"wood",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  stone:{unlock_cost:{type:"stone",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  coal:{unlock_cost:{type:"coal",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  copper:{unlock_cost:{type:"copper",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  iron:{unlock_cost:{type:"iron",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  gold:{unlock_cost:{type:"gold",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  diamond:{unlock_cost:{type:"diamond",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  emerald:{unlock_cost:{type:"emerald",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  lapis:{unlock_cost:{type:"lapis",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  heat:{unlock_cost:{type:"heat",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  cold:{unlock_cost:{type:"cold",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  information:{unlock_cost:{type:"information",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]},
  time:{unlock_cost:{type:"time",amount:0},regen:[{lvl:0,ticks:6000,cost:10},{lvl:1,ticks:4800,cost:20},{lvl:2,ticks:3600,cost:40},{lvl:3,ticks:2400,cost:80},{lvl:4,ticks:1200,cost:160}]}
}
