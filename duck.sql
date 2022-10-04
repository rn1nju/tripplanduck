-- 멤버 데이터 추가
CREATE TABLE MEMBER (
	M_NO	NUMBER	NOT NULL,
	M_ID	VARCHAR2(500)	NULL,
	M_PW	VARCHAR2(500)	NULL,
	M_NAME	VARCHAR2(500)	NULL,
	M_NICKNAME	VARCHAR2(500)	NULL,
	M_EMAIL	VARCHAR2(500)	NULL,
	M_TYPE	VARCHAR2(20)	NULL,
	M_WARNING	NUMBER	NULL,
	M_STATUS	CHAR	NULL,
  M_GENDER CHAR NULL,
  M_AGE NUMBER NULL
);

COMMENT ON COLUMN MEMBER.M_NO IS '회원번호';
COMMENT ON COLUMN MEMBER.M_ID IS '회원아이디';
COMMENT ON COLUMN MEMBER.M_PW IS '비밀번호';
COMMENT ON COLUMN MEMBER.M_NAME IS '이름';
COMMENT ON COLUMN MEMBER.M_NICKNAME IS '닉네임';
COMMENT ON COLUMN MEMBER.M_EMAIL IS '이메일';
COMMENT ON COLUMN MEMBER.M_TYPE IS '유저타입';
COMMENT ON COLUMN MEMBER.M_WARNING IS '경고횟수';
COMMENT ON COLUMN MEMBER.M_STATUS IS '계정상태(Y/N)';
COMMENT ON COLUMN MEMBER.M_GENDER IS '성별(F/M)';
COMMENT ON COLUMN MEMBER.M_AGE IS '연령대';

-- 컬럼 추가
ALTER TABLE MEMBER ADD M_GENDER CHAR DEFAULT 'F' NULL;
ALTER TABLE MEMBER ADD M_AGE NUMBER NULL;

-- 컬럼 수정
ALTER TABLE MEMBER ADD M_AGE NUMBER NULL;
ALTER TABLE MEMBER MODIFY M_PW VARCHAR2(500);

-- 멤버 디폴트 값 추가
ALTER TABLE MEMBER MODIFY M_TYPE CHAR DEFAULT 'M';
ALTER TABLE MEMBER MODIFY M_WARNING CHAR DEFAULT 0;
ALTER TABLE MEMBER MODIFY M_STATUS CHAR DEFAULT 'Y';

-- 멤버 시퀀스 생성
CREATE SEQUENCE SEQ_MEMBER_NO;

-- 멤버 더미데이터 추가
-- 관리자
INSERT INTO MEMBER (
    M_NO, 
    M_ID, 
    M_PW, 
    M_NAME,
    M_NICKNAME, 
    M_EMAIL, 
    M_TYPE,
    M_WARNING,
    M_STATUS,
    M_GENDER,
    M_AGE
    
) VALUES(
    1, 
    'admin',
    'admin',
    '관리자',
    '관리자', 
    'abc@abc.com', 
    'A',
    0,
    'Y',
    'F',
    2
);

-- 사용자
INSERT INTO MEMBER (
    M_NO, 
    M_ID, 
    M_PW, 
    M_NAME,
    M_NICKNAME, 
    M_EMAIL, 
    M_TYPE,
    M_WARNING,
    M_STATUS,
    M_GENDER,
    M_AGE
    
) VALUES(
    2, 
    'yeoul', 
    1234,
    '김여울',
    '여리',
    'asdf@gmail.com',
    'M',
    0,
    'Y',
    'F',
    1
    
);


CREATE TABLE MEMBER_OUT (
	M_NO	NUMBER	NOT NULL,
	OUT_REASONS	NUMBER	NULL
);

COMMENT ON COLUMN MEMBER_OUT.M_NO IS '회원번호';
COMMENT ON COLUMN MEMBER_OUT.OUT_REASONS IS '탈퇴사유';

ALTER TABLE MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	M_NO
);

ALTER TABLE MEMBER_OUT ADD CONSTRAINT PK_MEMBER_OUT PRIMARY KEY (
	M_NO
);

ALTER TABLE MEMBER_OUT ADD CONSTRAINT FK_MEMBER_TO_MEMBER_OUT_1 FOREIGN KEY (
	M_NO
)
REFERENCES MEMBER (
	M_NO
);

-- 여행지 데이터 추가
CREATE TABLE DESTINATION (
	DEST_NO	NUMBER	NOT NULL,
    DEST_CATEGORY	VARCHAR2(50)	NULL,
	DEST_SUBJECT	VARCHAR2(255)	NULL,
	DEST_SUMMARY	VARCHAR2(100)	NULL,
	DEST_CONTENT	VARCHAR2(1000)	NULL,
	DEST_ADDRESS	VARCHAR2(50)	NULL,
	DEST_MAP_X	NUMBER	NULL,
	DEST_MAP_Y	NUMBER	NULL,
	DEST_LIKE_SUM	NUMBER	NULL
	DEST_RATING_AVG	NUMBER	NULL,
	DEST_HIT	NUMBER	NULL,
	DEST_CREATEDATE	DATE	NULL,
	DEST_UPDATEDATE	DATE	NULL
);

COMMENT ON COLUMN DESTINATION.DEST_NO IS '여행지번호';
COMMENT ON COLUMN DESTINATION.DEST_CATEGORY IS '여행지카테고리';
COMMENT ON COLUMN DESTINATION.DEST_SUBJECT IS '여행지제목';
COMMENT ON COLUMN DESTINATION.DEST_SUMMARY IS '여행지요약정보';
COMMENT ON COLUMN DESTINATION.DEST_CONTENT IS '여행지내용';
COMMENT ON COLUMN DESTINATION.DEST_ADDRESS IS '여행지주소';
COMMENT ON COLUMN DESTINATION.DEST_MAP_X IS '여행지X좌표';
COMMENT ON COLUMN DESTINATION.DEST_MAP_Y IS '여행지Y좌표';
COMMENT ON COLUMN DESTINATION.DEST_LIKE_SUM IS '좋아요합';
COMMENT ON COLUMN DESTINATION.DEST_RATING_AVG IS '별점평균';
COMMENT ON COLUMN DESTINATION.DEST_HIT IS '조회수';
COMMENT ON COLUMN DESTINATION.DEST_CREATEDATE IS '등록일';
COMMENT ON COLUMN DESTINATION.DEST_UPDATEDATE IS '수정일';
COMMENT ON COLUMN DESTINATION.LOCATION_ID IS '지역번호';
COMMENT ON COLUMN DESTINATION.DEST_IMAGE IS '여행지사진';

ALTER TABLE DESTINATION ADD DEST_IMAGE VARCHAR2(1000) NULL;

ALTER TABLE DESTINATION MODIFY (DEST_HIT DEFAULT '0');
ALTER TABLE DESTINATION MODIFY (DEST_CREATEDATE DEFAULT SYSDATE);
ALTER TABLE DESTINATION MODIFY (DEST_UPDATEDATE DEFAULT SYSDATE);

ALTER TABLE DESTINATION MODIFY DEST_CATEGORY NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_SUBJECT NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_SUMMARY NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_CONTENT NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_ADDRESS NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_MAP_X NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_MAP_Y NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_LIKE_SUM NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_RATING_AVG NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_HIT NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_CREATEDATE NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_UPDATEDATE NOT NULL;
ALTER TABLE DESTINATION MODIFY LOCATION_ID NOT NULL;
ALTER TABLE DESTINATION MODIFY DEST_IMAGE NOT NULL;

ALTER TABLE DESTINATION MODIFY DEST_IMAGE NULL;

ALTER TABLE DESTINATION MODIFY (DEST_ADDRESS VARCHAR2(1000)); 

INSERT INTO DESTINATION VALUES (1, '제주도', '섭지코지', '관광 명소', '등대, 레스토랑, 상점, 경치 좋은 전망, 산책로를 갖추고 있는 조용한 해변 지역입니다.', '제주특별자치도 서귀포시 성산읍 섭지코지로', '33.42404', '126.93073', '5', '4.4', DEFAULT, SYSDATE, SYSDATE, '39', NULL);
INSERT INTO DESTINATION VALUES (2, '제주도', '시흥해녀의집', '음식점', '해산물 요리 전문식당', '제주특별자치도 서귀포시 성산읍 시흥하동로 114', '33.47802', '126.90824', '5', '4.2', DEFAULT, SYSDATE, SYSDATE, '39', NULL);
INSERT INTO DESTINATION VALUES (3, '제주도', '우도', '관광 명소', '페리로 들어갈 수 있는 작은 섬으로 산호 해변으로 유명하고 카페, 자전거/스쿠터 대여소가 있습니다.', '제주특별자치도 제주시 우도면', '37.60893', '125.97542', '1', '4.4', DEFAULT, SYSDATE, SYSDATE, '39', NULL);
INSERT INTO DESTINATION VALUES (4, '제주도', '동서네', '음식점', '한식당', '제주특별자치도 서귀포시 성산읍 고성리 1132-30', '33.44985', '126.90841', '3', '3.8', DEFAULT, SYSDATE, SYSDATE, '39', NULL);

TRUNCATE TABLE DESTINATION;

CREATE TABLE DESTINATION_LIKE (
	DEST_NO	NUMBER	NOT NULL,
	M_NO	NUMBER	NOT NULL
);

COMMENT ON COLUMN DESTINATION_LIKE.DEST_NO IS '여행지번호';
COMMENT ON COLUMN DESTINATION_LIKE.M_NO IS '회원번호';

CREATE TABLE DESTINATION_COMMENTS (
	COMMENTS_ID	NUMBER	NOT NULL,
	M_NO	NUMBER	NOT NULL,
	COMMENTS_WRITER_ID	VARCHAR2(20)	NULL,
	COMMENTS_WRITER_PW	VARCHAR(50)	NULL,
	COMMENTS_CONTENT	VARCHAR(500)	NULL,
	COMMENTS_RATING	NUMBER	NULL,
	COMMENTS_CREATEDATE	DATE	NULL,
	COMMENTS_UPDATEDATE	DATE	NULL,
	COMMENTS_IP_ADDRESS	VARCHAR2(15)	NULL,
	DEST_NO	NUMBER	NOT NULL
);

COMMENT ON COLUMN DESTINATION_COMMENTS.COMMENTS_ID IS '댓글번호';
COMMENT ON COLUMN DESTINATION_COMMENTS.M_NO IS '회원번호';
COMMENT ON COLUMN DESTINATION_COMMENTS.COMMENTS_WRITER_ID IS '작성자아이디';
COMMENT ON COLUMN DESTINATION_COMMENTS.COMMENTS_WRITER_PW IS '작성자비밀번호';
COMMENT ON COLUMN DESTINATION_COMMENTS.COMMENTS_CONTENT IS '댓글내용';
COMMENT ON COLUMN DESTINATION_COMMENTS.COMMENTS_RATING IS '댓글평점';
COMMENT ON COLUMN DESTINATION_COMMENTS.COMMENTS_CREATEDATE IS '댓글등록일';
COMMENT ON COLUMN DESTINATION_COMMENTS.COMMENTS_UPDATEDATE IS '댓글수정일';
COMMENT ON COLUMN DESTINATION_COMMENTS.COMMENTS_IP_ADDRESS IS '댓글아이피주소';
COMMENT ON COLUMN DESTINATION_COMMENTS.DEST_NO IS '여행지번호';

ALTER TABLE DESTINATION_COMMENTS MODIFY (COMMENTS_CREATEDATE DEFAULT SYSDATE);
ALTER TABLE DESTINATION_COMMENTS MODIFY (COMMENTS_UPDATEDATE DEFAULT SYSDATE);

ALTER TABLE DESTINATION_COMMENTS MODIFY COMMENTS_CONTENT NOT NULL;
ALTER TABLE DESTINATION_COMMENTS MODIFY COMMENTS_RATING NOT NULL;
ALTER TABLE DESTINATION_COMMENTS MODIFY COMMENTS_CREATEDATE NOT NULL;
ALTER TABLE DESTINATION_COMMENTS MODIFY COMMENTS_UPDATEDATE NOT NULL;

ALTER TABLE DESTINATION ADD LOCATION_ID TO NUMBER;

ALTER TABLE DESTINATION ADD CONSTRAINT PK_DESTINATION PRIMARY KEY (
	DEST_NO
);

ALTER TABLE DESTINATION ADD CONSTRAINT FK_LOCATION_TO_DESTINATION_1 FOREIGN KEY (
	LOCATION_ID
)
REFERENCES LOCATION (
	LOCATION_ID
);

ALTER TABLE DESTINATION_LIKE ADD CONSTRAINT PK_DESTINATION_LIKE PRIMARY KEY (
	DEST_NO
);


ALTER TABLE DESTINATION_LIKE ADD CONSTRAINT FK_DESTINATION_TO_DESTINATION_LIKE_1 FOREIGN KEY (
	DEST_NO
)
REFERENCES DESTINATION (
	DEST_NO
);

ALTER TABLE DESTINATION_COMMENTS ADD CONSTRAINT FK_MEMBER_TO_DESTINATION_COMMENTS_1 FOREIGN KEY (
	M_NO
)
REFERENCES MEMBER (
	M_NO
);

ALTER TABLE DESTINATION_COMMENTS ADD CONSTRAINT PK_DESTINATION_COMMENTS PRIMARY KEY (
	COMMENTS_ID,
	M_NO
);

ALTER TABLE DESTINATION
add constraint DESTINATION_LOCATION_ID_uq unique(LOCATION_ID);

ALTER TABLE DESTINATION ADD CONSTRAINT FK_LOCATION_TO_DESTINATION_1 FOREIGN KEY (
	LOCATION_ID
)
REFERENCES LOCATION (
	LOCATION_ID
);


-- 플래너 데이터 추가
DROP TABLE MY_PLANNER;
CREATE TABLE MY_PLANNER (
	P_NO	NUMBER	NOT NULL,
	P_PLACE	VARCHAR2(1000)	NULL,
	P_STARTDATE	DATE	NULL,
	P_ENDDATE	DATE	NULL,
	P_LT	DATE	NULL,
	P_MAP_X	NUMBER	NULL,
	P_MAP_Y	NUMBER	NULL,
	P_MAP	VARCHAR2(1000)	NULL,
	P_LIKE	VARCHAR2(10)	NULL,
	P_STATUS	VARCHAR2(1)	NULL,
	P_TYPE	VARCHAR2(1)	NULL,
	DEST_NO	NUMBER	NOT NULL,
	M_NO	NUMBER	NOT NULL,
	LOCATION_ID	NUMBER	NOT NULL
);

COMMENT ON COLUMN MY_PLANNER.P_NO IS '플래너번호';
COMMENT ON COLUMN MY_PLANNER.P_PLACE IS '여행장소';
COMMENT ON COLUMN MY_PLANNER.P_STARTDATE IS '여행시작날짜';
COMMENT ON COLUMN MY_PLANNER.P_ENDDATE IS '여행마무리날짜';
COMMENT ON COLUMN MY_PLANNER.P_LT IS '여행소요시간';
COMMENT ON COLUMN MY_PLANNER.P_MAP_X IS 'X좌표';
COMMENT ON COLUMN MY_PLANNER.P_MAP_Y IS 'Y좌표';
COMMENT ON COLUMN MY_PLANNER.P_MAP IS '여행지도';
COMMENT ON COLUMN MY_PLANNER.P_LIKE IS '플래너좋아요';
COMMENT ON COLUMN MY_PLANNER.P_STATUS IS '상태';
COMMENT ON COLUMN MY_PLANNER.P_TYPE IS '여행타입';
COMMENT ON COLUMN MY_PLANNER.DEST_NO IS '여행지번호';
COMMENT ON COLUMN MY_PLANNER.M_NO IS '회원번호';
COMMENT ON COLUMN MY_PLANNER.LOCATION_ID IS '지역번호';

CREATE TABLE LIKE_PLANNER (
	P_NO	NUMBER	NOT NULL,
	M_NO	NUMBER	NOT NULL
);

COMMENT ON COLUMN LIKE_PLANNER.P_NO IS '플래너번호';
COMMENT ON COLUMN LIKE_PLANNER.M_NO IS '회원번호';

ALTER TABLE MY_PLANNER ADD CONSTRAINT PK_MY_PLANNER PRIMARY KEY (
	P_NO
);

ALTER TABLE LIKE_PLANNER ADD CONSTRAINT FK_MY_PLANNER_TO_LIKE_PLANNER_1 FOREIGN KEY (
	P_NO
)
REFERENCES MY_PLANNER (
	P_NO
);

ALTER TABLE LIKE_PLANNER ADD CONSTRAINT FK_MEMBER_TO_LIKE_PLANNER_1 FOREIGN KEY (
	M_NO
)
REFERENCES MEMBER (
	M_NO
);

ALTER TABLE LIKE_PLANNER ADD CONSTRAINT PK_LIKE_PLANNER PRIMARY KEY (
	P_NO,
	M_NO
);

ALTER TABLE DESTINATION ADD CONSTRAINT FK_LOCATION_TO_DESTINATION_1 FOREIGN KEY (
	LOCATION_ID
)
REFERENCES LOCATION (
	LOCATION_ID
);

ALTER TABLE LOCATION ADD CONSTRAINT PK_LOCATION PRIMARY KEY (
	LOCATION_ID
);


-- 위드덕 데이터 추가
CREATE TABLE WITHDUK (
	WITH_NO	NUMBER	NOT NULL,
	WITH_MEM_NO	NUMBER	NOT NULL,
	WITH_WRITER_NICK	VARCHAR2(1000)	NULL,
	WITH_LOCATION	VARCHAR2(2000)	NULL,
	WITH_GENDER	VARCHAR2(10)	NULL,
	WITH_PERSONNER	NUMBER	NULL,
	WITH_STATUS	VARCHAR2(100)	NULL,
	WITH_PICTURE	VARCHAR2(3000)	NULL,
	WITH_TITLE	VARCHAR2(1000)	NULL,
	WITH_CONTENT	VARCHAR2(1000)	NULL,
	WITH_KEYWORD	VARCHAR2(1000)	NULL,
	WITH_READCOUNT	NUMBER	NULL,
	WITH_CREATEDATE	VARCHAR2(1000)	NULL,
	WITH_UPDATEDATE	VARCHAR2(1000)	NULL
);

COMMENT ON COLUMN WITHDUK.WITH_NO IS '위드덕식별자';
COMMENT ON COLUMN WITHDUK.WITH_MEM_NO IS '참여회원번호';
COMMENT ON COLUMN WITHDUK.WITH_WRITER_NICK IS '작성자닉네임';
COMMENT ON COLUMN WITHDUK.WITH_LOCATION IS '희망지역';
COMMENT ON COLUMN WITHDUK.WITH_GENDER IS '희망성별';
COMMENT ON COLUMN WITHDUK.WITH_PERSONNER IS '희망인원';
COMMENT ON COLUMN WITHDUK.WITH_STATUS IS '모집중/모집완료';
COMMENT ON COLUMN WITHDUK.WITH_PICTURE IS '위드덕소개사진';
COMMENT ON COLUMN WITHDUK.WITH_TITLE IS '제목';
COMMENT ON COLUMN WITHDUK.WITH_CONTENT IS '내용';
COMMENT ON COLUMN WITHDUK.WITH_CATEGORY IS '작성자/참여자';
COMMENT ON COLUMN WITHDUK.WITH_KEYWORD IS '키워드';
COMMENT ON COLUMN WITHDUK.WITH_READCOUNT IS '조회수';
COMMENT ON COLUMN WITHDUK.WITH_CREATEDATE IS '생성시간';
COMMENT ON COLUMN WITHDUK.WITH_UPDATEDATE IS '수정시간';

CREATE TABLE WITHDUK_CHAT (
	CHAT_NO	NUMBER	NOT NULL,
	WITH_NO	NUMBER	NOT NULL,
    WITH_CATEGORY	VARCHAR2(1000)	NULL,
	CHAT_CONTENT	VARCHAR2(1000)	NULL,
	CHAT_TIME	VARCHAR2(1000)	NULL,
	CHAT_MEMNICK	VARCHAR2(1000)	NULL,
	WITH_MEM_NO	NUMBER	NOT NULL
);

COMMENT ON COLUMN WITHDUK_CHAT.CHAT_NO IS '채팅방식별번호';
COMMENT ON COLUMN WITHDUK_CHAT.WITH_NO IS '채팅방게시글번호';
COMMENT ON COLUMN WITHDUK_CHAT.CHAT_CONTENT IS '채팅방내용';
COMMENT ON COLUMN WITHDUK_CHAT.CHAT_TIME IS '채팅시간';
COMMENT ON COLUMN WITHDUK_CHAT.CHAT_MEMNICK IS '채팅닉네임';
COMMENT ON COLUMN WITHDUK_CHAT.WITH_MEM_NO IS '참여회원번호';

ALTER TABLE WITHDUK ADD CONSTRAINT PK_WITHDUK PRIMARY KEY (
	WITH_NO,
	WITH_MEM_NO
);

ALTER TABLE WITHDUK ADD CONSTRAINT FK_MEMBER_TO_WITHDUK_1 FOREIGN KEY (
	WITH_MEM_NO
)
REFERENCES MEMBER (
	M_NO
);

ALTER TABLE WITHDUK_CHAT ADD CONSTRAINT PK_WITHDUK_CHAT PRIMARY KEY (
	CHAT_NO
);

-- 지역정보 데이터 추가
CREATE TABLE LOCATION (
	LOCATION_ID	NUMBER	NOT NULL,
	LOCATION VARCHAR2(1000) NOT	NULL,
  LCENTERX NUMBER(20,14) NOT NULL,
  LCENTERY NUMBER(20,14) NOT NULL
);

COMMENT ON COLUMN LOCATION.LOCATION_ID IS '지역번호';
COMMENT ON COLUMN LOCATION.LOCATION IS '지역';

DROP TABLE LOCATION;

insert into LOCATION values('1', '서울', 37.56632099109217, 126.97794558984958);
insert into LOCATION values('2', '인천', 37.45590872680688, 126.70552692050053);
insert into LOCATION values('3', '대전', 36.35046856919224, 127.38482123708665);
insert into LOCATION values('4', '대구', 35.87140219365024, 128.60174803297681);
insert into LOCATION values('5', '광주', 35.1595454 , 126.8526012);
insert into LOCATION values('6', '부산', 35.179775233195855, 129.0749925863485);
insert into LOCATION values('7', '울산', 35.53962603316087, 129.31151418501798);
insert into LOCATION values('8', '세종특별자치시', 36.480132736457776, 127.28875674178784);
insert into LOCATION values('31', '경기도', 37.27504774582099, 127.00944450410927);
insert into LOCATION values('32', '강원도', 37.88539639746763, 127.7297762607464);
insert into LOCATION values('33', '충청북도', 36.63567674729703, 127.49138343414079);
insert into LOCATION values('34', '충청남도', 36.658833942854216, 126.67284926797313);
insert into LOCATION values('35', '경상북도', 36.57601417809463, 128.50559446919635);
insert into LOCATION values('36', '경상남도', 35.23828668905039, 128.69239588910835);
insert into LOCATION values('37', '전라북도', 35.82036067006113, 127.10872713817363);
insert into LOCATION values('38', '전라남도', 34.81621546364296, 126.46291182755675);
insert into LOCATION values('39', '제주도', 33.4889273516415, 126.50042271000662);

COMMIT;