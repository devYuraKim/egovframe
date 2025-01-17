CREATE TABLE COMTECOPSEQ
(
	TABLE_NAME            VARCHAR2(20)  NOT NULL ,
	NEXT_ID               NUMBER(30)  NULL ,
CONSTRAINT  COMTECOPSEQ_PK PRIMARY KEY (TABLE_NAME)
);


CREATE TABLE VIBRATOR
(
	SN                    NUMERIC(6) NOT NULL,
	UUID                  VARCHAR(50) NOT NULL,
	TIMESTAMP             VARCHAR(20) NULL,
	 PRIMARY KEY (SN,UUID)
)
;



CREATE TABLE ACCELERATOR
(
	SN                    NUMERIC(6) NOT NULL,
	UUID                  VARCHAR(50) NOT NULL,
	XAXIS                 VARCHAR(20) NULL,
	YAXIS                 VARCHAR(20) NULL,
	ZAXIS                 VARCHAR(20) NULL,
	TIMESTAMP             VARCHAR(20) NULL,
	USEYN                 CHAR(1) NULL,
	 PRIMARY KEY (SN,UUID)
)
;



CREATE TABLE CONTACT_INFO
(
	ID                    CHAR(20) NOT NULL,
	NAME                  CHAR(60) NULL,
	TELNO                 CHAR(20) NULL,
	EMAILS                VARCHAR(50) NULL,
	USEYN                 CHAR(1) NULL,
	UUID                  VARCHAR(50) NOT NULL,
	 PRIMARY KEY (UUID,ID)
)
;



CREATE TABLE FILE_DETAIL_INFO
(
	FILE_SN               NUMERIC(20) NOT NULL,
	FILE_STRE_COURS       VARCHAR(2000) NULL,
	STRE_FILE_NM          VARCHAR(255) NULL,
	ORIGNL_FILE_NM        VARCHAR(255) NULL,
	FILE_EXTSN            VARCHAR(20) NULL,
	FILE_CN               BLOB NULL,
	FILE_SIZE             NUMERIC(8) NULL,
	 PRIMARY KEY (FILE_SN)
)
;



CREATE TABLE FILE_READER_WRITE
(
	SN                    NUMERIC(6) NOT NULL,
	UUID                  VARCHAR(50) NOT NULL,
	FILE_NM               VARCHAR(255) NULL,
	FILE_TYPE             VARCHAR(40) NULL,
	UPDT_DT               DATE NULL,
	USEYN                 CHAR(1) NULL,
	FILE_SN               NUMERIC(20) NOT NULL,
	FILE_COURS            VARCHAR(2000) NULL,
	FILE_SIZE             VARCHAR(40) NULL,
	 PRIMARY KEY (SN,UUID),
	CONSTRAINT FILE_READER_WRITE_FK1 FOREIGN KEY (FILE_SN) REFERENCES FILE_DETAIL_INFO(FILE_SN) ON DELETE CASCADE
)
;



CREATE TABLE MEDIA
(
	SN                    NUMERIC(6) NOT NULL,
	UUID                  VARCHAR(50)  NOT NULL ,
	MD_CODE               VARCHAR(40) NULL,
	MD_SJ                 VARCHAR(255) NULL,
	USEYN                 CHAR(1) NULL,
	REVIV_CO              VARCHAR(40) NULL,
	FILE_SN               NUMERIC(20) NOT NULL,
	 PRIMARY KEY (SN, UUID),
	CONSTRAINT MEDIA_FK1 FOREIGN KEY (FILE_SN) REFERENCES FILE_DETAIL_INFO(FILE_SN) ON DELETE CASCADE
)
;



CREATE TABLE DEVICE
(
	SN                    NUMERIC(6) NOT NULL,
	UUID                  VARCHAR(50) NOT NULL,
	TELNO                 VARCHAR(15) NULL,
	STRGE_INFO            VARCHAR(40) NULL,
	NTWRK_DEVICE_INFO     VARCHAR(20) NULL,
	PG_VER                VARCHAR(40) NULL,
	DEVICE_NM             VARCHAR(200) NULL,
	USEYN                 CHAR(1) NULL,
	OS                  VARCHAR(15) NULL,
	 PRIMARY KEY (SN,UUID)
)
;



CREATE TABLE INTERFACE_EGOV
(
	SN                    NUMERIC(6) NOT NULL,
	UUID                  VARCHAR(50) NOT NULL,
	EMAILS                VARCHAR(50) NULL,
	USER_ID               VARCHAR(20) NULL,
	USER_PW               VARCHAR(2000) NULL,
	 PRIMARY KEY (SN,UUID)
)
;



CREATE TABLE COMPASS
(
	SN                    NUMERIC(6) NOT NULL,
	UUID                  VARCHAR(50) NOT NULL,
	DRC                   VARCHAR(40) NULL,
	ACCRCY                VARCHAR(40) NULL,
	USEYN                 CHAR(1) NULL,
	TIMESTAMP             VARCHAR(20) NULL,
	 PRIMARY KEY (SN,UUID)
)
;



CREATE TABLE GPS
(
	SN                    NUMERIC(6) NOT NULL,
	UUID                  VARCHAR(50) NOT NULL,
	LA                    VARCHAR(48) NULL,
	LO                    VARCHAR(48) NULL,
	ACCRCY                VARCHAR(10) NULL,
	USEYN                 CHAR(1) NULL,
	 PRIMARY KEY (SN,UUID)
)
;



CREATE TABLE CAMERA
(
	SN                    NUMERIC(6) NOT NULL,
	UUID                  VARCHAR(50) NOT NULL,
	PHOTO_SJ              VARCHAR(255) NULL,
	USEYN                 CHAR(1) NULL,
	FILE_SN               NUMERIC(20) NOT NULL,
	 PRIMARY KEY (SN,UUID),
	CONSTRAINT CAMERA_FK1 FOREIGN KEY (FILE_SN) REFERENCES FILE_DETAIL_INFO(FILE_SN) ON DELETE CASCADE
)
;



CREATE TABLE NETWORK
(
	SN                    NUMERIC(6) NOT NULL,
	UUID                  VARCHAR(50) NOT NULL,
	NTWRK_TYPE            VARCHAR(20) NULL,
	USEYN                 CHAR(1) NULL,
	 PRIMARY KEY (SN,UUID)
)
;



CREATE TABLE PKI
(
	SN                    NUMERIC(6) NOT NULL,
	UUID                  VARCHAR(50) NOT NULL,
	CRTFC_DT              DATE NULL,
	ENTRPRS_SE_CODE       CHAR(15) NULL,
	DN                    VARCHAR(255) NULL,
	 PRIMARY KEY (SN,UUID)
)
;



CREATE TABLE CODE
(
	CODE                  CHAR(3) NOT NULL,
	CODE_ID               VARCHAR(6) NOT NULL,
	CODE_NM               VARCHAR(60) NULL,
	CODE_DC               VARCHAR(200) NULL,
	 PRIMARY KEY (CODE,CODE_ID)
)
;



CREATE TABLE PUSH_DEVICE
(
  SN                    NUMERIC(6) NOT NULL,
  UUID                  VARCHAR(50) NOT NULL,
  NTWRK_DEVICE_INFO     VARCHAR(20)  NULL,
  OS_VER                VARCHAR(40)  NULL,
  DEVICE_NM             VARCHAR(200)  NULL,
  USEYN                 CHAR(1)  NULL,
  OS_TYPE               VARCHAR(15)  NULL,
  TOKEN_ID              VARCHAR(500)  NULL,
  	PRIMARY KEY (SN,UUID)
)
;



CREATE TABLE PUSH_MESSAGE (
  SN                    NUMERIC(6) NOT NULL,
  UUID                  VARCHAR(50) NOT NULL,
  MESSAGE               VARCHAR(2000) NULL,
  SND_DT                VARCHAR(20) NULL,
  TOKEN_ID              VARCHAR(250) NOT NULL,
  	PRIMARY KEY (SN,UUID,TOKEN_ID)
)
;



CREATE TABLE RESOURCE_UPDATE (
  SN                NUMERIC(6) NOT NULL,
  APP_ID            VARCHAR(45) NULL,
  OS_TYPE           VARCHAR(15) NULL,
  RES_VERSION       VARCHAR(45) NULL,
  USE_YN            CHAR(1) NULL,
  UPDATE_CONTENT    VARCHAR(1000) NULL,
  UPD_DT            DATE NULL,
  FILE_SN           NUMERIC(20) NULL,
  	PRIMARY KEY (SN)
)
;



CREATE TABLE BARCODE_INFO (
  SN                NUMERIC(6) NOT NULL,
  CODE_TYPE         VARCHAR(45) NOT NULL,
  CODE_TEXT         VARCHAR(45) NULL,
  USEYN             VARCHAR(45) NULL,
  CODE_DT           VARCHAR(45) NULL,
  PRIMARY KEY (SN, CODE_TYPE)
  )
  ;

  
  
CREATE TABLE FILE_OPENER_LIST (
  SN                NUMERIC(6) NOT NULL,  
  USE_YN            CHAR(1)  NULL,  
  UPD_DT            DATE  NULL,
  FILE_SN           NUMERIC(20)  NULL,
  PRIMARY KEY (SN)
);



CREATE TABLE DETECTION (
  SN                NUMERIC(6) NOT NULL,
  UUID              VARCHAR(45) NOT NULL,
  OS                VARCHAR(45) NOT NULL,
  PG_VER            VARCHAR(45) NOT NULL,
  DETECTION         VARCHAR(45) NOT NULL,
  PRIMARY KEY (SN,UUID,OS,PG_VER,DETECTION)
  );