
  CREATE TABLE "THH_C4C"."T_OTHER_INSURANCE"
   (	"CLASSTYPE" VARCHAR2(255),
	"INS_ID" NUMBER(19,0),
	"INS_C4C_ID" VARCHAR2(4000),
	"INS_UNIVID" VARCHAR2(4000),
	"INS_CRTD" DATE,
	"INS_OBJ_STT" NUMBER(10,0),
	"INS_VERS" NUMBER(19,0) DEFAULT 0,
	"INS_MEMBER" NUMBER(19,0),
	"INS_TYPE" VARCHAR2(255),
	"INS_INSURANCE_ID" VARCHAR2(255),
	"INS_EFFECTIVE_DATE" DATE,
	"INS_TERMINATION_DATE" DATE,
	"INS_VSBT" NUMBER(10,0),
	"INS_DLTDDT" DATE,
	"INS_ORIGCRTR" NUMBER(19,0),
	"INS_ORIGCRTRLOGDIN" NUMBER(19,0),
	"INS_LAS_ACT" NUMBER(10,0),
	"INS_LAS_ACT_BY" NUMBER(19,0),
	"INS_LAS_ACT_BY_LOGDIN" NUMBER(19,0),
	"INS_LAS_ACT_ACTRTYP" NUMBER(10,0),
	"INS_LAS_ACT_TIM" DATE
   ) ;


  CREATE TABLE "THH_C4C"."T_USR"
   (	"CLASSTYPE" VARCHAR2(255),
	"USR_C4C_ID" VARCHAR2(4000),
	"USR_CRTD" DATE,
	"USR_LAS_ACT" NUMBER(10,0),
	"USR_LAS_ACT_ACTRTYP" NUMBER(10,0),
	"USR_LAS_ACT_TIM" DATE,
	"USR_OBJ_STT" NUMBER(10,0),
	"USR_VERS" NUMBER(19,0) DEFAULT 0,
	"USR_VSBT" NUMBER(10,0),
	"USR_DLTDDT" DATE,
	"USR_LAS_ACT_BY" NUMBER(19,0),
	"USR_ORIGCRTR" NUMBER(19,0),
	"USR_ORIGCRTRLOGDIN" NUMBER(19,0),
	"USR_LAS_ACT_BY_LOGDIN" NUMBER(19,0),
	"USR_UNIVID" VARCHAR2(4000),
	"USR_FRSTNAM" VARCHAR2(4000),
	"USR_MDLENAM" VARCHAR2(4000),
	"USR_LAS_NAM" VARCHAR2(4000),
	"USR_DT_OF_BRTH" DATE,
	"USR_GNDRCODE" NUMBER(10,0),
	"USR_FRSTATVD" DATE,
	"USR_LAS_ATVD" DATE,
	"USR_LAS_DCTD" DATE,
	"USR_WKFWISTCID" VARCHAR2(4000),
	"USR_CNV_ID" VARCHAR2(4000),
	"USR_OWNRCHNDFLAG" NUMBER(1,0),
	"USR_OWNRCHNDCNT" NUMBER(10,0),
	"USR_SBTDAT" DATE,
	"USR_ID" NUMBER(19,0),
	"PRV_PLN_ID" VARCHAR2(4000),
	"PRV_UPN_ID" VARCHAR2(4000),
	"PRV_FED_TAX" VARCHAR2(4000),
	"PRV_TOTLPNTS" NUMBER(10,0),
	"PRV_TOTLPNTSIN_PCTC" NUMBER(10,0),
	"PRV_TOTLPAYRMEMS" NUMBER(10,0),
	"PRV_TOTLPAYRMEMSIN_PCTC" NUMBER(10,0),
	"PRV_ACNGNEW_PNTS" NUMBER(1,0),
	"PRV_ATHDFOR_AUMTDTMN" NUMBER(1,0),
	"PRV_INSCID" VARCHAR2(4000),
	"PRV_IS_ADM" NUMBER(1,0) DEFAULT 0,
	"PRV_PCP_IND" NUMBER(1,0),
	"PRV_ID" NUMBER(19,0),
	"MBUR_DT_OF_DTH" DATE,
	"MBUR_ELBL" NUMBER(1,0),
	"MBUR_COB" NUMBER(1,0),
	"MBUR_COB_NAM" VARCHAR2(4000),
	"MBUR_INSCID_AT_OTHRINSR" VARCHAR2(4000),
	"MBUR_PMRYINSR" NUMBER(1,0),
	"MBUR_CRDTIND" NUMBER(1,0),
	"MBUR_INSCID" VARCHAR2(4000),
	"MBUR_SCL_SCTYNMBR" VARCHAR2(4000),
	"MBUR_CNFTCNCT" NUMBER(1,0),
	"MBUR_DNF_CODE" VARCHAR2(4000),
	"MBUR_ID" NUMBER(19,0),
	"FF_ID" NUMBER(19,0),
	"PAYR_EMPEID" VARCHAR2(4000),
	"PAYR_SCL_SCTYNMBR" VARCHAR2(4000),
	"PAYR_STRTOF_YR" VARCHAR2(4000),
	"PAYR_HREDDT" DATE,
	"PAYR_TMTDDT" DATE,
	"PAYR_THNKHLTHSTRTDT" DATE,
	"PAYR_THNKHLTHEND_DT" DATE,
	"PAYR_WKLDLMITBY_ALL_USR_ROLS" NUMBER(1,0),
	"PAYR_WKLDLMITBY_PMRYUSR_ROLE" NUMBER(1,0),
	"PAYR_WKLDLMITBY" NUMBER(10,0),
	"PAYR_WKLDLMITFNALDCDR" NUMBER(10,0),
	"PAYR_WKLDLMITBY_ROLEBY_SVTY" NUMBER(10,0),
	"PAYR_WKLDLMITBY_TOTLWKLD" NUMBER(10,0),
	"PAYR_WKLDLMTDBY_WORKTYP" NUMBER(10,0),
	"PAYR_REG_DY_OFF_MON" NUMBER(1,0),
	"PAYR_REG_DY_OFF_TUES" NUMBER(1,0),
	"PAYR_REG_DY_OFF_WED" NUMBER(1,0),
	"PAYR_REG_DY_OFF_THRS" NUMBER(1,0),
	"PAYR_REG_DY_OFF_FRI" NUMBER(1,0),
	"PAYR_REG_DY_OFF_SAT" NUMBER(1,0),
	"PAYR_REG_DY_OFF_SUN" NUMBER(1,0),
	"PAYR_SVTYIDX" NUMBER(10,0),
	"PAYR_TOTLWKLD" NUMBER(10,0),
	"PAYR_CASERQTS" NUMBER(10,0),
	"PAYR_CASS" NUMBER(10,0),
	"PAYR_UM_RQTS" NUMBER(10,0),
	"PAYR_UM_EVTS" NUMBER(10,0),
	"PAYR_CM_PRJ_RQTS" NUMBER(10,0),
	"PAYR_CM_PRJS" NUMBER(10,0),
	"PAYR_REVWRQTS" NUMBER(10,0),
	"PAYR_ID" NUMBER(19,0),
	"USR_LAS_DCTDBY" NUMBER(19,0),
	"USR_FRSTATVDBY" NUMBER(19,0),
	"USR_LAS_ATVDBY" NUMBER(19,0),
	"USR_RATNAPVL" NUMBER(19,0),
	"USR_RFNGWKFWTSK" NUMBER(19,0),
	"USR_PRVSRFNGTSK" NUMBER(19,0),
	"USR_PRVSRFNGTSK_PRMN" NUMBER(19,0),
	"USR_OWNR" NUMBER(19,0),
	"USR_PRVSOWNR" NUMBER(19,0),
	"USR_PRVSSNDR" NUMBER(19,0),
	"USR_PRVSOWNRPRMN" NUMBER(19,0),
	"USR_TNFR" NUMBER(19,0),
	"USR_PRVSTNFR" NUMBER(19,0),
	"USR_SBTDBY" NUMBER(19,0),
	"MBUR_RCPTTRKG" NUMBER(19,0),
	"MBUR_LAS_REVW" NUMBER(19,0),
	"USR_CSTMFLDS" NUMBER(19,0),
	"PRV_PCP_CAT" NUMBER(19,0),
	"PRV_PVDRTYP" NUMBER(19,0),
	"USR_ECTY" NUMBER(19,0),
	"USR_NAM_SFIX" NUMBER(19,0),
	"USR_NAM_PRFX" NUMBER(19,0),
	"MBUR_RLSPTO_SBCR" NUMBER(19,0),
	"PAYR_CSTMWKLDLMIT" NUMBER(19,0),
	"PAYR_ACTLWKLD" NUMBER(19,0),
	"USR_CNCTINFO" NUMBER(19,0),
	"USR_MRGEMSTR" NUMBER(19,0),
	"PRV_PVDRPAYRDAT" NUMBER(19,0),
	"MBUR_SBCR" NUMBER(19,0),
	"PAYR_PAYRPAYRDAT" NUMBER(19,0),
	"PAYR_BCK1" NUMBER(19,0),
	"PAYR_SVSR" NUMBER(19,0),
	"PAYR_BCK2" NUMBER(19,0),
	"PAYR_BCK3" NUMBER(19,0),
	"PAYR_RGNLSNGS" NUMBER(19,0),
	"PAYR_STCYNOTEPRPS" NUMBER(19,0),
	"MBUR_MEMBPAYRDAT" NUMBER(19,0),
	"USR_PMRYLANG" NUMBER(19,0),
	"MBUR_MEDICAID" VARCHAR2(4000),
	"MBUR_HICNID" VARCHAR2(4000),
	"PRV_SPLRTYP" NUMBER(19,0),
	"MBUR_MEDICAID_RECERT_DATE" DATE,
	"MBUR_RESTRICTED_RCPNT_PRGRM" NUMBER(1,0),
	"MBUR_MBI" VARCHAR2(25),
	"MBUR_ENDANGERED" NUMBER(1,0),
	"MBUR_SAFEWORD" VARCHAR2(250),
	"USR_IPGROUPID" NUMBER(19,0) DEFAULT null,
	"USR_PRODUCTCATEGORYID" NUMBER(19,0) DEFAULT null
   ) ;


  CREATE BITMAP INDEX "THH_C4C"."IXB_USR_CLASSTYPE" ON "THH_C4C"."T_USR" ("CLASSTYPE")
  ;


  CREATE BITMAP INDEX "THH_C4C"."IXB_USR_OBJ_STT" ON "THH_C4C"."T_USR" ("USR_OBJ_STT")
  ;


  CREATE INDEX "THH_C4C"."IX_FK_INS_MEMBER" ON "THH_C4C"."T_OTHER_INSURANCE" ("INS_MEMBER")
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_HICNID" ON "THH_C4C"."T_USR" ("MBUR_HICNID")
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_HICNID_DS" ON "THH_C4C"."T_USR" (UPPER("MBUR_HICNID"))
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_HICNID_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("MBUR_HICNID")))
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_INSCID" ON "THH_C4C"."T_USR" ("MBUR_INSCID")
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_INSCID_DS" ON "THH_C4C"."T_USR" (UPPER("MBUR_INSCID"))
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_INSCID_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("MBUR_INSCID")))
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_LAS_REVW" ON "THH_C4C"."T_USR" ("MBUR_LAS_REVW")
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_MEDICAID" ON "THH_C4C"."T_USR" ("MBUR_MEDICAID")
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_MEDICAID_DS" ON "THH_C4C"."T_USR" (UPPER("MBUR_MEDICAID"))
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_MEDICAID_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("MBUR_MEDICAID")))
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_MEMBPAYRDAT" ON "THH_C4C"."T_USR" ("MBUR_MEMBPAYRDAT")
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_RCPTTRKG" ON "THH_C4C"."T_USR" ("MBUR_RCPTTRKG")
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_RLSPTO_SBCR" ON "THH_C4C"."T_USR" ("MBUR_RLSPTO_SBCR")
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_SBCR" ON "THH_C4C"."T_USR" ("MBUR_SBCR")
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_SCL_SCTYNMBR_DS" ON "THH_C4C"."T_USR" (UPPER("MBUR_SCL_SCTYNMBR"))
  ;


  CREATE INDEX "THH_C4C"."IX_MBUR_SCL_SCTYNMBR_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("MBUR_SCL_SCTYNMBR")))
  ;


  CREATE INDEX "THH_C4C"."IX_NVL_USR_MRGEMSTR_FF_ID" ON "THH_C4C"."T_USR" (NVL("USR_MRGEMSTR","FF_ID"))
  ;


  CREATE INDEX "THH_C4C"."IX_NVL_USR_MRGEMSTR_MBUR_ID" ON "THH_C4C"."T_USR" (NVL("USR_MRGEMSTR","MBUR_ID"))
  ;


  CREATE INDEX "THH_C4C"."IX_NVL_USR_MRGEMSTR_PAYR_ID" ON "THH_C4C"."T_USR" (NVL("USR_MRGEMSTR","PAYR_ID"))
  ;


  CREATE INDEX "THH_C4C"."IX_NVL_USR_MRGEMSTR_PRV_ID" ON "THH_C4C"."T_USR" (NVL("USR_MRGEMSTR","PRV_ID"))
  ;


  CREATE INDEX "THH_C4C"."IX_NVL_USR_MRGEMSTR_USR_ID" ON "THH_C4C"."T_USR" (NVL("USR_MRGEMSTR","USR_ID"))
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_ACTLWKLD" ON "THH_C4C"."T_USR" ("PAYR_ACTLWKLD")
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_BCK1" ON "THH_C4C"."T_USR" ("PAYR_BCK1")
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_BCK2" ON "THH_C4C"."T_USR" ("PAYR_BCK2")
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_BCK3" ON "THH_C4C"."T_USR" ("PAYR_BCK3")
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_CSTMWKLDLMIT" ON "THH_C4C"."T_USR" ("PAYR_CSTMWKLDLMIT")
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_EMPEID_DS" ON "THH_C4C"."T_USR" (UPPER("PAYR_EMPEID"))
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_EMPEID_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("PAYR_EMPEID")))
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_PAYRPAYRDAT" ON "THH_C4C"."T_USR" ("PAYR_PAYRPAYRDAT")
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_RGNLSNGS" ON "THH_C4C"."T_USR" ("PAYR_RGNLSNGS")
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_SCL_SCTYNMBR_DS" ON "THH_C4C"."T_USR" (UPPER("PAYR_SCL_SCTYNMBR"))
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_SCL_SCTYNMBR_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("PAYR_SCL_SCTYNMBR")))
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_STCYNOTEPRPS" ON "THH_C4C"."T_USR" ("PAYR_STCYNOTEPRPS")
  ;


  CREATE INDEX "THH_C4C"."IX_PAYR_SVSR" ON "THH_C4C"."T_USR" ("PAYR_SVSR")
  ;


  CREATE INDEX "THH_C4C"."IX_PRV_FED_TAX_DS" ON "THH_C4C"."T_USR" (UPPER("PRV_FED_TAX"))
  ;


  CREATE INDEX "THH_C4C"."IX_PRV_FED_TAX_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("PRV_FED_TAX")))
  ;


  CREATE INDEX "THH_C4C"."IX_PRV_PCP_CAT" ON "THH_C4C"."T_USR" ("PRV_PCP_CAT")
  ;


  CREATE INDEX "THH_C4C"."IX_PRV_PLN_ID_DS" ON "THH_C4C"."T_USR" (UPPER("PRV_PLN_ID"))
  ;


  CREATE INDEX "THH_C4C"."IX_PRV_PLN_ID_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("PRV_PLN_ID")))
  ;


  CREATE INDEX "THH_C4C"."IX_PRV_PVDRPAYRDAT" ON "THH_C4C"."T_USR" ("PRV_PVDRPAYRDAT")
  ;


  CREATE INDEX "THH_C4C"."IX_PRV_PVDRTYP" ON "THH_C4C"."T_USR" ("PRV_PVDRTYP")
  ;


  CREATE INDEX "THH_C4C"."IX_PRV_SPLRTYP" ON "THH_C4C"."T_USR" ("PRV_SPLRTYP")
  ;


  CREATE INDEX "THH_C4C"."IX_PRV_UPN_ID_DS" ON "THH_C4C"."T_USR" (UPPER("PRV_UPN_ID"))
  ;


  CREATE INDEX "THH_C4C"."IX_PRV_UPN_ID_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("PRV_UPN_ID")))
  ;


  CREATE INDEX "THH_C4C"."IX_USR_C4C_ID_DS" ON "THH_C4C"."T_USR" (UPPER("USR_C4C_ID"))
  ;


  CREATE INDEX "THH_C4C"."IX_USR_C4C_ID_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("USR_C4C_ID")))
  ;


  CREATE INDEX "THH_C4C"."IX_USR_CNCTINFO" ON "THH_C4C"."T_USR" ("USR_CNCTINFO")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_CRTD" ON "THH_C4C"."T_USR" ("USR_CRTD")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_CSTMFLDS" ON "THH_C4C"."T_USR" ("USR_CSTMFLDS")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_ECTY" ON "THH_C4C"."T_USR" ("USR_ECTY")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_FRSTATVDBY" ON "THH_C4C"."T_USR" ("USR_FRSTATVDBY")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_FRSTNAM_DS" ON "THH_C4C"."T_USR" (UPPER("USR_FRSTNAM"))
  ;


  CREATE INDEX "THH_C4C"."IX_USR_FRSTNAM_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("USR_FRSTNAM")))
  ;


  CREATE INDEX "THH_C4C"."IX_USR_IDNODELMSTR" ON "THH_C4C"."T_USR" ("USR_ID", DECODE("USR_OBJ_STT",2,2,1), NVL("USR_MRGEMSTR","USR_ID"))
  ;


  CREATE INDEX "THH_C4C"."IX_USR_LAS_ATVDBY" ON "THH_C4C"."T_USR" ("USR_LAS_ATVDBY")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_LAS_DCTDBY" ON "THH_C4C"."T_USR" ("USR_LAS_DCTDBY")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_LAS_NAM_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("USR_LAS_NAM")))
  ;


  CREATE INDEX "THH_C4C"."IX_USR_MDLENAM_DS" ON "THH_C4C"."T_USR" (UPPER("USR_MDLENAM"))
  ;


  CREATE INDEX "THH_C4C"."IX_USR_MDLENAM_RS" ON "THH_C4C"."T_USR" (UPPER("THH_C4C"."REVERSE_STR"("USR_MDLENAM")))
  ;


  CREATE INDEX "THH_C4C"."IX_USR_MRGEMSTR" ON "THH_C4C"."T_USR" ("USR_MRGEMSTR")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_MRGEMSTR_MBUR_ID" ON "THH_C4C"."T_USR" ("MBUR_ID", NVL("USR_MRGEMSTR","MBUR_ID"))
  ;


  CREATE INDEX "THH_C4C"."IX_USR_NAM_PRFX" ON "THH_C4C"."T_USR" ("USR_NAM_PRFX")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_NAM_SFIX" ON "THH_C4C"."T_USR" ("USR_NAM_SFIX")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_OWNR" ON "THH_C4C"."T_USR" ("USR_OWNR")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_PMRYLANG" ON "THH_C4C"."T_USR" ("USR_PMRYLANG")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_PRVSOWNR" ON "THH_C4C"."T_USR" ("USR_PRVSOWNR")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_PRVSOWNRPRMN" ON "THH_C4C"."T_USR" ("USR_PRVSOWNRPRMN")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_PRVSRFNGTSK" ON "THH_C4C"."T_USR" ("USR_PRVSRFNGTSK")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_PRVSRFNGTSK_PRMN" ON "THH_C4C"."T_USR" ("USR_PRVSRFNGTSK_PRMN")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_PRVSSNDR" ON "THH_C4C"."T_USR" ("USR_PRVSSNDR")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_PRVSTNFR" ON "THH_C4C"."T_USR" ("USR_PRVSTNFR")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_RATNAPVL" ON "THH_C4C"."T_USR" ("USR_RATNAPVL")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_RFNGWKFWTSK" ON "THH_C4C"."T_USR" ("USR_RFNGWKFWTSK")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_SBTDBY" ON "THH_C4C"."T_USR" ("USR_SBTDBY")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_TNFR" ON "THH_C4C"."T_USR" ("USR_TNFR")
  ;


  CREATE INDEX "THH_C4C"."IX_USR_UNIVID" ON "THH_C4C"."T_USR" ("USR_UNIVID")
  ;


  CREATE UNIQUE INDEX "THH_C4C"."PK_INSURANCE_IDS" ON "THH_C4C"."T_OTHER_INSURANCE" ("INS_ID")
  ;


  CREATE UNIQUE INDEX "THH_C4C"."PK_T_USR" ON "THH_C4C"."T_USR" ("USR_ID")
  ;


  CREATE INDEX "THH_C4C"."T_USR_IX_CLSTYP_MRGE_LAS_NAM" ON "THH_C4C"."T_USR" ("CLASSTYPE", "USR_MRGEMSTR", UPPER("USR_LAS_NAM"))
  ;


  CREATE INDEX "THH_C4C"."T_USR_IX_MBUR_SCL_ID" ON "THH_C4C"."T_USR" ("MBUR_SCL_SCTYNMBR", "USR_ID", "MBUR_ID")
  ;


  CREATE INDEX "THH_C4C"."T_USR_IX_OBJ_STT2_MRGMSTR_NULL" ON "THH_C4C"."T_USR" (CASE "USR_OBJ_STT" WHEN 2 THEN 0 ELSE CASE  WHEN "USR_MRGEMSTR" IS NULL THEN 1 ELSE 0 END  END )
  ;


  CREATE INDEX "THH_C4C"."T_USR_IX_PAYR_SSN" ON "THH_C4C"."T_USR" ("PAYR_SCL_SCTYNMBR")
  ;


  CREATE INDEX "THH_C4C"."T_USR_IX_PRV_PLN_ID" ON "THH_C4C"."T_USR" ("PRV_PLN_ID")
  ;


  CREATE INDEX "THH_C4C"."T_USR_IX_TUNE1" ON "THH_C4C"."T_USR" (TRUNC("USR_DLTDDT"), NVL("USR_MRGEMSTR","MBUR_ID"))
  ;


  CREATE INDEX "THH_C4C"."T_USR_IX_TUNE2" ON "THH_C4C"."T_USR" (TRUNC("USR_CRTD"))
  ;


  CREATE INDEX "THH_C4C"."T_USR_IX_USR_C4C_ID_CLASSTYPE" ON "THH_C4C"."T_USR" ("USR_C4C_ID", "CLASSTYPE")
  ;


  CREATE INDEX "THH_C4C"."T_USR_IX_USR_NAM" ON "THH_C4C"."T_USR" (UPPER("USR_LAS_NAM"), "CLASSTYPE", "USR_OBJ_STT")
  ;


  CREATE INDEX "THH_C4C"."T_USR_IX_USR_NAM3" ON "THH_C4C"."T_USR" ("USR_LAS_NAM", "CLASSTYPE", "USR_ID")
  ;


  CREATE INDEX "THH_C4C"."T_USR_IX_USR_NAM4" ON "THH_C4C"."T_USR" (UPPER("USR_LAS_NAM"), "CLASSTYPE", "USR_ID")
  ;


  CREATE INDEX "THH_C4C"."T_USR_SPEC" ON "THH_C4C"."T_USR" (SUBSTR("USR_FRSTNAM",1,1)||"USR_LAS_NAM")
  ;


  CREATE UNIQUE INDEX "THH_C4C"."UK_FF" ON "THH_C4C"."T_USR" ("FF_ID")
  ;


  CREATE UNIQUE INDEX "THH_C4C"."UK_MBUR" ON "THH_C4C"."T_USR" ("MBUR_ID")
  ;


  CREATE UNIQUE INDEX "THH_C4C"."UK_PAYR" ON "THH_C4C"."T_USR" ("PAYR_ID")
  ;


  CREATE UNIQUE INDEX "THH_C4C"."UK_PRV" ON "THH_C4C"."T_USR" ("PRV_ID")
  ;

