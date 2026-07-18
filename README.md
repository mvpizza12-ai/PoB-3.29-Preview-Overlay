# Path of Building — Unofficial 3.29 Preview Overlay

**비공식 · 론칭 전 근사 데이터 · 공식 PoB 업데이트 시 덮어씌워질 수 있음**

Path of Exile 3.29 (Curse of the Allflame) 패치노트·위키·영상 기준으로  
[Path of Building Community](https://github.com/PathOfBuildingCommunity/PathOfBuilding) 설치본에 얹는 **파일 덮어쓰기 패키지**입니다.

공식 export / 공식 릴리즈가 나오면 이 overlay는 **폐기**하는 것을 권장합니다.

---

## 포함 내용 (요약)

| 영역 | 내용 |
|------|------|
| 계산 | Cost Efficiency, Bifurcate Crit, Fanaticism 75% less Cost, Communion, Spirit Infusion(Config) |
| 아이템 UI | Vestigial 피커 + Legion 아이콘, Foulborn 교체 UI (최대 2슬롯) |
| 탈리스만 | EnchantmentTalisman, Eyes of the Greatwolf 관련, 신규/레거시 베이스 |
| 스킬 | 패치노트 반영 스킬/서포트 수치 (주로 L20 기준, L21+는 L20 유지인 경우 많음) |
| 트리/유니크 | Cost Efficiency 문구 전환, 일부 전직 문구·임시 주얼, 캐스터 유니크 일부 |
| 소켓 | 기본 White, 색 매칭 시 젬 +10% Quality |

자세한 파일 목록은 `FILELIST.md` 참고.

---

## 설치 방법 (추천: 원클릭)

1. zip을 **아무 데나** 압축 해제합니다. (다운로드 폴더 OK)
2. **Path of Building을 완전히 종료**합니다. (트레이 아이콘까지)
3. 풀린 폴더 안의 **`Install.bat`을 더블클릭** → `Y` 입력
4. PoB 실행 → 키보드 **F5**
5. Items 탭에 `Vestigial...` / `Foulborn...` 버튼이 보이면 성공

`Install.bat`이 기본으로 `%AppData%\Path of Building Community`를 찾습니다.  
경로를 옮긴 경우: 창에 PoB 폴더 경로를 붙여넣거나, `Path of Building.exe`를 `Install.bat` 위로 드래그앤드롭하면 됩니다.

### 수동 설치 (bat이 막힐 때)

1. PoB 완전 종료
2. `Win+R` → `%AppData%\Path of Building Community` → Enter
3. zip에서 나온 `Classes`, `Data`, `Modules`, `TreeData`, `Assets`를 그 폴더에 덮어쓰기
4. PoB 실행 → F5

### 제거 / 롤백

- 3번에서 떠 둔 백업 zip으로 복원하거나
- 공식 PoB 업데이터를 다시 돌리면 대부분 원상복구됩니다.  
  (커스텀 전용 파일 `Data\Vestigial.lua`, `Data\FoulbornReplacements.lua`, `Assets\legionicon.png` 등은 수동 삭제)

---

## 주의

- **빌드 코드(pobb.in)만으로는 이 기능이 전달되지 않습니다.** 상대도 같은 overlay를 깔아야 합니다.
- 스킬 L1–19 곡선·L21+ 성장은 패치노트에 L20만 있는 경우가 많아 **완전 정확하지 않을 수 있습니다.**
- 전직 신규 노드 좌표·Luminary·Pact 젬 등은 **미포함/임시**입니다.
- `Assets\legionicon.png`는 고해상도일 수 있습니다. 용량이 부담되면 64×64 전후로 줄여도 됩니다.
- `Test Jewel` 슬롯은 로컬 테스트용입니다. 공유 빌드에 의존하지 마세요.

---

## 권장 공유 방식

1. **GitHub Release**에 `PoB-3.29-Preview-overlay.zip` + 이 README 업로드  
2. Discord/커뮤니티에 올릴 때 맨 위 경고문(비공식·폐기 예정) 고정  
3. 나중에 공식 PoB에 넣고 싶은 것만 골라 PR (계산/UI). 스킬 수치 덤프는 PR 비추천

### PR 후보로 쪼개기 좋은 것

- Foulborn / Vestigial UI  
- Cost Efficiency / Bifurcate / Communion 계산  
- 탈리스만 인챈트 구조  

### PR에 넣지 않는 편이 좋은 것

- 스킬 파일 일괄 L20 패치  
- `3.29 Temp:` 임시 주얼  
- 트리 좌표 없는 전직 땜질  

---

## 라이선스 / 출처

- 원본: Path of Building Community (MIT 등 원 프로젝트 라이선스 따름)
- 게임 밸런스 수치: Grinding Gear Games 패치노트 기반 비공식 반영
- Vestigial 아이콘: 커뮤니티 제작/편집 에셋 (재배포 시 출처 표기 권장)

---

## 패키지 만들기 (배포자용)

PoB가 설치된 PC에서:

```powershell
cd "$env:USERPROFILE\Downloads\PoB-3.29-Preview-Share"
.\Pack-Overlay.ps1
```

결과: 같은 폴더에 `PoB-3.29-Preview-overlay.zip` 생성.
