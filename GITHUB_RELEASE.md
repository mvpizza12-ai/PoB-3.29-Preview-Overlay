# GitHub에 올릴 때 복붙용

아래를 그대로 쓰면 됩니다. (저장소 이름은 예시)

---

## 1) 저장소 설명 (About / Description)

```
Unofficial Path of Building Community overlay for PoE 3.29 (Curse of the Allflame) preview. Not affiliated with GGG or official PoB.
```

짧은 한글 버전:

```
PoE 3.29용 비공식 Path of Building 덮어쓰기 패키지. 공식 PoB/GGG와 무관.
```

---

## 2) 첫 커밋 메시지

```
Add unofficial PoB 3.29 preview overlay pack.

Ship install docs, file list, and a pack script so others can drop
Vestigial/Foulborn UI, cost-efficiency calcs, and pre-launch skill
numbers onto Path of Building Community before official 3.29 data.
```

한글만 쓰고 싶으면:

```
비공식 PoB 3.29 프리뷰 overlay 패키지 추가

Vestigial/Foulborn UI, Cost Efficiency 계산, 론칭 전 스킬 수치를
공식 데이터 나오기 전에 덮어쓸 수 있게 README·파일목록·패킹 스크립트를 정리.
```

---

## 3) Release 제목

```
v0.1.0 — Unofficial PoB 3.29 Preview Overlay (full)
```

---

## 4) Release 본문 (복붙)

```markdown
## 이게 뭐야?
Path of Building Community에 파일 몇 개를 **덮어쓰면**  
PoE 3.29(저주받은 올플레임) 패치 내용을 **미리** 비슷하게 쓸 수 있게 만든 **비공식** 패키지입니다.

공식 PoB가 3.29 데이터를 받기 전까지 쓰는 **임시** 물건이에요.  
론칭 후 공식 업데이트 나오면 **지우고 공식 PoB 쓰세요.**

## 포함
- Vestigial / Foulborn 아이템 UI
- Cost Efficiency, Bifurcate Crit, Communion 등 계산
- 탈리스만 관련 데이터
- 패치노트 기준 스킬 수치 (주로 젬 20레벨 기준, 완전 정확하진 않을 수 있음)

## 설치 (원클릭)
1. zip 압축 해제
2. **PoB 완전 종료** (트레이까지)
3. 풀린 폴더의 **`Install.bat` 더블클릭** → Y
4. PoB 실행 → **F5**
5. Items 탭에서 `Vestigial...` / `Foulborn...` 보이면 OK

수동: `%AppData%\Path of Building Community`에 Classes/Data/Modules 등 덮어쓰기

## 주의
- 비공식 / 근사치입니다. 공식 수치와 다를 수 있습니다.
- 빌드 코드(pobb.in)만 공유해도 상대에게 이 기능은 안 갑니다. **상대도 이 zip을 깔아야** 합니다.
- GGG · Path of Building Community 공식과 무관합니다.

## 파일
- `PoB-3.29-Preview-overlay-full-YYYYMMDD.zip` — 전체
- (있으면) `...-lite-...zip` — 스킬 수치 제외, UI/계산만
```

---

## 5) Discord / 커뮤니티 한 줄 + 짧은 글

한 줄:

```
[비공식] PoB 3.29 프리뷰 overlay — Vestigial/Foulborn UI + 일부 계산/스킬 수치. 론칭 후 폐기 예정. 공식 아님.
```

짧은 글:

```
PoB에 3.29 내용 미리 얹어 쓰는 비공식 덮어쓰기 팩 올립니다.
공식 데이터 나오기 전용이고, 수치 틀린 부분 있을 수 있어요.
설치: PoB 끄고 AppData\Path of Building Community 에 zip 덮어쓰기 → F5
빌드 링크만 주면 안 되고, 받는 사람도 이 팩을 깔아야 합니다.
```
