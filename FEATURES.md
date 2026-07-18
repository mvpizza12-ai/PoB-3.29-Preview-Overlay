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
| **Talisman enchant list** | **Partial / curated** | Enough to use the system in PoB; not guaranteed complete vs live. |

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
- **Vestigial…** — Apply / remove Vestigial implicits. (**Pool = curated**, see above.) Legion header icon when applied.
- **Foulborn…** — Up to **2** Foulborn unique mod replacements. Title becomes `Foulborn …`.

### Calcs / systems
- **Cost Efficiency**, **Bifurcate Crit**, **Fanaticism 75% less Cost**, **Communion**, **Spirit Infusion** (often via Config / temp jewel).

### Sockets & gems
- Default **White** sockets; matching coloured socket → gem **+10% Quality**.

### Talismans
- Enchant pool + Eyes of the Greatwolf-related handling (**partial**).

### Skills & tree
- Many gem numbers from notes (**mostly L20**).
- Some tree/unique wording updates.
- **`3.29 Temp: …` jewels** = placeholders only.

### Not included
- Full new ascendancy layouts, Luminary, Pact-style exceptional gems, perfect full-level skill curves.

**Replace this overlay with official PoB 3.29 data when it ships.**

---

## 한국어 — 기능 목록

### 데이터 신뢰도 (중요)
- **Vestigial 속성 풀**은 패치에 “있다”는 개념만 있고, **들어간 유니크/수치/너프 규칙(메리트만·절반 등)은 제작자가 임의로 정리한 것**입니다. 라이브와 다를 수 있습니다.
- **`3.29 Temp:` 주얼**은 전직 노드가 없을 때 테스트하려고 넣은 **가짜 아이템**입니다.
- **스킬 수치**는 패치노트(주로 20레벨) 기준 근사이며, 전 레벨 곡선은 보장하지 않습니다.
- **Foulborn 목록**은 위키/기존 데이터에 가깝지만 완전하진 않을 수 있고, UI **최대 2개** 제한은 관측 기준입니다.

### 아이템 도구 (Items 탭)
- **Vestigial…** — Vestigial 임플리싯 적용/제거 (**풀 = 임의 정리**)
- **Foulborn…** — Foulborn 교체 최대 2개

### 계산 / 시스템
- Cost Efficiency, Bifurcate Crit, Fanaticism 75% less, Communion, Spirit Infusion(Config/임시 주얼)

### 소켓 / 젬
- 기본 White, 색 매칭 시 퀄 +10%

### 탈리스만 / 스킬 / 트리
- 탈리스만·Eyes 관련 (**부분**)
- 스킬·트리 문구 (**근사 / 부분**)
- `3.29 Temp:` 주얼 = **플레이스홀더**

공식 PoB 3.29가 나오면 이 overlay는 지우세요.
