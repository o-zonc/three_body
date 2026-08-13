# Resource system

This directory mirrors the role of `dim_comp`'s `product` system while keeping `three_body`'s existing Material API.

## Planned structure

```text
resource/
├── resource_managing_by_tick.mcfunction
├── resource_interaction_manager.mcfunction
├── regen/
│   └── ticking.mcfunction
├── overworld/
│   ├── wood/regen/ticking.mcfunction
│   ├── stone/regen/ticking.mcfunction
│   ├── coal/regen/ticking.mcfunction
│   ├── copper/regen/ticking.mcfunction
│   ├── iron/regen/ticking.mcfunction
│   ├── gold/regen/ticking.mcfunction
│   ├── diamond/regen/ticking.mcfunction
│   ├── emerald/regen/ticking.mcfunction
│   └── lapis/regen/ticking.mcfunction
├── dried/
├── frozen/
├── polar/
└── cosmos/
```

Dimension-specific resources will be added under their corresponding dimension directory. Each resource can later mirror dim_comp's `regen/`, `ui/`, `value/`, and `trigger/` separation where needed.

The existing `three_body:resource` storage remains the source of truth for resource amounts; the separate `unlock` scoreboard stores unlock state.
