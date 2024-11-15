# Healthigo PRD (Product Requirements Document)

## 1. 개요
Healthigo는 건강식 전문 배달 플랫폼으로, 건강한 식사와 식재료에 대한 스토리텔링을 통해 차별화된 경험을 제공합니다.

## 2. 핵심 가치
- 건강한 한끼를 위한 신뢰할 수 있는 플랫폼
- 음식과 만드는 사람들의 스토리 전달
- 재미있고 친근한 UX로 건강식의 진입장벽 낮추기

## 3. 페이지별 요구사항

### 3.1 홈 화면
#### 목적
- 사용자에게 건강식에 대한 긍정적 첫인상 전달
- 다양한 상황별 건강식 옵션 제시
- 스토리텔링을 통한 관심 유도

#### 주요 기능
1. 헤더
   - 캡슐형 healthigo 로고
   - 검색 버튼

2. 메인 카테고리
   - 고기안부럽샐러드: 채식 위주의 든든한 메뉴
   - 벌크업단단: 고단백 건강식
   - 따뜻한 거: 따뜻한 건강식
   - 디저트는 못참지: 건강한 디저트
   - 비건 

3. 인기 섹션
   - "이집 맛있어요!" 인기 매장
   - "운동쟁이들이 방금시킨집" 실시간 인기 메뉴
   - "스트레스받지만 살은 안찔거야" 
   수평 스크롤로 다양한 옵션 제시

4. 한번도 쉬지 않은, 먹는다는 행위
   - 내 몸이 된 음식: 각 식재료가 태어나서 여행을 와, 한 그릇 안에 섞이기까지의 이야기와 그에 얽힌 재미있는 잡동사니 지식들
   - 쉐프/메이커 스토리

5. 추천 메뉴
   - 상황별 카테고리 배지: 파워운동중, 야식땡길 때, 가벼운 저녁한끼, 영양듬뿍
   - 평점과 배달시간 정보
   - 가격 정보

### 3.2 검색/필터 화면
#### 목적
- 사용자가 원하는 메뉴를 쉽게 찾을 수 있도록 지원
- 다양한 필터 옵션으로 검색 정확도 향상
- 직관적인 메뉴선정 (샐러드, 단백질, 비건, 해산물, 볶음, 찜, 삶음, 면, 디저트 등도 포함하지만, 고객이 처한 상황별로도 파워운동중, 다이어트중, 더울 때, 추울 때, 야식땡길 때, 스트레스 받을 때, 영양보충 필요할 때 등도 제안)

#### 주요 기능
1. 검색바
   - 실시간 검색어 추천
   - 최근 검색어 히스토리

2. 필터 옵션
   - 칼로리 범위
   - 알러지 정보
   - 영양소 기준 (단백질, 탄수화물 등)
   - 가격대
   - 배달시간

3. 검색 결과
   - 그리드/리스트 뷰 전환 옵션
   - 정렬 옵션 (인기순, 가격순, 거리순)

### 3.3 상품 ���세 화면
#### 목적
- 메뉴에 대한 상세 정보 제공
- 구매 결정을 위한 충분한 정보 전달

#### 주요 기능
1. 상품 정보
   - 고품질 메뉴 이미지
   - 가격 정보
   - 영양 정보
   - 알러지 정보
   - 조리/포장 방법

2. 리뷰 섹션
   - 포토 리뷰
   - 평점 통계
   - 실구매자 후기

3. 옵션 선택
   - 메뉴 커스터마이징 옵션
   - 수량 선택
   - 장바구니 담기 버튼

### 3.4 장바구니 화면
#### 목적
- 주문 내역 확인 및 수정
- 원활한 결제 프로세스 지원

#### 주요 기능
1. 주문 목록
   - 메뉴별 수량 조정
   - 옵션 수정
   - 가격 정보

2. 주문 요약
   - 총 주문금액
   - 배달팁
   - 할인 적용 정보

3. 배달 정보
   - 주소 입력/수정
   - 예상 배달시간
   - 요청사항 입력

### 3.5 결제 화면
#### 목적
- 안전하고 편리한 결제 프로세스 제공
- 다양한 결제 수단 지원

#### 주요 기능
1. 결제 수단 선택
   - 신용카드
   - 간편결제
   - 포인트/쿠폰 적용

2. 주문 정보 확인
   - 최종 결제금액
   - 배달 주소
   - 요청사항

3. 결제 완료
   - 주문 완료 확인
   - 영수증 발급
   - 주문 내역 저장

### 3.6 주문 현황 화면
#### 목적
- 실시간 주문 현황 확인
- 배달 진행상황 추적

#### 주요 기능
1. 주문 상태 표시
   - 주문 접수
   - 조리 중
   - 배달 중
   - 배달 완료

2. 배달 추적
   - 실시간 위치 추적
   - 예상 도착 시간
   - 배달원 정보

3. 기타 기능
   - 가게/배달원 연락하기
   - 주문 취소/변경
   - 리뷰 작성

## 4. 기술 스택 및 디자인 시스템

### 4.1 기술 스택
- Frontend: Flutter (iOS 쿠퍼티노 스타일)
- Backend: 추후 결정
- 상태관리: Provider/Riverpod (추후 결정)

### 4.2 디자인 시스템
- 컬러 시스템
  - 브랜드 컬러: 파스텔톤 (연노랑 #F3F5B1, 연파랑 #DCE4FF, 연분홍 #FFE1F9)
  - 강조색: 코랄 #FF7F5C, 골드 #E9C064, 파스텔 블루 #94A6FF
  - 배경: 따뜻한 아이보리 (#F8F6F0)
  - 텍스트: 진한 네이비 (#2C3D4F), 회색 (#6B7C93)

- 타이포그래피
  - 헤드라인: 24/20/16pt, Bold
  - 본문: 16/14/12pt, Regular
  - 캡션: 12pt, Regular

- 여백 시스템
  - 4/8/16/24/32/40px 단위 사용

### 4.3 접근성 가이드라인
- 모든 이미지에 대체 텍스트 제공
- 충분한 색상 대비
- 터치 영역 최소 44x44pt
- 스크린리더 지원

### 4.4 성능 최적화
- 이미지 최적화
- 리스트 가상화
- 캐싱 전략
- 지연 로딩

## 5. 개발 우선순위

1단계: 기본 구조
- [x] 프로젝트 셋업
- [x] 테마 시스템
- [x] 라우팅 구조
- [ ] 홈 화면 레이아웃

2단계: 핵심 기능
- [ ] 카테고리 섹션
- [ ] 인기 메뉴 섹션
- [ ] 스토리 섹션
- [ ] 추천 메뉴 섹션

3단계: 사용자 경험
- [ ] 애니메이션 추가
- [ ] 스켈레톤 로딩
- [ ] 에러 처리
- [ ] 피드백 시스템

## 6. 추가 고려사항
- 접근성 준수
- 다크모드 지원
- 오프라인 모드 대응
- 성능 최적화
- 에러 처리
- 사용자 피드백 수집

## 백엔드는 추후 구현