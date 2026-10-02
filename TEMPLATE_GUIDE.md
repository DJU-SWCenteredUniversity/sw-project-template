# 대전대학교 SW중심대학사업단 Git 템플릿 사용 안내

이 폴더는 전공 실습, OSS 동아리, 기업연계캡스톤디자인, 해커톤·경진대회 프로젝트에서 공통으로 사용할 수 있는 Git 저장소 기본 구조이다.

## 사용 절차

1. GitHub에서 **Use this template → Create a new repository**를 선택하고 소유자, 프로젝트 이름, 공개 범위를 정해 팀 저장소를 생성한다. 비공개 템플릿은 접근 권한이 있는 계정으로 사용한다. 내려받은 폴더로 시작하는 경우에는 프로젝트명으로 복사한 뒤 별도 저장소에 올린다.
2. `README.md`, `docs/project-plan.md`, `docs/weekly-log.md`의 빈 항목을 작성한다.
3. 소스코드는 `src/`, 테스트 또는 검증 자료는 `tests/`, 공개 가능한 데이터 설명은 `data/`에 정리한다.
4. 중간보고서, 결과보고서, 발표자료는 `reports/` 아래에 보관한다.
5. 외부 OSS를 사용할 경우 `docs/oss-license-check.md`에 라이선스와 출처를 기록한다.
6. 기업 자료, 개인정보, 보안 취약점 정보, 비공개 데이터는 공개 저장소에 올리지 않는다.

## 브랜치 예시

- `main`: 최종 제출 및 배포 기준 브랜치
- `develop`: 다음 배포를 위한 통합 개발 브랜치
- `feature/login-page`: 기능 단위 개발 브랜치
- `fix/login-validation`: 일반 오류 수정 브랜치
- `hotfix/bugfix-123`: 긴급 버그 수정 브랜치
- `release/v1.2.0`: 배포 준비 브랜치

브랜치명은 영문 소문자, 숫자, 하이픈, 슬래시를 사용하고 공백과 한글은 사용하지 않는다.

## GitHub에서 협업 시작하기

- **Issues → New issue → 작업 이슈**에서 작업 내용, 완료 기준, 담당자를 작성한다.
- 작업 브랜치에서 변경한 뒤 `main`을 대상으로 Pull Request를 생성하면 공통 점검 양식이 표시된다.
- 팀원은 필요한 저장소 접근 권한을 부여받은 후 작업한다.
- `.env.example`은 설정 항목의 예시다. 실제 비밀번호나 API 키를 입력한 `.env` 파일은 커밋하지 않는다.
- 주간 활동은 `docs/weekly-log.md`에 실제 수행 내용과 확인 가능한 이슈·PR·결과물 링크를 기록한다.
- 라이선스는 [LICENSE_NOTICE.md](LICENSE_NOTICE.md)의 검토 절차에 따라 정한다.

GitHub 공식 안내: [템플릿으로 저장소 생성](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
