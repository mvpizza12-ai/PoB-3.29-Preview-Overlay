# Overlay 파일 목록

경로 기준: `%AppData%\Path of Building Community\`

범례:
- **A** = 기능/계산 (공유·PR 우선)
- **B** = 콘텐츠 데이터 (공유 OK, 공식 데이터로 대체 예정)
- **C** = 스킬 수치 덤프 (공유 OK, PR 비추)
- **D** = 로컬 전용 / 배포에서 빼도 됨
- **X** = 생성 스크립트·갭 로그 (배포 zip에서 제외 권장)

---

## A — 기능 / 계산 (우선 공유)

| 파일 | 내용 |
|------|------|
| `Classes\ItemsTab.lua` | Vestigial / Foulborn UI, Test Jewel 슬롯, 소켓 UI 연동 |
| `Classes\Item.lua` | vestigial/foulborn 플래그, 탈리스만/Eyes, 소켓 기본 White |
| `Classes\Tooltip.lua` | Legion / Foulborn 헤더 아이콘 |
| `Classes\GemSelectControl.lua` | 소켓 색 매칭 +10% Quality 표시 등 |
| `Modules\Data.lua` | Vestigial / FoulbornReplacements 로드, Vestigial 베이스 복제 |
| `Modules\ModParser.lua` | Cost Efficiency, Bifurcate, Spirit Infusion, Vestigial 등 |
| `Modules\CalcOffence.lua` | Bifurcate Crit, Cost Efficiency 적용 |
| `Modules\CalcPerform.lua` | Fanaticism 75% less Cost |
| `Modules\CalcSections.lua` | Cost Efficiency breakdown 표시 |
| `Modules\CalcSetup.lua` | 소켓 색 퀄리티 보너스 등 |
| `Modules\ConfigOptions.lua` | Spirit Infusion / Bifurcate / Communion / Fanaticism |
| `Modules\ItemTools.lua` | (관련 유틸 변경분) |
| `Assets\legionicon.png` | Vestigial 헤더 아이콘 |

---

## B — 콘텐츠 데이터

| 파일 | 내용 |
|------|------|
| `Data\Vestigial.lua` | Vestigial implicit 풀 |
| `Data\FoulbornReplacements.lua` | Foulborn 교체 카탈로그 (UI용) |
| `Data\ModFoulborn.lua` | Foulborn 모드 데이터 |
| `Data\ModFoulbornMap.lua` | 유니크↔Foulborn 맵 |
| `Data\EnchantmentTalisman.lua` | 탈리스만 인챈트 |
| `Data\Bases\amulet.lua` | 탈리스만 베이스 (신규/레거시) |
| `Data\Global.lua` | (색/글로벌 관련 변경분 있을 수 있음) |
| `Data\Uniques\jewel.lua` | 임시 전직 주얼 (`3.29 Temp: …`) 포함 |
| `Data\Uniques\amulet.lua` | 탈리스만/유니크 수치 |
| `Data\Uniques\body.lua` | 유니크 수치 |
| `Data\Uniques\boots.lua` | 유니크 수치 |
| `Data\Uniques\gloves.lua` | Cost Efficiency 등 |
| `Data\Uniques\helmet.lua` | Cost Efficiency 등 |
| `Data\Uniques\mace.lua` | 유니크 수치 |
| `Data\Uniques\ring.lua` | Cost Efficiency 등 |
| `Data\Uniques\staff.lua` | 캐스터 유니크 등 |
| `Data\Uniques\wand.lua` | 캐스터 유니크 등 |
| `Data\Uniques\shield.lua` | 유니크 수치 |
| `Data\Uniques\axe.lua` | (변경분) |
| `Data\Uniques\sword.lua` | (변경분) |
| `Data\Uniques\quiver.lua` | (변경분) |
| `TreeData\3_27\tree.lua` | Cost Efficiency / 일부 전직 문구 |
| `TreeData\3_28\tree.lua` | Cost Efficiency / 일부 전직 문구 |

---

## C — 스킬 수치 (공유용 full zip에 포함, PR 비추)

| 파일 |
|------|
| `Data\Skills\act_str.lua` |
| `Data\Skills\act_dex.lua` |
| `Data\Skills\act_int.lua` |
| `Data\Skills\sup_str.lua` |
| `Data\Skills\sup_dex.lua` |
| `Data\Skills\sup_int.lua` |
| `Data\Skills\other.lua` |

---

## D — 로컬 전용 (선택)

| 파일 | 권장 |
|------|------|
| `ItemsTab` 안의 **Test Jewel** 슬롯 | 공유 zip에 넣어도 무해하지만, PR/남에게는 없어도 됨 |
| `Assets\legionicon.png` 원본 2MB+ | 리사이즈본으로 교체 권장 |

---

## X — zip에서 제외 (배포자 로컬만)

| 파일 |
|------|
| `Data\_gen_foulborn_replacements.ps1` |
| `Data\_fetch_foulborn_gaps.ps1` |
| `Data\_count_foulborn_opts.ps1` |
| `Data\_list_multi_foulborn.ps1` |
| `Data\_foulborn_coverage.txt` |
| `Data\_foulborn_poedb_gaps.txt` |
| `Data\Skills_backup_pre_3.29_*\` (백업 폴더 전체) |

---

## 패키지 변형

### `full` (기본, Pack-Overlay.ps1)
A + B + C — 친구가 “그냥 깔고 쓰기”용.

### `lite` (수동으로 C 제외)
A + B만 — 스킬 수치 없이 UI/계산/아이템만.  
공식 스킬 데이터와 섞어 쓰고 싶을 때.

### `pr-seeds` (나중에)
A만 골라 공식 `dev`에 조각 PR.
