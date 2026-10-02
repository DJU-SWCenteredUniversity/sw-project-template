# 대전대학교 SW중심대학사업단 프로젝트 Git 템플릿

전공 실습, AI·OSS 동아리, 기업연계캡스톤디자인, 해커톤·경진대회에서 사용하는 프로젝트 기록 및 협업 양식입니다.

## 학생 빠른 시작

**Git을 처음 사용한다면 ZIP 다운로드로 시작하세요.** 압축을 풀면 소스코드·문서·보고서 폴더와 작성 양식이 모두 준비됩니다. GitHub에서 팀원과 협업하려면 먼저 **Use this template**으로 팀 저장소를 만드세요.

### 1. GitHub에서 팀 저장소 만들기

1. 이 저장소 상단의 **Use this template → Create a new repository**를 누릅니다.
2. 팀 저장소 이름과 공개 범위를 정해 생성합니다.
3. 생성한 **팀 저장소**의 **Code → HTTPS** 주소를 복사해 `git clone <팀 저장소 주소>`로 내려받습니다. Git 설치가 필요합니다.

### 2. ZIP으로 내려받기 — Git 설치 없이 시작

1. 상단의 **Code → Download ZIP**을 누릅니다.
2. Windows는 ZIP 파일을 오른쪽 클릭해 **압축 풀기**, Linux는 압축 관리자에서 **압축 풀기**를 선택합니다.
3. 생성된 `sw-project-template-main` 폴더를 원하는 프로젝트 이름으로 바꿉니다. `docs`, `src`, `tests`, `data`, `assets`, `reports`, `scripts` 폴더가 이미 들어 있습니다.

### 3. 공통 템플릿을 바로 clone하기

터미널에서 아래 명령을 실행하면 `my-project` 폴더와 전체 기본 구조가 생성됩니다. Git 설치가 필요합니다.

```sh
git clone https://github.com/DJU-SWCenteredUniversity/sw-project-template.git my-project
cd my-project
```

이 방법은 공통 템플릿의 복제본을 만듭니다. 팀의 GitHub 저장소와 연결해서 작업하려면 1번 방법으로 시작하는 것이 편합니다.

### 4. 스크립트로 새 프로젝트 폴더 만들기

ZIP 또는 clone으로 받은 **템플릿 폴더 안에서** 실행합니다. 별도의 `my-project` 폴더에 전체 폴더 구조와 작성 양식을 복사합니다. Git 설치·인터넷 연결이 필요하지 않습니다. 경로는 원하는 이름으로 바꿀 수 있으며, 이미 존재하는 대상 폴더에는 실행되지 않습니다.

**Windows PowerShell**

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\create-project.ps1 -ProjectPath ..\my-project
```

위 실행 정책은 이 명령의 프로세스에만 적용됩니다.

**Linux / macOS 터미널**

```sh
bash scripts/create-project.sh ../my-project
```

## 시작한 뒤 할 일

1. 아래 `프로젝트명`과 프로젝트 개요를 자신의 팀 내용으로 작성합니다.
2. [계획서](docs/project-plan.md)를 작성하고 [주간 기록](docs/weekly-log.md)을 시작합니다.
3. 코드는 `src/`, 검증 자료는 `tests/`, 발표·보고서는 `reports/`에 넣습니다.

상세 안내는 [사용 안내](TEMPLATE_GUIDE.md), 전체 구성은 [폴더 트리](FOLDER_TREE.md), 협업 규칙은 [CONTRIBUTING](CONTRIBUTING.md)을 확인하세요. 이 템플릿에는 실행 가능한 앱이 포함되어 있지 않습니다. 아래 실행 방법은 팀의 실제 프로젝트에 맞게 작성합니다.

---

# 프로젝트명

## 1. 프로젝트 개요

- 교과목/프로그램:
- 팀명:
- 지도교수:
- 기업 멘토:
- 참여 학생:
- 수행 기간:

## 2. 문제 정의 및 목표

- 해결하려는 문제:
- 주요 사용자:
- 기대효과:

## 3. 기술 스택

| 구분 | 내용 |
|---|---|
| 언어 |  |
| 프레임워크 |  |
| 데이터 |  |
| OSS 도구 |  |
| 개발환경 |  |

## 4. 실행 방법

1. 저장소를 복제한다.
2. 필요한 의존성을 설치한다.
3. 실행 명령을 입력한다.
4. 테스트 또는 시연 절차를 확인한다.

## 5. 결과물

- 주요 기능:
- 시연 자료:
- 발표 자료:
- 결과보고서:

## 6. 공개 범위

- 공개 저장소 여부:
- 비공개 또는 일부 공개 사유:
- 대체 증빙자료:

## 7. 라이선스

사용한 오픈소스와 라이선스 검토 결과는 `docs/oss-license-check.md`에 기록한다.
