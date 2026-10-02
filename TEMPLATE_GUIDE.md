# 대전대학교 SW중심대학사업단 Git 템플릿 사용 안내

## 템플릿 받기

[README의 학생 빠른 시작](README.md#학생-빠른-시작)에서 자신의 환경에 맞는 방법을 선택합니다.

| 방법 | 필요한 도구 | 생성되는 결과 |
|---|---|---|
| Use this template | GitHub 계정 | 팀의 새 GitHub 저장소. 내려받기는 clone 또는 ZIP 사용 |
| Code → Download ZIP | 압축 해제 기능 | 전체 폴더와 양식. Git 이력은 포함되지 않음 |
| git clone | Git | 전체 폴더와 양식, Git 이력 |
| 폴더 생성 스크립트 | Windows PowerShell 또는 Bash, 내려받은 템플릿 | 지정한 새 폴더에 전체 양식 복사. Git 저장소는 생성하지 않음 |

Git은 빈 폴더를 보관하지 않으므로 `data/sample`, `reports/interim`, `reports/final`, `reports/presentation`에 `.gitkeep` 파일을 넣었습니다. 따라서 clone과 ZIP 압축 해제만으로 해당 폴더도 생성됩니다. 다른 폴더에는 설명 또는 작성 양식이 들어 있습니다.

## 스크립트 사용

템플릿 폴더에서 README의 명령을 실행합니다. 스크립트는 지정한 새 폴더에 템플릿 파일만 복사하며 원본은 그대로 유지합니다. 이미 존재하는 대상이나 템플릿 내부 경로는 거부합니다. 별도의 프로그램이나 패키지를 설치하지 않습니다.

- Windows: `scripts/create-project.ps1`의 `-ProjectPath`로 대상 경로를 지정합니다.
- Linux/macOS: `bash scripts/create-project.sh <대상 경로>`로 지정합니다. Bash가 필요합니다.
- 공백이 있는 경로는 따옴표로 감쌉니다.
- 대상 경로를 생략하면 현재 작업 폴더 옆에 `my-project` 폴더를 만듭니다.
- 생성 후 `README.md`, `docs/project-plan.md`, `docs/weekly-log.md`를 작성합니다.

## 자료 배치

- 소스코드: `src/`
- 테스트 또는 검증 자료: `tests/`
- 공개 가능한 데이터 설명·샘플: `data/`, `data/sample/`
- 이미지와 공용 자원: `assets/`
- 중간보고서·결과보고서·발표자료: `reports/interim/`, `reports/final/`, `reports/presentation/`
- 계획서·주간 활동·회의록·OSS 라이선스 검토: `docs/`

기업 자료, 개인정보, 비공개 데이터와 실제 비밀번호·API 키는 공개 저장소에 올리지 않습니다.

## GitHub에서 협업 시작하기

- **Issues → New issue → 작업 이슈**에서 작업 내용, 완료 기준, 담당자를 작성합니다.
- 작업 브랜치에서 변경한 뒤 `main`을 대상으로 Pull Request를 생성하면 공통 점검 양식이 표시됩니다.
- 팀원은 필요한 저장소 접근 권한을 부여받은 후 작업합니다.
- `.env.example`은 설정 항목의 예시입니다. 실제 값을 입력한 `.env`는 커밋하지 않습니다.
- 주간 활동은 `docs/weekly-log.md`에 실제 수행 내용과 이슈·PR·결과물 링크를 기록합니다.
- 라이선스는 [LICENSE_NOTICE.md](LICENSE_NOTICE.md)의 검토 절차에 따라 정합니다.

## 브랜치 예시

- `main`: 최종 제출 및 배포 기준
- `develop`: 개발 내용 통합
- `feature/login-page`: 기능 개발
- `fix/login-validation`: 오류 수정

브랜치명은 영문 소문자, 숫자, 하이픈, 슬래시를 사용하고 공백과 한글은 사용하지 않습니다.

GitHub 공식 안내: [템플릿으로 저장소 생성](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
