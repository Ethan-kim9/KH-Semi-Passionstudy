/* 1/7일 MEMBER 테이블 컬럼 수정 */
/* not null에서 null로 변경 해줌 */
ALTER TABLE "MEMBER" DROP COLUMN "RECOM_CODE";
ALTER TABLE "MEMBER" ADD "RECOM_CODE" VARCHAR2(20) NULL;
COMMIT;