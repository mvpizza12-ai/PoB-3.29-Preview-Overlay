# Path of Building — Unofficial 3.29 Preview Overlay

**Unofficial · pre-launch approximate data · may be overwritten by official PoB updates**  
**비공식 · 론칭 전 근사 데이터 · 공식 PoB 업데이트 시 덮어씌워질 수 있음**

English first, Korean below. / 영어 먼저, 한국어는 아래.

### Start here / 여기서 시작
- **What features were added?** → [`FEATURES.md`](FEATURES.md)  
  (Vestigial, Foulborn, Cost Efficiency, sockets, …)
- **What’s curated vs patch-based?** → same file, section **Data confidence**  
  (Vestigial pool, temp jewels, skill curves, … are marked clearly)
- **Which files are patched?** → [`FILELIST.md`](FILELIST.md)  
  (for packagers / contributors)

> **Important:** The **Vestigial implicit pool**, **Talisman enchant pool**, and several magnitudes are **author-curated / mostly guessed**, not confirmed GGG datamines. Read FEATURES before treating numbers as truth.  
> **중요:** Vestigial 속성 풀·**탈리스만 인챈트 풀**·일부 수치는 **제작자가 임의로 정리/추측한 것**입니다. 확정 데이터가 아닙니다.

---

## English

File overlay for [Path of Building Community](https://github.com/PathOfBuildingCommunity/PathOfBuilding) based on Path of Exile **3.29 (Curse of the Allflame)** patch notes / wiki / footage.

When official PoB ships real 3.29 data, **delete this overlay** and use the official build.

**Feature overview:** see [`FEATURES.md`](FEATURES.md).

### Install (one-click)

1. Extract the Release **zip** anywhere (Downloads is fine).
2. **Fully quit Path of Building** (including tray icon).
3. Double-click **`Install.bat`** in the extracted folder → press `Y`.
4. Launch PoB → press **F5** (full reload).
5. Success if Items tab shows `Vestigial...` / `Foulborn...`.

`Install.bat` looks for `%AppData%\Path of Building Community` by default.  
Custom install path: paste the PoB folder when asked, or drag `Path of Building.exe` onto `Install.bat`.

#### Manual install

1. Quit PoB.
2. `Win+R` → `%AppData%\Path of Building Community` → Enter.
3. Copy `Classes`, `Data`, `Modules`, `TreeData`, `Assets` from the zip into that folder (overwrite).
4. Launch PoB → F5.

### Warnings

- Sharing a **pobb.in / build code alone does not include this overlay**. The other person must install the same zip.
- Skill curves for levels 1–19 / growth past 20 may be incomplete (patch notes often only list L20).
- New ascendancy node positions, Luminary, Pact gems, etc. are missing or temporary.
- Not affiliated with Grinding Gear Games or official Path of Building Community.

### Download

Use the **[Releases](https://github.com/mvpizza12-ai/PoB-3.29-Preview-Overlay/releases)** page — grab the `PoB-3.29-Preview-overlay-full-*.zip` asset.

---

## 한국어

Path of Exile 3.29 (저주받은 올플레임) 패치노트·위키·영상 기준으로  
[Path of Building Community](https://github.com/PathOfBuildingCommunity/PathOfBuilding)에 얹는 **파일 덮어쓰기 패키지**입니다.

공식 3.29 데이터가 나오면 이 overlay는 **폐기**하세요.

**추가된 기능 요약:** [`FEATURES.md`](FEATURES.md)

### 설치 (원클릭)

1. Release **zip**을 아무 데나 압축 해제
2. **PoB 완전 종료** (트레이까지)
3. 풀린 폴더의 **`Install.bat` 더블클릭** → `Y`
4. PoB 실행 → **F5**
5. Items에 `Vestigial...` / `Foulborn...` 보이면 성공

기본 경로: `%AppData%\Path of Building Community`  
경로를 옮긴 경우: 경로 붙여넣기, 또는 exe를 `Install.bat` 위에 드래그

### 주의

- **빌드 코드만으로는 전달 안 됨.** 상대도 같은 zip을 설치해야 함.
- 스킬 L1–19 / L21+ 성장은 부정확할 수 있음.
- GGG · 공식 PoB와 무관.

### 다운로드

**[Releases](https://github.com/mvpizza12-ai/PoB-3.29-Preview-Overlay/releases)** 에서  
`PoB-3.29-Preview-overlay-full-*.zip` 받기.

---

## Pack (maintainers)

```powershell
cd "$env:USERPROFILE\Downloads\PoB-3.29-Preview-Share"
.\Pack-Overlay.ps1
```

Creates `PoB-3.29-Preview-overlay-full-YYYYMMDD.zip` in the same folder.
