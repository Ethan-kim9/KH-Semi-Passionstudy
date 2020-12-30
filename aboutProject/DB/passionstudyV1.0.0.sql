/*
DROP TABLE "MEMBER";
DROP TABLE "ROOM";
DROP TABLE "PRODUCT_TABLE";
DROP TABLE "COUPON";
DROP TABLE "RESERVATION";
DROP TABLE "CATEGORY";
DROP TABLE "QNA";
DROP TABLE "FAQ";
DROP TABLE "NOTICE";
*/

/*각 테이블의 생성문과 코멘트*/

CREATE TABLE "MEMBER" (
                          "MEMBER_NO"        NUMBER             	 		        NOT NULL,
                          "MEMBER_NAME"      VARCHAR2(100)      		 		    NOT NULL,
                          "MEMBER_ID"        VARCHAR2(100)      	 		        NOT NULL,
                          "MEMBER_PWD"       VARCHAR2(100)      		 		    NOT NULL,
                          "MEMBER_PHONE"     VARCHAR2(100)      			 		    NULL,
                          "MEMBER_DATE"      DATE DEFAULT SYSDATE            	    NOT NULL,
                          "ADMIN_CHECK"      VARCHAR2(20)       DEFAULT 'Y'         NOT NULL,
                          "RECOM_COUNT"      NUMBER             DEFAULT 0           NOT NULL,
                          "MEMBER_STATUS"    VARCHAR2(20)       DEFAULT 'Y'   	        NULL,
                          "AD_AGREE"         VARCHAR2(20)       DEFAULT 'N'   	        NULL,
                          "RECOM_CODE"       VARCHAR2(20)      				        NOT NULL,
                          "MEMBER_POINT"     NUMBER                   				    NULL,
                          "TOKEN1"           VARCHAR2(1000)      					    NULL,
                          "TOKEN2"           VARCHAR2(1000)      					    NULL
);

COMMENT ON COLUMN "MEMBER"."MEMBER_NO" IS       '회원식별자';
COMMENT ON COLUMN "MEMBER"."MEMBER_NAME" IS     '이름';
COMMENT ON COLUMN "MEMBER"."MEMBER_ID" IS       '아이디';
COMMENT ON COLUMN "MEMBER"."MEMBER_PWD" IS      '비밀번호';
COMMENT ON COLUMN "MEMBER"."MEMBER_PHONE" IS    '연락처';
COMMENT ON COLUMN "MEMBER"."ADMIN_CHECK" IS     'N.일반유저  A관리자';
COMMENT ON COLUMN "MEMBER"."RECOM_COUNT" IS     '추천받은 횟수';
COMMENT ON COLUMN "MEMBER"."MEMBER_STATUS" IS   'B 블라인드 N일반 D 삭제된계정';
COMMENT ON COLUMN "MEMBER"."AD_AGREE" IS        'Y 는 동의 N은 비동의';

CREATE TABLE "ROOM" (
                        "ROOM_NO"               NUMBER      					NOT NULL,
                        "ROOM_NAME"             VARCHAR2(100)      		        NOT NULL,
                        "ROOM_TYPE"             VARCHAR2(255)      				    NULL,
                        "ROOM_CAPACITY"         NUMBER      			        NOT NULL,
                        "ROOM_INFORMATION"      VARCHAR2(300)                   NOT NULL,
                        "ROOM_FILEPATH"         VARCHAR2(1000)      		        NULL
);

COMMENT ON COLUMN "ROOM"."ROOM_NO" IS           '룸테이블 식별자';
COMMENT ON COLUMN "ROOM"."ROOM_NAME" IS         '룸명';
COMMENT ON COLUMN "ROOM"."ROOM_CAPACITY" IS     '수용인원';
COMMENT ON COLUMN "ROOM"."ROOM_FILEPATH" IS     '사진저장경로';

CREATE TABLE "PRODUCT_TABLE" (
                                 "PRODUCT_NO"         NUMBER     			      NOT NULL,
                                 "ROOM_NO"            NUMBER      			      NOT NULL,
                                 "ROOM_TIME"          DATE   					      NULL,
                                 "ROOM_CONDITION"     VARCHAR2(10)      	      NOT NULL,
                                 "ROOM_PRICE"         NUMBER      			      NOT NULL,
                                 "ROOM_INFO"          VARCHAR2(500)      		      NULL,
                                 "RESERVATION_DATE"   DATE         			      NOT NULL,
                                 "PAYMENT_DATE"       DATE       				      NULL
);

COMMENT ON COLUMN "PRODUCT_TABLE"."PRODUCT_NO" IS        '상품식별자';
COMMENT ON COLUMN "PRODUCT_TABLE"."ROOM_NO" IS           '룸테이블 식별자';
COMMENT ON COLUMN "PRODUCT_TABLE"."ROOM_CONDITION" IS    'Y 이용가능. O이용중 R수리중';
COMMENT ON COLUMN "PRODUCT_TABLE"."ROOM_PRICE" IS        '상품가격';
COMMENT ON COLUMN "PRODUCT_TABLE"."ROOM_INFO" IS         '시설정보';
COMMENT ON COLUMN "PRODUCT_TABLE"."RESERVATION_DATE" IS  '예약하는날';
COMMENT ON COLUMN "PRODUCT_TABLE"."PAYMENT_DATE" IS      '결제 한 날';

CREATE TABLE "QNA" (
                       "BOARD_NO"         NUMBER                      NOT NULL,
                       "MEMBER_NO"        NUMBER                      NOT NULL,
                       "CATEGORY"         VARCHAR2(200)               NOT NULL,
                       "BOARD_TITLE"      VARCHAR2(200)               NOT NULL,
                       "BOARD_CONTENT"    VARCHAR2(4000)              NOT NULL,
                       "BOARD_COUNT"      NUMBER                          NULL,
                       "BOARD_ANSWER"     VARCHAR2(20)   DEFAULT 'N'  NOT NULL,
                       "BOARD_CONDITION"  VARCHAR2(20)                    NULL,
                       "BOARD_DATE"       DATE DEFAULT SYSDATE        NOT NULL,
                       "ANSWER_CONTENT"   VARCHAR2(200)                   NULL,
                       "MEMBER_NAME"      VARCHAR2(100)               NOT NULL
);

COMMENT ON COLUMN "QNA"."BOARD_NO" IS           '게시판 식별자';
COMMENT ON COLUMN "QNA"."MEMBER_NO" IS          '회원식별자';
COMMENT ON COLUMN "QNA"."CATEGORY" IS           '카테고리';
COMMENT ON COLUMN "QNA"."BOARD_TITLE" IS        '제목';
COMMENT ON COLUMN "QNA"."BOARD_CONTENT" IS      '내용';
COMMENT ON COLUMN "QNA"."BOARD_COUNT" IS        '조회수';
COMMENT ON COLUMN "QNA"."BOARD_ANSWER" IS       '답변시 Y 아니면 N';
COMMENT ON COLUMN "QNA"."BOARD_CONDITION" IS    'B 블라인드 Y일반 D 삭제된글';
COMMENT ON COLUMN "QNA"."BOARD_DATE" IS         '작성일';
COMMENT ON COLUMN "QNA"."ANSWER_CONTENT" IS     '답변내용';
COMMENT ON COLUMN "QNA"."MEMBER_NAME" IS        '작성자';

CREATE TABLE "FAQ" (
                       "BOARD_NO"         NUMBER                        NOT NULL,
                       "MEMBER_NO"        NUMBER                        NOT NULL,
                       "CATEGORY"         VARCHAR2(150)                 NOT NULL,
                       "BOARD_TITLE"      VARCHAR2(200)                 NOT NULL,
                       "BOARD_CONTENT"    VARCHAR2(4000)                NOT NULL,
                       "BOARD_COUNT"      NUMBER                            NULL,
                       "BOARD_ANSWER"     VARCHAR2(20)   DEFAULT 'N'    NOT NULL,
                       "BOARD_CONDITION"  VARCHAR2(20)                      NULL,
                       "BOARD_DATE"  DATE DEFAULT SYSDATE               NOT NULL
);

COMMENT ON COLUMN "FAQ"."BOARD_NO" IS           '게시판 식별자';
COMMENT ON COLUMN "FAQ"."MEMBER_NO" IS          '회원식별자';
COMMENT ON COLUMN "FAQ"."BOARD_TITLE" IS        '제목';
COMMENT ON COLUMN "FAQ"."BOARD_CONTENT" IS      '내용';
COMMENT ON COLUMN "FAQ"."BOARD_COUNT" IS        '조회수';
COMMENT ON COLUMN "FAQ"."BOARD_ANSWER" IS       '답변시 Y 아니면 N';
COMMENT ON COLUMN "FAQ"."BOARD_CONDITION" IS    'B 블라인드 Y일반 D 삭제된글';
COMMENT ON COLUMN "FAQ"."BOARD_DATE" IS         '작성일';

CREATE TABLE "CATEGORY" (
                            "CATEGORY"          VARCHAR2(200)      NOT NULL,
                            "CATEGORY_NAME"     VARCHAR2(200)      NOT NULL
);

CREATE TABLE "NOTICE" (
                          "NOTICE_NO"           NUMBER                        NOT NULL,
                          "MEMBER_NO"           NUMBER                        NOT NULL,
                          "NOTICE_TITLE"        VARCHAR2(200)                 NOT NULL,
                          "NOTICE_CONTENT"      VARCHAR2(4000)                NOT NULL,
                          "NOTICE_CONDITION"    VARCHAR2(20)   DEFAULT 'Y'        NULL
);

COMMENT ON COLUMN "NOTICE"."NOTICE_NO" IS          '공지사항 식별자';
COMMENT ON COLUMN "NOTICE"."MEMBER_NO" IS          '회원식별자';
COMMENT ON COLUMN "NOTICE"."NOTICE_TITLE" IS       '공지사항 제목';
COMMENT ON COLUMN "NOTICE"."NOTICE_CONTENT" IS     '공지사항 내용';
COMMENT ON COLUMN "NOTICE"."NOTICE_CONDITION" IS   'B 블라인드 N일반 D 삭제된글';

CREATE TABLE "COUPON" (
                          "COUPON_NO"              NUMBER                              NOT NULL,
                          "MEMBER_NO"              NUMBER                              NOT NULL,
                          "COUPON_NAME"            VARCHAR2(1000)                          NULL,
                          "COUPON_VALID"           VARCHAR2(20)      DEFAULT 'N'       NOT NULL,
                          "COUPON_PRICE"           NUMBER                              NOT NULL,
                          "COUPON_DATE"            DATE                                NOT NULL,
                          "COUPON_CODE"            VARCHAR2(40)                        NOT NULL
);

COMMENT ON COLUMN "COUPON"."COUPON_NO" IS          '가용쿠폰식별자';
COMMENT ON COLUMN "COUPON"."MEMBER_NO" IS          '회원식별자';
COMMENT ON COLUMN "COUPON"."COUPON_NAME" IS        '쿠폰이름';
COMMENT ON COLUMN "COUPON"."COUPON_VALID" IS       'Y는 사용됨 N 은  아직';
COMMENT ON COLUMN "COUPON"."COUPON_PRICE" IS       '1000원 또는 3000원';
COMMENT ON COLUMN "COUPON"."COUPON_DATE" IS        'SYSDATE 기준 한달  = SYSDATE + 30';
COMMENT ON COLUMN "COUPON"."COUPON_CODE" IS        '앞에 영어 4글자 후 숫자 4글자';

CREATE TABLE "RESERVATION" (
                               "RESERVATION_NO"          NUMBER                       NOT NULL,
                               "MEMBER_NO"               NUMBER                       NOT NULL,
                               "PRODUCT_NO"              NUMBER                       NOT NULL,
                               "RESERVATION_NAME"        VARCHAR2(100)                NOT NULL,
                               "RESERVATION_EMAIL"       VARCHAR2(255)                    NULL,
                               "RESERVATION_PHONE"       VARCHAR2(100)                    NULL,
                               "RESERVATION_PERSONNEL"   NUMBER                       NOT NULL,
                               "RESERVATION_DATE"        DATE                         NOT NULL,
                               "RESERVATION_TIME"        VARCHAR2(255)                    NULL,
                               "PAYMENT_METHOD"          VARCHAR2(255)                    NULL,
                               "PAYMENT_DATE"            DATE                         NOT NULL,
                               "PAYMENT_PRICE"           NUMBER                       NOT NULL,
                               "RESERVATION_CONDITION"   VARCHAR2(20)   DEFAULT 'Y'   NOT NULL,
                               "PAYMENT_INFO"            VARCHAR2(20)                     NULL
);


/*7개의 테이블 시퀀스 */

CREATE SEQUENCE SEQ_MNO /*member SEQUENCE*/
    MINVALUE 1
    MAXVALUE 999999999999
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE SEQUENCE SEQ_RNO /*ROOM SEQUENCE*/
    MINVALUE 1
    MAXVALUE 999999999999
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE SEQUENCE SEQ_PRNO /*product SEQUENCE*/
    MINVALUE 1
    MAXVALUE 999999999999
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE SEQUENCE SEQ_BNO /*BOARD SEQUENCE*/
    MINVALUE 1
    MAXVALUE 999999999999
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE SEQUENCE SEQ_NNO /*NOTICE SEQUENCE*/
    MINVALUE 1
    MAXVALUE 999999999999
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE SEQUENCE SEQ_CNO /*coupon SEQUENCE*/
    MINVALUE 1
    MAXVALUE 999999999999
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;

CREATE SEQUENCE SEQ_RENO /*reservation SEQUENCE*/
    MINVALUE 1
    MAXVALUE 999999999999
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;

/*PK 적용조건*/

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("MEMBER_NO");
ALTER TABLE "ROOM" ADD CONSTRAINT "PK_ROOM" PRIMARY KEY ("ROOM_NO");
ALTER TABLE "PRODUCT_TABLE" ADD CONSTRAINT "PK_PRODUCT_TABLE" PRIMARY KEY ("PRODUCT_NO");
ALTER TABLE "QNA" ADD CONSTRAINT "PK_QNA" PRIMARY KEY ("BOARD_NO");
ALTER TABLE "FAQ" ADD CONSTRAINT "PK_FAQ" PRIMARY KEY ("BOARD_NO");
ALTER TABLE "CATEGORY" ADD CONSTRAINT "PK_CATEGORY" PRIMARY KEY ("CATEGORY");
ALTER TABLE "NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY ("NOTICE_NO");
ALTER TABLE "COUPON" ADD CONSTRAINT "PK_COUPON" PRIMARY KEY ("COUPON_NO");
ALTER TABLE "RESERVATION" ADD CONSTRAINT "PK_RESERVATION" PRIMARY KEY ("RESERVATION_NO");



/* FK 적용 조건*/

ALTER TABLE "PRODUCT_TABLE" ADD CONSTRAINT "FK_ROOM_TO_PRODUCT" FOREIGN KEY ("ROOM_NO") REFERENCES "ROOM" ("ROOM_NO")               ON DELETE CASCADE ;
ALTER TABLE "QNA" ADD CONSTRAINT "FK_MEMBER_TO_QnA" FOREIGN KEY ("MEMBER_NO")REFERENCES "MEMBER" ("MEMBER_NO")                      ON DELETE CASCADE ;
ALTER TABLE "QNA" ADD CONSTRAINT "FK_CATEGORY_TO_QnA" FOREIGN KEY ("CATEGORY")REFERENCES "CATEGORY" ("CATEGORY")                    ON DELETE CASCADE ;
ALTER TABLE "FAQ" ADD CONSTRAINT "FK_MEMBER_TO_FAQ" FOREIGN KEY ("MEMBER_NO")REFERENCES "MEMBER" ("MEMBER_NO")                      ON DELETE CASCADE ;
ALTER TABLE "FAQ" ADD CONSTRAINT "FK_CATEGORY_TO_FAQ" FOREIGN KEY ("CATEGORY")REFERENCES "CATEGORY" ("CATEGORY")                    ON DELETE CASCADE ;
ALTER TABLE "NOTICE" ADD CONSTRAINT "FK_MEMBER_TO_NOTICE" FOREIGN KEY ("MEMBER_NO")REFERENCES "MEMBER" ("MEMBER_NO")                ON DELETE CASCADE ;
ALTER TABLE "COUPON" ADD CONSTRAINT "FK_MEMBER_TO_COUPON" FOREIGN KEY ("MEMBER_NO") REFERENCES "MEMBER" ("MEMBER_NO")               ON DELETE CASCADE ;
ALTER TABLE "RESERVATION" ADD CONSTRAINT "FK_MEMBER_TO_RE" FOREIGN KEY ("MEMBER_NO") REFERENCES "MEMBER" ( "MEMBER_NO")             ON DELETE CASCADE ;
ALTER TABLE "RESERVATION" ADD CONSTRAINT "FK_PRODUCT_TO_RE" FOREIGN KEY ( "PRODUCT_NO") REFERENCES "PRODUCT_TABLE" ( "PRODUCT_NO")  ON DELETE CASCADE ;
