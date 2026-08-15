execute if score #trial_active trial matches 1 if score #trial_id trial matches 3 if score #dimension_phase trial matches 1 run return 0
execute unless score #nether unlock matches 1 unless score #quartz unlock matches 1 unless score #gold unlock matches 1 unless score #blaze unlock matches 1 run return 0

function resource/nether/quartz/regen/ticking
function resource/nether/gold/regen/ticking
function resource/nether/blaze/regen/ticking
