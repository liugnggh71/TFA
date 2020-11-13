BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'TABLE'
, name => 'T_DDL_ITEM'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'TABLE'
, name => 'T_NOTE'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_ATTP_DFLTLTR_HEAD'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_ATTP_DSCM'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_CAREPLAN_NOTE_ID_DDLI_ID'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_CCTP_DFLTLDNGMSG'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_CLASSTYPE'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_CRTD'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_DDL'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_FRSTATVDBY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_LAS_ATVDBY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_LAS_DCTDBY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_OBJ_STT'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_OWNR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_PRNT_ID'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_PRVSOWNR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_PRVSOWNRPRMN'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_PRVSRFNGTSK'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_PRVSRFNGTSK_PRMN'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_PRVSSNDR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_PRVSTNFR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_RATNAPVL'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_RFNGWKFWTSK'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_TNFR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_DDLI_UNIVID'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_ATCDPVDR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_BASENOTE_NID_CT_NCRTD'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_CALLDRTNUNTS'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_CASENOTETYP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_CLASSTYPE'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_CLINICALDATAENTRY_ID'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_CM_BASE'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_CM_NOTETYP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_CRTD'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_CSTMFLDS'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_GRP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_MDCLSRVC'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_MDCLSRVC_NID_CT_NCRTD'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_MEMB'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_MEMBNOTETYP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_MRKDGRVCBY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_MRKDRSLDBY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_NOTEDGIS'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_NOTEDGIS_NID_CT_NCRTD'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_OBJ_STT'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_OWNR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_PITY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_PRVSOWNR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_PRVSOWNRPRMN'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_PRVSRFNGTSK'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_PRVSRFNGTSK_PRMN'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_PRVSSNDR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_PRVSTNFR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_PVDRNOTETYP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_RFNGWKFWTSK'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_RLTDPVDR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_SETK_NID_CT_NCRTD'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_TNFR'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_UM_BASENOTE'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_UM_EXTN'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_UM_NOTETYP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_NOTE_UNIVID'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_STNT_ID_DDLI_ID'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_TSKT_ICON'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'IX_TSKT_RCPTTYP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'PK_T_DDL_ITEM'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'PK_T_NOTE'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'SYS_IL0000116466C00016$$'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'SYS_IL0000116466C00017$$'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'T_DDL_ITEM_IX_DDLI_LBL'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_ATTP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_BMTY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_BPTP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_CBTY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_CCTP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_CDTP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_CNTP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_CPNY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_CTYB'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_ETTP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_EUCY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_FCTP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_IMDY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_LHTP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_LLTP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_LTTP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_MMGY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_MNTY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_NCTY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_PIQT'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_PLNS'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_PRNY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_PTTP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_QTYP'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_RPTY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_TITY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_TSKT'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_UENY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'UK_UMTY'
, schema => 'THH_C4C');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'TABLE'
, name => 'DW_DIM_NOTE'
, schema => 'THH_C4C_DW');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'TABLE'
, name => 'RPT_CONSTANTS'
, schema => 'THH_C4C_DW');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'PK_DW_DIM_NOTE_ID'
, schema => 'THH_C4C_DW');
END;
/
PRINT :mymetadata;
BEGIN
:mymetadata :=
DBMS_METADATA.GET_DDL
( object_type => 'INDEX'
, name => 'PK_RPT_CONSTANTS'
, schema => 'THH_C4C_DW');
END;
/
PRINT :mymetadata;
