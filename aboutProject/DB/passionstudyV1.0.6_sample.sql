

<<< 21.01.06 ������̺� ���� ������ >>>

	INSERT
	  INTO MEMBER
	  ( 
	    MEMBER_NO
      , MEMBER_NAME
      , MEMBER_ID
      , MEMBER_PWD
      , MEMBER_PHONE
      , MEMBER_DATE
      , ADMIN_CHECK
      , RECOM_COUNT
      , MEMBER_STATUS
      , AD_AGREE
      , RECOM_CODE
      , MEMBER_POINT
      , TOKEN1
      , TOKEN2
        )
	VALUES
	  (
	    SEQ_MNO.NEXTVAL
	  , '������'
	  , 'yejincha@naver.com'
	  , 'yejincha1234'
	  , '01050912610'
	  , DEFAULT
	  , DEFAULT
	  , DEFAULT
	  , DEFAULT
	  , DEFAULT
	  , 'qwerew'
	  , '5000'
	  , NULL
	  , NULL
	  );
    
    commit;
