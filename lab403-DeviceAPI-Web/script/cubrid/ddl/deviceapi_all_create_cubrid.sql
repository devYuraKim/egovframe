CREATE TABLE COMTECOPSEQ
(
	TABLE_NAME            VARCHAR(60)  NOT NULL ,
	NEXT_ID               NUMERIC(30)  NULL ,
CONSTRAINT  COMTECOPSEQ_PK PRIMARY KEY (TABLE_NAME)
);

CREATE TABLE VIBRATOR
(
	SN                    NUMERIC(6)  NOT NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
	"TIMESTAMP"             VARCHAR(60)  NULL ,
CONSTRAINT  VIBRATOR_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE ACCELERATOR
(
	SN                    NUMERIC(6)  NOT NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
	XAXIS                 VARCHAR(60)  NULL ,
	YAXIS                 VARCHAR(60)  NULL ,
	ZAXIS                 VARCHAR(60)  NULL ,
	"TIMESTAMP"             VARCHAR(60)  NULL ,
	USEYN                 CHAR(3)  NULL ,
CONSTRAINT  ACCELERATOR_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE CONTACT_INFO
(
	ID                    CHAR(60)  NOT NULL ,
	NAME                  CHAR(180)  NULL ,
	TELNO                 CHAR(60)  NULL ,
	EMAILS                VARCHAR(150)  NULL ,
	USEYN                 CHAR(9)  NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
CONSTRAINT  CONTACT_INFO_PK PRIMARY KEY (UUID,ID)
);



CREATE TABLE FILE_DETAIL_INFO
(
	FILE_SN               NUMERIC(20)  NOT NULL ,
	FILE_STRE_COURS       VARCHAR(6000)  NULL ,
	STRE_FILE_NM          VARCHAR(765)  NULL ,
	ORIGNL_FILE_NM        VARCHAR(765)  NULL ,
	FILE_EXTSN            VARCHAR(60)  NULL ,
	FILE_CN               BIT VARYING  NULL ,
	FILE_SIZE             NUMERIC(8)  NULL ,
CONSTRAINT  FILE_DETAIL_INFO_PK PRIMARY KEY (FILE_SN)
);



CREATE TABLE FILE_READER_WRITE
(
	SN                    NUMERIC(6)  NOT NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
	FILE_NM               VARCHAR(765)  NULL ,
	FILE_TYPE             VARCHAR(120)  NULL ,
	UPDT_DT               DATETIME  NULL ,
	USEYN                 CHAR(9)  NULL ,
	FILE_SN               NUMERIC(20)  NOT NULL ,
	FILE_COURS            VARCHAR(6000)  NULL ,
	FILE_SIZE             VARCHAR(120)  NULL ,
CONSTRAINT  FILE_READER_WRITE_PK PRIMARY KEY (SN,UUID),
CONSTRAINT  FILE_READER_WRITE_FK1 FOREIGN KEY (FILE_SN) REFERENCES FILE_DETAIL_INFO(FILE_SN) ON DELETE CASCADE
);



CREATE TABLE MEDIA
(
	SN                    NUMERIC(6)  NOT NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
	MD_CODE               VARCHAR(120)  NULL ,
	MD_SJ                 VARCHAR(765)  NULL ,
	USEYN                 CHAR(3)  NULL ,
	REVIV_CO              VARCHAR(120)  NULL ,
	FILE_SN               NUMERIC(20)  NOT NULL ,
CONSTRAINT  MEDIA_PK PRIMARY KEY (SN, UUID),
CONSTRAINT  MEDIA_FK1 FOREIGN KEY (FILE_SN) REFERENCES FILE_DETAIL_INFO(FILE_SN) ON DELETE CASCADE
);



CREATE TABLE DEVICE
(
	SN                    NUMERIC(6)  NOT NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
	TELNO                 VARCHAR(45)  NULL ,
	STRGE_INFO            VARCHAR(120)  NULL ,
	NTWRK_DEVICE_INFO     VARCHAR(60)  NULL ,
	PG_VER                VARCHAR(120)  NULL ,
	DEVICE_NM             VARCHAR(600)  NULL ,
	USEYN                 CHAR(9)  NULL ,
	OS                  VARCHAR(45)  NULL ,
CONSTRAINT  DEVICE_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE INTERFACE_EGOV
(
	SN                    NUMERIC(6)  NOT NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
	EMAILS                VARCHAR(150)  NULL ,
	USER_ID               VARCHAR(60)  NULL ,
	USER_PW               VARCHAR(6000)  NULL ,
CONSTRAINT  INTERFACE_EGOV_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE COMPASS
(
	SN                    NUMERIC(6)  NOT NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
	DRC                   VARCHAR(120)  NULL ,
	ACCRCY                VARCHAR(120)  NULL ,
	USEYN                 CHAR(9)  NULL ,
	"TIMESTAMP"             VARCHAR(60)  NULL ,
CONSTRAINT  COMPASS_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE GPS
(
	SN                    NUMERIC(6)  NOT NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
	LA                    VARCHAR(144)  NULL ,
	LO                    VARCHAR(144)  NULL ,
	ACCRCY                VARCHAR(30)  NULL ,
	USEYN                 CHAR(9)  NULL ,
CONSTRAINT  GPS_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE CAMERA
(
	SN                    NUMERIC(6)  NOT NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
	PHOTO_SJ              VARCHAR(765)  NULL ,
	USEYN                 CHAR(9)  NULL ,
	FILE_SN               NUMERIC(20)  NOT NULL ,
CONSTRAINT  CAMERA_PK PRIMARY KEY (SN,UUID),
CONSTRAINT  CAMERA_FK1 FOREIGN KEY (FILE_SN) REFERENCES FILE_DETAIL_INFO(FILE_SN) ON DELETE CASCADE
);



CREATE TABLE NETWORK
(
	SN                    NUMERIC(6)  NOT NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
	NTWRK_TYPE            VARCHAR(60)  NULL ,
	USEYN                 CHAR(9)  NULL ,
CONSTRAINT  NETWORK_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE PKI
(
	SN                    NUMERIC(6)  NOT NULL ,
	UUID                  VARCHAR(150)  NOT NULL ,
	CRTFC_DT              DATETIME  NULL ,
	ENTRPRS_SE_CODE       CHAR(45)  NULL ,
	DN                    VARCHAR(765)  NULL ,
CONSTRAINT  PKI_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE CODE
(
	CODE                  CHAR(9)  NOT NULL ,
	CODE_ID               VARCHAR(18)  NOT NULL ,
	CODE_NM               VARCHAR(180)  NULL ,
	CODE_DC               VARCHAR(600)  NULL ,
CONSTRAINT  CODE_PK PRIMARY KEY (CODE,CODE_ID)
);



CREATE TABLE PUSH_DEVICE 
(
  SN                    NUMERIC(6)  NOT NULL ,
  UUID                  VARCHAR(50) NOT NULL,
  NTWRK_DEVICE_INFO     VARCHAR(20) NULL,
  OS_VER                VARCHAR(40) NULL,
  DEVICE_NM             VARCHAR(200) NULL,
  USEYN                 CHAR(3) NULL,
  OS_TYPE               VARCHAR(15) NULL,
  TOKEN_ID              VARCHAR(255) NULL,
CONSTRAINT  PUSH_DEVICE_PK PRIMARY KEY (SN,UUID) 	
);



CREATE TABLE PUSH_MESSAGE 
(
  SN                    NUMERIC(6) NOT NULL,
  UUID                  VARCHAR(50) NOT NULL,
  MESSAGE               VARCHAR(2000) NULL,
  SND_DT                VARCHAR(20) NULL,
  TOKEN_ID              VARCHAR(255) NOT NULL,
CONSTRAINT  PUSH_MESSAGE_PK PRIMARY KEY (SN,UUID,TOKEN_ID) 	
);



CREATE TABLE RESOURCE_UPDATE
(
  SN                NUMERIC(6) NOT NULL,
  APP_ID            VARCHAR(45) NULL,
  OS_TYPE           VARCHAR(15) NULL,
  RES_VERSION       VARCHAR(45) NULL,
  USE_YN            CHAR(1) NULL,
  UPDATE_CONTENT    VARCHAR(1000) NULL,
  UPD_DT            DATETIME NULL,
  FILE_SN           NUMERIC(20) NULL,
CONSTRAINT  RESOURCE_UPDATE_PK PRIMARY KEY (SN)
);



CREATE TABLE BARCODE_INFO 
(
  SN                NUMERIC NOT NULL,
  CODE_TYPE         VARCHAR(45) NOT NULL,
  CODE_TEXT         VARCHAR(45) NULL,
  USEYN             VARCHAR(45) NULL,
  CODE_DT           VARCHAR(45) NULL,
CONSTRAINT  BARCODE_INFO_PK PRIMARY KEY (SN,CODE_TYPE)
);



CREATE TABLE FILE_OPENER_LIST
(
  SN                NUMERIC(6) NOT NULL,  
  USE_YN            CHAR(1) NULL,  
  UPD_DT            TIMESTAMP NULL,
  FILE_SN           NUMERIC(20) NULL,
CONSTRAINT  FILE_OPENER_LIST_PK PRIMARY KEY (SN)
);



CREATE TABLE DETECTION 
(
  SN                NUMERIC NOT NULL,
  UUID              VARCHAR(45) NOT NULL,
  OS                VARCHAR(45) NOT NULL,
  PG_VER            VARCHAR(45) NOT NULL,
  DETECTION         VARCHAR(45) NOT NULL,
CONSTRAINT  DETECTION_PK PRIMARY KEY (SN,UUID,OS,PG_VER,DETECTION)
);
