# STM32 실시간 시스템 프로젝트

본 프로젝트는 STM32 F401RE 마이크로컨트롤러 기반의 실시간 시스템 구현 코드입니다.  
STM32CubeIDE 환경에서 개발되었으며, 아래 내용은 프로젝트를 직접 따라해 보기 위한 절차입니다.

## 📋 필수 사전 준비

### 하드웨어
- **개발 보드**: STM NUCLEO-F401RE
- **연결 케이블**: USB Type-A to Micro-B
- 센서, 액추에이터 등 기타 필요한 주변기기 (옵션)

### 소프트웨어
- [STM32CubeIDE 다운로드](https://www.st.com/en/development-tools/stm32cubeide.html) (버전: 1.18.1 기준)
- PuTTY/Tera Term 등 시리얼 터미널 프로그램

## 🛠️ 설치 및 설정 가이드

### 1. STM32CubeIDE 설치
1. 공식 사이트에서 설치 파일 다운로드 (로그인 필요)
2. 설치 마법사 따라 진행 (모두 기본 옵션 권장)
3. 설치 완료 후 IDE 실행
4. **(필수)** `Help → Configuration Tool → Manage Embedded Software Packages → STM32Cube MCU Packages → STM32F4 → STM32Cube MCU Package for STM32F4 Series 설치 (로그인 필요)`

### 2. VSCode에서 프로젝트 불러오기
```bash
# 프로젝트 파일은 STM 기본 workspace 경로에 위치해야 함
cd C:\Users\{USER_NAME}\STM32CubeIDE\workspace_{VERSION}
git clone https://github.com/ktwktw109/RS-STM32-401RE.git
cd RS-STM32-401RE
```

### 3. STM32CubeIDE에서 프로젝트 열기
1. IDE 실행 후 상단 메뉴에서 `File → Import` 선택
2. `General/Existing Projects into Workspace` 선택 후 Next 클릭
3. `Browse` 버튼으로 클론한 프로젝트 폴더 지정
4. `Finish` 클릭

### 4. 빌드 및 실행

1. `Window/Show View/Project Explorer` 열기
2. 프로젝트 탐색기에서 우클릭 후 `Properties → C/C++ Build → Settings → MCU/MPU GCC Compiler → Include paths` → C:\Users\likelike07로 시작하는 경로 모두 자신의 계정 이름에 맞춰 바꿔주고 `Apply and close`
3. `Clean Project → Build Project (Ctrl+B)`
4. STM 코드 PC와 케이블 연결 후 `Run` 클릭하여 보드로 전송
5. `장치 관리자 → 포트` 에서 COM으로 시작하는 포트 번호 확인
6. (Putty 기준) `Connection type: Serial, Serial line: {COM+포트 번호}, Speed: 115200` 선택 후 Open


## 📂 프로젝트 구조
```plaintext
/Project
├── Core/
│   ├── Src/                # 메인 소스 코드
│   │   └── FreeRTOS/       # FreeRTOS 제공 코드
│           └── port/       # ARM Cortex-M4 위한 포팅 코드
│   └── Inc/                # 헤더 파일
│       └── FreeRTOS/       # FreeRTOS 제공 헤더 파일
│           └── port/       # ARM Cortex-M4 위한 포팅 헤더
├── Drivers/                # STM32 HAL 라이브러리
└── README.md      
```

## ⚠️ 문제 해결
- **보드 인식 불가 시**:  
  ST-Link 드라이버 재설치 ([다운로드 링크](https://www.st.com/en/development-tools/stsw-link009.html))
- **빌드 오류**:  
  - `Project → Clean` 실행 후 재빌드
  - Include path 경로 확인


## 📜 라이선스
MIT License. 자세한 내용은 [LICENSE](LICENSE) 파일 참조.


## References
https://m.blog.naver.com/sheld2/222044085375
