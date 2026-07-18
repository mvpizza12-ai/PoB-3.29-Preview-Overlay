# Overlay file list / 파일 목록

**Looking for features?** Read [`FEATURES.md`](FEATURES.md) first.  
**기능만 보고 싶으면** 먼저 [`FEATURES.md`](FEATURES.md)를 보세요.

This file is for packagers / contributors: which paths are overwritten.  
이 파일은 배포·기여자용입니다. 어떤 경로를 덮어쓰는지 정리합니다.

Paths are relative to: `%AppData%\Path of Building Community\`

### Legend / 범례
| Tag | Meaning |
|-----|---------|
| **A** | Features / calc code — share & good PR candidates |
| **B** | Content data — share OK, likely replaced by official export |
| **C** | Skill number dumps — share OK, weak PR candidates |
| **D** | Local-only / optional |
| **X** | Generator scripts / gap logs — omit from public zip |

---

## A — Features / calc

| File | Notes |
|------|--------|
| `Classes\ItemsTab.lua` | Vestigial / Foulborn UI, Test Jewel slot, socket UI |
| `Classes\Item.lua` | vestigial/foulborn flags, talisman / Eyes, default White sockets |
| `Classes\Tooltip.lua` | Legion / Foulborn header icons |
| `Classes\GemSelectControl.lua` | Socket colour +10% Quality display, etc. |
| `Modules\Data.lua` | Load Vestigial / FoulbornReplacements; Vestigial base copies |
| `Modules\ModParser.lua` | Cost Efficiency, Bifurcate, Spirit Infusion, Vestigial, … |
| `Modules\CalcOffence.lua` | Bifurcate Crit, Cost Efficiency |
| `Modules\CalcPerform.lua` | Fanaticism 75% less Cost |
| `Modules\CalcSections.lua` | Cost Efficiency breakdown UI |
| `Modules\CalcSetup.lua` | Socket colour quality bonus, etc. |
| `Modules\ConfigOptions.lua` | Spirit Infusion / Bifurcate / Communion / Fanaticism |
| `Modules\ItemTools.lua` | Related helpers |
| `Assets\legionicon.png` | Vestigial header icon |

---

## B — Content data

| File | Notes |
|------|--------|
| `Data\Vestigial.lua` | Vestigial implicit pool |
| `Data\FoulbornReplacements.lua` | Foulborn replace catalog (UI) |
| `Data\ModFoulborn.lua` | Foulborn mod data |
| `Data\ModFoulbornMap.lua` | Unique ↔ Foulborn map |
| `Data\EnchantmentTalisman.lua` | Talisman enchants |
| `Data\ModJewelAbyss.lua` | 3.29 Abyssal Jewel affix updates |
| `Data\ModJewel.lua` | Regular jewel `(10-15)% Mana Cost Efficiency` |
| `Data\Bases\amulet.lua` | Talisman bases (new/legacy) |
| `Data\Global.lua` | Related global tweaks |
| `Data\Uniques\jewel.lua` | Includes `3.29 Temp: …` jewels |
| `Data\Uniques\amulet.lua` | Unique / talisman numbers |
| `Data\Uniques\body.lua` | Unique numbers |
| `Data\Uniques\boots.lua` | Unique numbers |
| `Data\Uniques\gloves.lua` | Cost Efficiency, etc. |
| `Data\Uniques\helmet.lua` | Cost Efficiency, etc. |
| `Data\Uniques\mace.lua` | Unique numbers |
| `Data\Uniques\ring.lua` | Cost Efficiency, etc. |
| `Data\Uniques\staff.lua` | Caster uniques, etc. |
| `Data\Uniques\wand.lua` | Caster uniques, etc. |
| `Data\Uniques\shield.lua` | Unique numbers |
| `Data\Uniques\axe.lua` | Changes |
| `Data\Uniques\sword.lua` | Changes |
| `Data\Uniques\quiver.lua` | Changes |
| `TreeData\3_27\tree.lua` | Cost Efficiency / Openness / Daring Ideas / some ascendancy text |
| `TreeData\3_28\tree.lua` | Cost Efficiency / Openness / Daring Ideas / some ascendancy text |

---

## C — Skill numbers (in `full` zip; omit for `lite`)

| File |
|------|
| `Data\Skills\act_str.lua` |
| `Data\Skills\act_dex.lua` |
| `Data\Skills\act_int.lua` |
| `Data\Skills\sup_str.lua` |
| `Data\Skills\sup_dex.lua` |
| `Data\Skills\sup_int.lua` |
| `Data\Skills\other.lua` |

---

## D — Optional / local

| Item | Note |
|------|------|
| **Test Jewel** slot in ItemsTab | Harmless in shared zip; not needed for end users |
| Large `legionicon.png` | Can resize (~64×64) if desired |

---

## X — Keep out of public zip

| File |
|------|
| `Data\_gen_foulborn_replacements.ps1` |
| `Data\_fetch_foulborn_gaps.ps1` |
| `Data\_count_foulborn_opts.ps1` |
| `Data\_list_multi_foulborn.ps1` |
| `Data\_foulborn_coverage.txt` |
| `Data\_foulborn_poedb_gaps.txt` |
| `Data\Skills_backup_pre_3.29_*\` |

---

## Package variants

| Variant | Contents |
|---------|----------|
| **full** (default `Pack-Overlay.ps1`) | A + B + C |
| **lite** (`Pack-Overlay.ps1 -Lite`) | A + B only |
| **pr-seeds** | A only (for future official PRs) |
