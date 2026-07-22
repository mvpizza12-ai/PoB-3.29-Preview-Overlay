# What’s in this overlay / 추가·변경된 기능

For end users. You do **not** need to read `FILELIST.md` unless you care which files were patched.  
일반 유저용입니다. 파일 목록이 궁금할 때만 `FILELIST.md`를 보세요.

---

## Data confidence / 데이터 신뢰도 (read this)

Nothing here is an official GGG / official PoB dump. Treat everything as a **community preview**.

| Tag | Meaning |
|-----|---------|
| **Patch-based** | Taken from public 3.29 patch notes (or clear system rules). Numbers may still be incomplete (e.g. only gem level 20). |
| **Curated / house rules** | Assembled or tuned by the pack author. **Not** a confirmed full in-game table. Expect differences when the league launches. |
| **Placeholder** | Temporary PoB-only hacks for testing (fake jewels, Config stand-ins). Not real item drops. |

### Explicitly curated / author-made (not confirmed full data)

| Feature | Tag | What was invented or hand-tuned |
|---------|-----|----------------------------------|
| **Vestigial implicit pool** (`Data/Vestigial.lua`) | **Curated** | Source uniques + mod lines + many **nerfed magnitudes** (e.g. merit-only / ~half on strong lines). Rules like “no Replica/Foulborn sources”, “skip pure demerits” are **author house rules**, not a verified GGG datamine. The real Vestigial pool may differ a lot. |
| **Vestigial / Legion header icon** | **Placeholder art** | Custom / edited icon, not an official PoB asset rip. |
| **`3.29 Temp: …` jewels** | **Placeholder** | Fake jewels so you can test ascendancy ideas (e.g. Unhallowed Rite / Spirit Infusion, Instruments of Justice) **before** real tree nodes exist. |
| **Communion added-damage scaling** | **Curated approx** | Patch describes the rework; per-level numbers in PoB are approximated. |
| **Skill gem tables past / below L20** | **Partial** | Often only L20 was updated from notes; L1–19 and L21+ growth may be wrong or flat. |
| **Ascendancy tree edits** | **Partial** | Some text/numbers changed from notes; **new node positions / full reworks** are not real layout data. |
| **Reliquarian 3.29 unique options** (`TreeData/3_28/tree.lua`) | **Patch-based / text swap** | Replaced Mirage Reliquarian choice nodes with Allflame unique-inspired options (Elevore, Vaal Caress, etc.). Same Display hubs / choice UI; old icons kept. Trigger skills (Raise Spiders, Suspend in Time, Molten Burst, Greater Harbinger) may not fully simulate in PoB. |
| **Talisman enchant pool** (`Data/EnchantmentTalisman.lua`) | **Curated / mostly author-made** | Most entries were **hand-filled for PoB preview**, not a confirmed full GGG enchant table. Expect large differences vs live. Treat as a placeholder pool so the Talisman enchant UI/system can be clicked through. |
| **Abyssal Jewel affix ranges** (`Data/ModJewelAbyss.lua`) | **Patch-based** | 3.29 Abyss jewel tier changes + removed Abyssal-monster / “not hit recently” mods; Impale no longer on Hypnotic/Ghastly. Lower tiers scaled from noted top tiers (exact mid-tier brackets may differ slightly from live). |
| **Caster weapon / base item rolls** (`Data/ModItem.lua`, `Bases/wand|ring|dagger.lua`) | **Patch-based approx** | Added-to-Spells flats (1H/staff), staff spell/ele % to ~200, hybrid spell+mana, spell crit floor 40% + staff 1.5x set; Moonstone cast speed; dagger crit implicits; Demon's Horn/Opal/Tornado → spell-damage implicits (exact % ranges approximated). Mid-tiers scaled from noted tops. |
| **Vestigial pool balance tweaks** (`Data/Vestigial.lua`) | **Curated** | Author-curated pool + rebalance. Includes Soul Mantle / Covenant / Expedition's End / Thrillsteel / Ravenous Passion / Triad Grip / Shroud of the Lightless / Vertex / Snakebite / Font of Thunder and related lines; magnitudes often half or chase-kept. Not a confirmed live table. |
| **Regular jewel Mana Cost Efficiency** (`Data/ModJewel.lua`) | **Patch-based** | `(10-15)% increased Mana Cost Efficiency` prefix (affix name `Thrifty` is placeholder until live naming is known). |
| **Cluster notables Openness / Daring Ideas** (`TreeData/*/tree.lua`) | **Patch-based** | Openness +15% Mana Cost Efficiency; Daring Ideas +25% Cost Efficiency of Attacks. |

### Closer to public sources (still unofficial)

| Feature | Tag | Notes |
|---------|-----|--------|
| **Foulborn replace catalog** | Patch/wiki-based + tools | Built from wiki / existing Foulborn mod maps where possible. UI limit of **2 replacements** matches observed trade reality, but catalog completeness isn’t guaranteed. |
| **Cost Efficiency calc** | Patch-based | System change from notes; which tree lines were converted may not be 100% exhaustive. |
| **Bifurcate Crit / Fanaticism less cost** | Patch-based | Mechanics implemented from note wording; edge cases may differ in live. |
| **White sockets + colour quality** | Patch-based | As described in notes. |
| **Foulborn / Vestigial UI** | Tooling | The buttons are pack features; they apply the data pools above. |

---

## English — feature list

### Item tools (Items tab)
- Button rows: **Enchant / Corrupt / Add Implicit** then **Foulborn / Vestigial / Volatile Vaal** (icons on the second row).
- **Volatile Vaal…** — 3.28+ Volatile Vaal Orb helper: expand unique/relic explicit mod ranges to the **0.78x-1.22x** envelope (nearest rounding, in-game orange preview), optionally max-roll, mark **Corrupted**. Optional follow-up Corrupt… for implicits. Some unscaleable lines are skipped by name match (not perfect).
- **Vestigial…** — Apply / remove Vestigial implicits. (**Pool = curated**, see above.) Legion header icon when applied.
- **Foulborn…** — Up to **2** Foulborn unique mod replacements. Title becomes `Foulborn …`.

### Calcs / systems
- **Cost Efficiency**, **Bifurcate Crit**, **Fanaticism 75% less Cost**, **Communion**, **Spirit Infusion** (often via Config / temp jewel).
- **Config charge UI (v0.1.10):** Power/Frenzy/Endurance labels use Int/Dex/Str colors; checkbox shows **Max N** on the right; hover tooltips for charge effects; Graven-style convert → **Absorption / Affliction / Brutal** rename (same colors).
- **Plume of Pursuit (v0.1.11):** Config **Repeat Mode** visible when equipped (default Average). Final repeat = Always Crit; with Assassin Bifurcate both rolls succeed on that hit (`2M-1`). Non-final stays 80% less / no crit. Bifurcate “100% more” = double crit *excess*, not +100% total DPS.

### Sockets & gems
- Default **White** sockets; matching coloured socket → gem **+10% Quality**.

### Talismans
- Enchant pool + Eyes of the Greatwolf-related handling.  
  **Enchant list is mostly author-curated / placeholder** — not confirmed live data.

### Skills & tree
- Many gem numbers from notes (**mostly L20**; mid-level curves may be approximate).
- **3.29 skill pass (v0.1.9):** Bodyswap life%/AoE; cold gems **25% freeze**; Freezing Pulse / Winter Orb / ED of Wickedness / Soulrend of Reaping projectile scaling; Incinerate stages; Void Sphere / Voltaxic conversion; Vaal Ice Nova / Firestorm; Cremation family; Galvanic Field; quality redesigns; Cast on Ward Break 400% CDR cap; mine cost multipliers; Spark alts / Ice Spear of Splitting / Lightning Conduit of the Heavens / Rolling Magma / supports (Unleash, CwC, Ballista, Companionship, etc.). L20 ADE re-checked vs patch list.
- Some tree/unique wording updates.
- **`3.29 Temp: …` jewels** = placeholders only.

### Abyssal jewels
- Affix ranges / removed mods updated from the Abyss Revamp notes (`ModJewelAbyss.lua`).

### Caster weapons / bases (Item Changes)
- Added Damage to Spells prefixes buffed (1H + staff; cold/lightning/influenced/delve scaled from fire tops).
- Staff increased Spell/Fire/Cold/Lightning Damage prefixes up to ~200%.
- Hybrid Spell+Mana tops ~49% (1H) / ~86% (staff).
- Spell crit on 1H starts at 40%; staff uses a higher (×1.5) set.
- Moonstone Ring: cast speed implicit; dagger global crit implicits up; Demon's Horn / Opal / Tornado Wand: spell damage implicits (approx).

### Regular / cluster jewels
- Regular jewels: `(10-15)% increased Mana Cost Efficiency` rollable affix.
- Cluster notables: **Openness** (+15% Mana Cost Efficiency), **Daring Ideas** (+25% Cost Efficiency of Attacks).

### New 3.29 uniques (preview)
| Unique | Tag | Notes |
|--------|-----|--------|
| **Spinesnatch** (Fleshripper) | **poedb** | 6 Abyssal Sockets; per socketed Searching/Hypnotic/Murderous → **weapon-local** AS/crit/phys (calc + item tooltip header); Ghastly → minion Impale (global). |
| **Subsume the Source** (Faithful Helmet) | **Teaser approx** | **Subsume...** UI: pick up to **4** mods from abyss jewel affix pool (best tier/group, deduped; duplicates allowed). Retained count consumes abyssal sockets (`4 - N` left). Socketed jewels grant **no** effect. `(150-200)% Magnitudes` scales retained mods only. Tooltip **sums identical retained mods** into one line. |
| **Seablister** | **poedb** | Stats from poedb; **Savage Barnacle** is a skill stub (granted, limited calc). |
| **Stormblood** | **poedb** | Crit flask charge + all crit damage can Shock/Sap; 50% less duration. |
| **The Crustacean's Call** | **Teaser approx** | Crab Totem support stub (Spell Totem-like); spell dmg / totem duration ranges are placeholders until live numbers. |

### Item Changes (3.29 preview — ModItem)
- **New corruption implicits** (`V329*`): aura reservation efficiency on rings, Purity of Elements aura effect, max/min charges, max resists, keystones on shields/boots, belt immunities, mana cost efficiency, attributes, socketed gem quality/levels, DoT multi, crit multi, ground immunities, curses on hit, L10 supports, explode on kill, 1H cast speed, staff spell damage, etc. Weights/affix names are **approx**.
- Existing corrupt updates: specific-aura effect **amulet-only 20–30%**; ring **Global Damage**; belt life **6–10%**; caster staff cast **22–28%**; removed aura/curse grants / stationary armour / moving evasion / shield block% / area&proj taken / helmet burning.
- Staff **+ spell gem level**: extra tiers; damage-type gems up to **+4** (lower tiers earlier/common).
- Caster weapons: Fire/Cold/Lightning **% suffixes** weight 0 (jewellery kept). Stun Threshold off sceptre/caster staff; Stun Duration only mace/warstaff/sword/axe/bow.

### Unique Item Changes (3.29 dump)
- Official **Unique Item Changes** (~45 named rebalances) are in `Data\Uniques\*.lua` as `Pre 3.29.0` / `Current` variants (plus Foulborn cost-efficiency / Rathpith lines in `FoulbornReplacements.lua`).
- Notes: `_unique_dump_329_notes.txt` (share folder + under `Data\Uniques\`).
- **New drop uniques** with preview entries: Spinesnatch, Subsume the Source, Seablister, Stormblood, The Crustacean’s Call. Other announced new uniques without full public rolls are still missing.

### Not included (still missing vs patch notes — important)
- Remaining **new** uniques beyond the curated 5 (no full public stat dumps yet).
- Pact exceptional gems; Luminary; Atlas Anomalies UI.
- Synthesis/Harvest/Beastcraft economy changes (mostly non-PoB).
- Perfect full-level skill curves; Subsume consume/retain jewel crafting UI.
- Crafting-bench removal of ele-% suffixes (ModItem roll pool only for now).

**Replace this overlay with official PoB 3.29 data when it ships.**

---

## 한국어 — 기능 목록

### 데이터 신뢰도 (중요)
- **Vestigial 속성 풀**은 패치에 “있다”는 개념만 있고, **들어간 유니크/수치/너프 규칙(메리트만·절반 등)은 제작자가 임의로 정리한 것**입니다. 라이브와 다를 수 있습니다.
- **탈리스만 인챈트 풀**도 대부분 **제작자가 PoB 미리보기용으로 임의로 넣은 것**(일부만 공개 영상/노트, 나머지는 대칭 추측)입니다. 확정된 인게임 전체 테이블이 아닙니다.
- **`3.29 Temp:` 주얼**은 전직 노드가 없을 때 테스트하려고 넣은 **가짜 아이템**입니다.
- **스킬 수치**는 패치노트(주로 20레벨) 기준 근사이며, 전 레벨 곡선은 보장하지 않습니다.
- **Foulborn 목록**은 위키/기존 데이터에 가깝지만 완전하진 않을 수 있고, UI **최대 2개** 제한은 관측 기준입니다.

### 아이템 도구 (Items 탭)
- 버튼 배치: **인챈트 / 커럽트 / Add Implicit** 다음 줄 **Foulborn / Vestigial / Volatile Vaal** (2번째 줄에 아이콘)
- **Volatile Vaal…** — 3.28+ 폭발성 바알 오브: 유니크/유물 explicit 범위를 **0.78x~1.22x** 엔벨로프로 확장(반올림, 인게임 주황 미리보기와 동일 개념) 후 **Corrupted**. 최대 롤·이어서 Corrupt…(임플릿) 옵션. 스케일 불가 모드는 이름 매칭으로 일부만 스킵(완전하진 않음).
- **Vestigial…** — Vestigial 임플리싯 적용/제거 (**풀 = 임의 정리**)
- **Foulborn…** — Foulborn 교체 최대 2개

### 계산 / 시스템
- Cost Efficiency, Bifurcate Crit, Fanaticism 75% less, Communion, Spirit Infusion(Config/임시 주얼)
- **컨피그 차지 UI (v0.1.10):** Power/Frenzy/Endurance 색(지/민/힘), 체크 오른쪽 Max, 호버 효과 툴팁, 변환 시 Absorption/Affliction/Brutal 표시
- **Plume of Pursuit (v0.1.11):** Repeat Mode 표시(기본 Average); 최종 확정 치명 + Bifurcate 시 `2M−1`(초과분만 2배). 전체 DPS +100% 아님

### 소켓 / 젬
- 기본 White, 색 매칭 시 퀄 +10%

### 탈리스만 / 스킬 / 트리 / 심연·일반·클러스터 주얼
- 탈리스만 인챈트 풀 = **대부분 임의/추측** (플레이스홀더에 가깝음)
- **구(pre-3.29) 탈리스만 베이스** = 제작 목록에서 숨김(`hidden`); 데이터는 Standard/import용으로 유지. 3.29 신규 탈리스만만 목록에 표시
- Eyes of the Greatwolf 관련 처리 (**부분**)
- 스킬·트리 문구 (**근사 / 부분**)
- **3.29 스킬 패스 (v0.1.9):** 바디스왑, 동결 25%, FP/WO/ED/Soulrend 프로젝타일, Incinerate/Void/Voltaxic/Vaal/Cremation/Galvanic, 퀄·서포트·L20 ADE 등 패치노트 대비 재반영 (중간 레벨 커브는 근사일 수 있음)
- `3.29 Temp:` 주얼 = **플레이스홀더**
- **심연 주얼** 모드 수치·제거 모드 = 패치노트 반영
- **캐스터 무기/베이스** = 주문 플렛·지팡이 스펠%·하이브리드·스펠크리·문스톤/단검/일부 완드 임플릿 + 속성% 서픽스 제거·스턴 롤 변경 (**중간티어·완드%는 근사**)
- **지팡이 +주문 젬레벨** = 추가 티어, 속성별 최대 **+4**
- **신규 타락 임플릿 대부분** = `ModItem` `V329*` + 기존 타락 조정 (**웨이트/일부 문구 근사**)
- **일반 주얼** `(10-15)% Mana Cost Efficiency`, 클러스터 **Openness** / **Daring Ideas** = 패치노트 반영
- **Unique Item Changes 덤프**: 패치에 이름 나온 기존 유니크 리밸런스 대부분 (`Pre 3.29.0`/`Current`) + Foulborn 관련 정리
- **신규 유니크(프리뷰)**: Spinesnatch / **Subsume the Source**(`Subsume...`) / Seablister / Stormblood / The Crustacean's Call — 그 외 신규 유니크·Pact/Luminary 등 = 미포함

공식 PoB 3.29가 나오면 이 overlay는 지우세요.
