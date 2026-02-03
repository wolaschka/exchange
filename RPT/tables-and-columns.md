# Algo Database Schema — Tables and Columns

Generated: 2026-02-03 13:45 | Schema: TUQCEUCBREP01 | Database: PDQCEQ11

**311 tables, 5925 columns**

## Table of Contents

- [ACTRATINGSBASEDMARGINTERMS](#actratingsbasedmarginterms) (21 columns, ~523 rows)
- [ACTRATINGSBASEDMARGINTERMSBULK](#actratingsbasedmargintermsbulk) (21 columns, ~0 rows)
- [ADDITIONALMARGINOVERRIDES](#additionalmarginoverrides) (23 columns, ~14 rows)
- [ADDITIONALMARGINOVERRIDESBULK](#additionalmarginoverridesbulk) (23 columns, ~0 rows)
- [AGREEMENTALIASES](#agreementaliases) (6 columns, ~3681 rows)
- [AGREEMENTALIASESBULK](#agreementaliasesbulk) (6 columns, ~0 rows)
- [AGREEMENTBRANCHES](#agreementbranches) (9 columns, ~0 rows)
- [AGREEMENTBRANCHESBULK](#agreementbranchesbulk) (9 columns, ~0 rows)
- [AGREEMENTCONTACTS](#agreementcontacts) (4 columns, ~85501 rows)
- [AGREEMENTCONTACTSBULK](#agreementcontactsbulk) (4 columns, ~0 rows)
- [AGREEMENTEXPOSUREDIFFERENCE](#agreementexposuredifference) (14 columns, ~13225 rows)
- [AGREEMENTEXPOSUREDIFFERENCEBUL](#agreementexposuredifferencebul) (14 columns, ~0 rows)
- [AGREEMENTGROUPS](#agreementgroups) (30 columns, ~1 rows)
- [AGREEMENTGROUPSBULK](#agreementgroupsbulk) (30 columns, ~0 rows)
- [AGREEMENTGROUPSUSERS](#agreementgroupsusers) (4 columns, ~1 rows)
- [AGREEMENTGROUPSUSERSBULK](#agreementgroupsusersbulk) (4 columns, ~0 rows)
- [AGREEMENTMARGINS](#agreementmargins) (14 columns, ~221 rows)
- [AGREEMENTMARGINSBULK](#agreementmarginsbulk) (14 columns, ~0 rows)
- [AGREEMENTNOTES](#agreementnotes) (7 columns, ~7423 rows)
- [AGREEMENTNOTESBULK](#agreementnotesbulk) (7 columns, ~0 rows)
- [AGREEMENTRATING](#agreementrating) (18 columns, ~12798 rows)
- [AGREEMENTRESPBUSINESSLINES](#agreementrespbusinesslines) (4 columns, ~5 rows)
- [AGREEMENTRESPBUSINESSLINESBULK](#agreementrespbusinesslinesbulk) (4 columns, ~0 rows)
- [AGREEMENTRESPCOUNTERPARTY](#agreementrespcounterparty) (3 columns, ~0 rows)
- [AGREEMENTRESPCOUNTERPARTYBULK](#agreementrespcounterpartybulk) (3 columns, ~0 rows)
- [AGREEMENTRESPCPTYORGTYPES](#agreementrespcptyorgtypes) (3 columns, ~0 rows)
- [AGREEMENTRESPCPTYORGTYPESBULK](#agreementrespcptyorgtypesbulk) (3 columns, ~0 rows)
- [AGREEMENTRESPONSIBILITIES](#agreementresponsibilities) (5 columns, ~67977 rows)
- [AGREEMENTRESPONSIBILITIESBULK](#agreementresponsibilitiesbulk) (5 columns, ~0 rows)
- [AGREEMENTRESPPRINCIPALS](#agreementrespprincipals) (3 columns, ~1 rows)
- [AGREEMENTRESPPRINCIPALSBULK](#agreementrespprincipalsbulk) (3 columns, ~0 rows)
- [AGREEMENTRESPPRINMANLOC](#agreementrespprinmanloc) (3 columns, ~0 rows)
- [AGREEMENTRESPPRINMANLOCBULK](#agreementrespprinmanlocbulk) (3 columns, ~0 rows)
- [AGREEMENTRESPUSERS](#agreementrespusers) (3 columns, ~280 rows)
- [AGREEMENTRESPUSERSBULK](#agreementrespusersbulk) (3 columns, ~0 rows)
- [AGREEMENTS](#agreements) (192 columns, ~26849 rows)
- [AGREEMENTSBULK](#agreementsbulk) (192 columns, ~0 rows)
- [AGREEMENTSCOPES](#agreementscopes) (9 columns, ~1 rows)
- [AGREEMENTSCOPESBULK](#agreementscopesbulk) (9 columns, ~0 rows)
- [AGREEMENTTRADECOUNT](#agreementtradecount) (3 columns, ~5326 rows)
- [AGREEMENTTRADETYPES](#agreementtradetypes) (11 columns, ~1176383 rows)
- [AGREEMENTTRADETYPESBULK](#agreementtradetypesbulk) (11 columns, ~0 rows)
- [APPROVALCHANGES](#approvalchanges) (21 columns, ~1238083 rows)
- [APPROVALCHANGESBULK](#approvalchangesbulk) (21 columns, ~0 rows)
- [APPROVALHISTORY](#approvalhistory) (16 columns, ~249166 rows)
- [APPROVALHISTORYBULK](#approvalhistorybulk) (16 columns, ~0 rows)
- [ASSETPOOLBALANCES](#assetpoolbalances) (10 columns, ~0 rows)
- [ASSETPOOLBALANCESBULK](#assetpoolbalancesbulk) (10 columns, ~0 rows)
- [ASSETPOOLS](#assetpools) (11 columns, ~0 rows)
- [ASSETPOOLSBULK](#assetpoolsbulk) (11 columns, ~0 rows)
- [AUDITCHANGES](#auditchanges) (17 columns, ~1399476 rows)
- [AUDITCHANGESBULK](#auditchangesbulk) (17 columns, ~0 rows)
- [CCP_ALLOCATED_COLLATERAL](#ccp_allocated_collateral) (22 columns, ~239909 rows)
- [CCP_CLAIM_AMOUNTL](#ccp_claim_amountl) (20 columns, ~3891 rows)
- [CCP_COLLATERAL_OVERVIEW](#ccp_collateral_overview) (23 columns, ~251714 rows)
- [CCP_ELIGIBLE_SECURITIES](#ccp_eligible_securities) (23 columns, ~24026085 rows)
- [CCP_ENX_DC21](#ccp_enx_dc21) (41 columns, ~0 rows)
- [CCP_ENX_DC22](#ccp_enx_dc22) (15 columns, ~0 rows)
- [CCP_ENX_DC31](#ccp_enx_dc31) (44 columns, ~1830 rows)
- [CCP_ENX_DF02](#ccp_enx_df02) (20 columns, ~0 rows)
- [CCP_ENX_DF22](#ccp_enx_df22) (24 columns, ~2977 rows)
- [CCP_ENX_DM02](#ccp_enx_dm02) (24 columns, ~855 rows)
- [CCP_ENX_DM06](#ccp_enx_dm06) (17 columns, ~0 rows)
- [CCP_ESG_KONTO](#ccp_esg_konto) (10 columns, ~141822 rows)
- [CCP_EUREX_DEF](#ccp_eurex_def) (3 columns, ~23237 rows)
- [CCP_EXPORT](#ccp_export) (11 columns, ~34449 rows)
- [CCP_EZB_TENDER_REPORT](#ccp_ezb_tender_report) (15 columns, ~5957 rows)
- [CCP_HISTORICAL_INSTRUCTION](#ccp_historical_instruction) (17 columns, ~86465 rows)
- [CCP_HKEX_GFRECALCRESULT](#ccp_hkex_gfrecalcresult) (10 columns, ~7 rows)
- [CCP_HKEX_GUARANTEEFUND](#ccp_hkex_guaranteefund) (15 columns, ~321 rows)
- [CCP_HKEX_IMCALLAMT](#ccp_hkex_imcallamt) (8 columns, ~321 rows)
- [CCP_HKEX_MONEYSETTLE](#ccp_hkex_moneysettle) (16 columns, ~463 rows)
- [CCP_HKEX_MONTHLYFEES](#ccp_hkex_monthlyfees) (13 columns, ~10 rows)
- [CCP_HKEX_VMBALANCE](#ccp_hkex_vmbalance) (7 columns, ~289 rows)
- [CCP_ISIN_LOT](#ccp_isin_lot) (7 columns, ~110 rows)
- [CCP_LMECCODAR](#ccp_lmeccodar) (16 columns, ~266 rows)
- [CCP_LMECCODSR](#ccp_lmeccodsr) (16 columns, ~1545 rows)
- [CCP_LMECFINAR](#ccp_lmecfinar) (16 columns, ~12084 rows)
- [CCP_LMECMSUMR](#ccp_lmecmsumr) (14 columns, ~53460 rows)
- [CCP_LMECNCCBR](#ccp_lmecnccbr) (16 columns, ~4985 rows)
- [CCP_LMEUCBMCF](#ccp_lmeucbmcf) (15 columns, ~13757 rows)
- [CCP_LMEUCBMDF](#ccp_lmeucbmdf) (12 columns, ~71 rows)
- [CCP_MANAGEMENTREPHISTORY](#ccp_managementrephistory) (11 columns, ~46583 rows)
- [CCP_MARGINRENDER](#ccp_marginrender) (37 columns, ~25055091 rows)
- [CCP_MBCAA](#ccp_mbcaa) (12 columns, ~60503 rows)
- [CCP_MBCC](#ccp_mbcc) (12 columns, ~37646 rows)
- [CCP_MBCOB](#ccp_mbcob) (20 columns, ~12488 rows)
- [CCP_MBSR](#ccp_mbsr) (11 columns, ~60908 rows)
- [CCP_MFMS2](#ccp_mfms2) (8 columns, ~56 rows)
- [CCP_MLCOLLHOLD](#ccp_mlcollhold) (31 columns, ~10684 rows)
- [CCP_MLSECUFEE](#ccp_mlsecufee) (12 columns, ~32434 rows)
- [CCP_MTM_131](#ccp_mtm_131) (13 columns, ~2542 rows)
- [CCP_REP00016](#ccp_rep00016) (33 columns, ~1159925 rows)
- [CCP_REP00016B](#ccp_rep00016b) (16 columns, ~318118 rows)
- [CCP_REP00019](#ccp_rep00019) (25 columns, ~404494 rows)
- [CCP_REP00022A](#ccp_rep00022a) (19 columns, ~2639 rows)
- [CCP_REP00029](#ccp_rep00029) (10 columns, ~110949 rows)
- [CCP_REP00030](#ccp_rep00030) (16 columns, ~19831 rows)
- [CCP_REP00031](#ccp_rep00031) (14 columns, ~26896 rows)
- [CCP_REP00033B](#ccp_rep00033b) (17 columns, ~23230 rows)
- [CCP_REP00036](#ccp_rep00036) (16 columns, ~7394 rows)
- [CCP_REP00091](#ccp_rep00091) (14 columns, ~266415 rows)
- [CCP_REP000ML](#ccp_rep000ml) (63 columns, ~805492 rows)
- [CCP_REP000UBS](#ccp_rep000ubs) (10 columns, ~6295 rows)
- [CCP_REP00102A](#ccp_rep00102a) (11 columns, ~4248 rows)
- [CCP_REP00102B](#ccp_rep00102b) (12 columns, ~219400 rows)
- [CCP_REP00102C](#ccp_rep00102c) (11 columns, ~103080 rows)
- [CCP_REP00103A](#ccp_rep00103a) (14 columns, ~27105 rows)
- [CCP_REP00106E](#ccp_rep00106e) (15 columns, ~217 rows)
- [CCP_REP00110A](#ccp_rep00110a) (17 columns, ~50665 rows)
- [CCP_REP00110ISIN](#ccp_rep00110isin) (19 columns, ~22936 rows)
- [CCP_REP00305](#ccp_rep00305) (8 columns, ~9119 rows)
- [CCP_REP0BNP1](#ccp_rep0bnp1) (17 columns, ~418984 rows)
- [CCP_REP0BNPAS](#ccp_rep0bnpas) (20 columns, ~1503 rows)
- [CCP_REP0BNPE](#ccp_rep0bnpe) (24 columns, ~230202 rows)
- [CCP_REP0BNPH](#ccp_rep0bnph) (36 columns, ~16518 rows)
- [CCP_REP0WFML](#ccp_rep0wfml) (13 columns, ~17228 rows)
- [CCP_REPBNPBILL](#ccp_repbnpbill) (13 columns, ~6443 rows)
- [CCP_REPCD042](#ccp_repcd042) (14 columns, ~36570 rows)
- [CCP_REPDF15F](#ccp_repdf15f) (10 columns, ~16845 rows)
- [CCP_REPDF28A](#ccp_repdf28a) (8 columns, ~555 rows)
- [CCP_REPUBSFEE](#ccp_repubsfee) (9 columns, ~1 rows)
- [CCP_REPUBS_BC](#ccp_repubs_bc) (22 columns, ~31990 rows)
- [CCP_REP_KELER](#ccp_rep_keler) (16 columns, ~1650 rows)
- [CCP_RPTCB350](#ccp_rptcb350) (13 columns, ~3 rows)
- [CCP_RPTCC050](#ccp_rptcc050) (20 columns, ~335308 rows)
- [CCP_RPTCC203](#ccp_rptcc203) (20 columns, ~24853048 rows)
- [CCP_RPTCD020](#ccp_rptcd020) (23 columns, ~16828 rows)
- [CCP_RPTCD230](#ccp_rptcd230) (20 columns, ~0 rows)
- [CCP_RPTCD710](#ccp_rptcd710) (22 columns, ~23872 rows)
- [CCP_RPTEAS01PUBLI](#ccp_rpteas01publi) (10 columns, ~13372426 rows)
- [CCP_UBS_ETD](#ccp_ubs_etd) (13 columns, ~20003 rows)
- [CMOABSASSETCLASSES](#cmoabsassetclasses) (2 columns, ~0 rows)
- [CMOABSASSETCLASSESBULK](#cmoabsassetclassesbulk) (2 columns, ~0 rows)
- [COLLATBUCKETRATINGBANDS](#collatbucketratingbands) (10 columns, ~40034 rows)
- [COLLATBUCKETRATINGBANDSBULK](#collatbucketratingbandsbulk) (10 columns, ~0 rows)
- [COLLATERALBUCKETCURRENCIES](#collateralbucketcurrencies) (3 columns, ~2776 rows)
- [COLLATERALBUCKETCURRENCIESBULK](#collateralbucketcurrenciesbulk) (3 columns, ~0 rows)
- [COLLATERALBUCKETINSTRTYPES](#collateralbucketinstrtypes) (3 columns, ~47080 rows)
- [COLLATERALBUCKETINSTRTYPESBULK](#collateralbucketinstrtypesbulk) (3 columns, ~0 rows)
- [COLLATERALBUCKETISSUERS](#collateralbucketissuers) (3 columns, ~51342 rows)
- [COLLATERALBUCKETISSUERSBULK](#collateralbucketissuersbulk) (3 columns, ~0 rows)
- [COLLATERALBUCKETRAINSTR](#collateralbucketrainstr) (3 columns, ~144538 rows)
- [COLLATERALBUCKETRAINSTRBULK](#collateralbucketrainstrbulk) (3 columns, ~0 rows)
- [COLLATERALBUCKETRAISSUERS](#collateralbucketraissuers) (3 columns, ~54 rows)
- [COLLATERALBUCKETRAISSUERSBULK](#collateralbucketraissuersbulk) (3 columns, ~0 rows)
- [COLLATERALBUCKETS](#collateralbuckets) (21 columns, ~42126 rows)
- [COLLATERALBUCKETSBULK](#collateralbucketsbulk) (21 columns, ~0 rows)
- [COLLATERALGROUPBUCKETS](#collateralgroupbuckets) (3 columns, ~0 rows)
- [COLLATERALGROUPBUCKETSBULK](#collateralgroupbucketsbulk) (3 columns, ~0 rows)
- [COLLATERALGROUPS](#collateralgroups) (8 columns, ~0 rows)
- [COLLATERALGROUPSBULK](#collateralgroupsbulk) (8 columns, ~0 rows)
- [COLLATERALPOSITIONS](#collateralpositions) (53 columns, ~2979352 rows)
- [COLLATERALPOSITIONSBULK](#collateralpositionsbulk) (53 columns, ~0 rows)
- [CONCENTRATIONBREACHES](#concentrationbreaches) (6 columns, ~424 rows)
- [CONCENTRATIONBREACHESBULK](#concentrationbreachesbulk) (6 columns, ~0 rows)
- [CONCENTRATIONRULES](#concentrationrules) (6 columns, ~104 rows)
- [CONCENTRATIONRULESBULK](#concentrationrulesbulk) (6 columns, ~0 rows)
- [CONTACTS](#contacts) (14 columns, ~64893 rows)
- [CONTACTSBULK](#contactsbulk) (14 columns, ~0 rows)
- [COUNTERPARTYMARGINDETAILS](#counterpartymargindetails) (18 columns, ~706607 rows)
- [COUNTERPARTYMARGINDETAILSBULK](#counterpartymargindetailsbulk) (18 columns, ~0 rows)
- [CREDITRATINGS](#creditratings) (5 columns, ~86 rows)
- [CREDITRATINGSBULK](#creditratingsbulk) (5 columns, ~0 rows)
- [CREDITSCENARIOS](#creditscenarios) (39 columns, ~100989 rows)
- [CREDITSCENARIOSBULK](#creditscenariosbulk) (39 columns, ~0 rows)
- [CURRENCIES](#currencies) (9 columns, ~210 rows)
- [CURRENCIESBULK](#currenciesbulk) (9 columns, ~0 rows)
- [DAILYACCRUALS](#dailyaccruals) (29 columns, ~553968 rows)
- [DAILYACCRUALSBULK](#dailyaccrualsbulk) (29 columns, ~0 rows)
- [DATATYPES](#datatypes) (2 columns, ~113 rows)
- [DATATYPESBULK](#datatypesbulk) (2 columns, ~0 rows)
- [DATETIMINGSIMPLE](#datetimingsimple) (2 columns, ~251 rows)
- [DATETIMINGSIMPLEBULK](#datetimingsimplebulk) (2 columns, ~0 rows)
- [DEBTINSTRUMENTPRICES](#debtinstrumentprices) (26 columns, ~30937227 rows)
- [DEBTINSTRUMENTPRICESBULK](#debtinstrumentpricesbulk) (26 columns, ~0 rows)
- [DISPUTEAGINGS](#disputeagings) (59 columns, ~14191253 rows)
- [DISPUTEAGINGSBULK](#disputeagingsbulk) (59 columns, ~0 rows)
- [ECAGREEMENTRESULTS](#ecagreementresults) (9 columns, ~247818 rows)
- [ECAGREEMENTRESULTSBULK](#ecagreementresultsbulk) (9 columns, ~0 rows)
- [ECPOSITIONS](#ecpositions) (19 columns, ~306406 rows)
- [ECPOSITIONSBULK](#ecpositionsbulk) (19 columns, ~0 rows)
- [ECRECORDS](#ecrecords) (11 columns, ~3461 rows)
- [ECRECORDSBULK](#ecrecordsbulk) (11 columns, ~0 rows)
- [ELIGIBILITYBREACHES](#eligibilitybreaches) (5 columns, ~855 rows)
- [ELIGIBILITYBREACHESBULK](#eligibilitybreachesbulk) (5 columns, ~0 rows)
- [ELIGIBILITYRULES](#eligibilityrules) (7 columns, ~55 rows)
- [ELIGIBILITYRULESBULK](#eligibilityrulesbulk) (7 columns, ~0 rows)
- [ELIGIBLECOLLATERALS](#eligiblecollaterals) (20 columns, ~551367 rows)
- [ELIGIBLECOLLATERALSBULK](#eligiblecollateralsbulk) (20 columns, ~0 rows)
- [ENTITIES](#entities) (46 columns, ~20421 rows)
- [ENTITIESBULK](#entitiesbulk) (46 columns, ~0 rows)
- [ENTITYALIASES](#entityaliases) (6 columns, ~2209 rows)
- [ENTITYALIASESBULK](#entityaliasesbulk) (6 columns, ~0 rows)
- [ENTITYCREDITRATINGS](#entitycreditratings) (9 columns, ~4305826 rows)
- [ENTITYCREDITRATINGSBULK](#entitycreditratingsbulk) (9 columns, ~0 rows)
- [ENTITYGROUPALIASES](#entitygroupaliases) (12 columns, ~0 rows)
- [ENTITYGROUPALIASESBULK](#entitygroupaliasesbulk) (12 columns, ~0 rows)
- [ENTITYGROUPS](#entitygroups) (10 columns, ~0 rows)
- [ENTITYGROUPSBULK](#entitygroupsbulk) (10 columns, ~0 rows)
- [EQUITYINSTRUMENTPRICES](#equityinstrumentprices) (19 columns, ~378351 rows)
- [EQUITYINSTRUMENTPRICESBULK](#equityinstrumentpricesbulk) (19 columns, ~0 rows)
- [EXPOSUREOVERRIDES](#exposureoverrides) (21 columns, ~14 rows)
- [EXPOSUREOVERRIDESBULK](#exposureoverridesbulk) (21 columns, ~0 rows)
- [EXTERNALAPPROVALS](#externalapprovals) (14 columns, ~18007 rows)
- [EXTERNALAPPROVALSBULK](#externalapprovalsbulk) (14 columns, ~0 rows)
- [EXTRACTRECORDS](#extractrecords) (9 columns, ~693931 rows)
- [FXRATES](#fxrates) (11 columns, ~1013041312 rows)
- [FXRATESBULK](#fxratesbulk) (11 columns, ~0 rows)
- [GLOBALCONCENTRATIONLIMITS](#globalconcentrationlimits) (23 columns, ~0 rows)
- [GLOBALCONCENTRATIONLIMITSBULK](#globalconcentrationlimitsbulk) (23 columns, ~0 rows)
- [HOLIDAYCALENDERS](#holidaycalenders) (7 columns, ~54928 rows)
- [HOLIDAYCALENDERSBULK](#holidaycalendersbulk) (7 columns, ~0 rows)
- [INSTRUCTIONINSTRUMENTS](#instructioninstruments) (4 columns, ~0 rows)
- [INSTRUCTIONINSTRUMENTSBULK](#instructioninstrumentsbulk) (4 columns, ~0 rows)
- [INSTRUCTIONINSTRUMENTTYPES](#instructioninstrumenttypes) (7 columns, ~494 rows)
- [INSTRUCTIONINSTRUMENTTYPESBULK](#instructioninstrumenttypesbulk) (7 columns, ~0 rows)
- [INSTRUMENTCREDITRATINGS](#instrumentcreditratings) (6 columns, ~40442 rows)
- [INSTRUMENTCREDITRATINGSBULK](#instrumentcreditratingsbulk) (6 columns, ~0 rows)
- [INSTRUMENTS](#instruments) (118 columns, ~11761 rows)
- [INSTRUMENTSBULK](#instrumentsbulk) (118 columns, ~0 rows)
- [INSTRUMENTTYPES](#instrumenttypes) (9 columns, ~372 rows)
- [INSTRUMENTTYPESBULK](#instrumenttypesbulk) (9 columns, ~0 rows)
- [INTERESTACCRUALS](#interestaccruals) (34 columns, ~8887 rows)
- [INTERESTACCRUALSBULK](#interestaccrualsbulk) (34 columns, ~0 rows)
- [INTERESTPAYMENTPERIODS](#interestpaymentperiods) (22 columns, ~9363349 rows)
- [INTERESTPAYMENTPERIODSBULK](#interestpaymentperiodsbulk) (22 columns, ~0 rows)
- [INTERESTPAYMENTS](#interestpayments) (43 columns, ~794005 rows)
- [INTERESTPAYMENTSBULK](#interestpaymentsbulk) (43 columns, ~0 rows)
- [INTERESTPAYMENTTIMINGS](#interestpaymenttimings) (3 columns, ~25875 rows)
- [INTERESTPAYMENTTIMINGSBULK](#interestpaymenttimingsbulk) (3 columns, ~0 rows)
- [INTERESTTERMS](#interestterms) (13 columns, ~8177 rows)
- [INTERESTTERMSBULK](#interesttermsbulk) (13 columns, ~0 rows)
- [JOBEXECUTION](#jobexecution) (4 columns, ~237018 rows)
- [JOBEXECUTIONBULK](#jobexecutionbulk) (4 columns, ~0 rows)
- [LOCKUPMARGINOVERRIDES](#lockupmarginoverrides) (23 columns, ~240 rows)
- [LOCKUPMARGINOVERRIDESBULK](#lockupmarginoverridesbulk) (23 columns, ~0 rows)
- [MARGINCALLS](#margincalls) (199 columns, ~19370167 rows)
- [MARGINCALLSBULK](#margincallsbulk) (199 columns, ~0 rows)
- [MARGINCALLTRANSHISTORY](#margincalltranshistory) (7 columns, ~3102758 rows)
- [MARGINCALLTRANSHISTORYBULK](#margincalltranshistorybulk) (7 columns, ~0 rows)
- [MARGINHOLIDAYCALENDERS](#marginholidaycalenders) (4 columns, ~32538 rows)
- [MARGINHOLIDAYCALENDERSBULK](#marginholidaycalendersbulk) (4 columns, ~0 rows)
- [MARGINTERMS](#marginterms) (27 columns, ~51750 rows)
- [MARGINTERMSBULK](#margintermsbulk) (27 columns, ~0 rows)
- [MARKETINDEXES](#marketindexes) (8 columns, ~226 rows)
- [MARKETINDEXESBULK](#marketindexesbulk) (8 columns, ~0 rows)
- [MARKETINDEXRATES](#marketindexrates) (8 columns, ~182767324 rows)
- [MARKETINDEXRATESBULK](#marketindexratesbulk) (8 columns, ~0 rows)
- [MOVEMENTHISTORY](#movementhistory) (14 columns, ~2611073 rows)
- [MOVEMENTHISTORYBULK](#movementhistorybulk) (14 columns, ~0 rows)
- [MOVEMENTS](#movements) (98 columns, ~794381 rows)
- [MOVEMENTSBULK](#movementsbulk) (98 columns, ~0 rows)
- [NETAGREEMENTEXPOSURES](#netagreementexposures) (8 columns, ~0 rows)
- [NETAGREEMENTEXPOSURESBULK](#netagreementexposuresbulk) (8 columns, ~0 rows)
- [OTCCOMPARISONTRADES](#otccomparisontrades) (57 columns, ~0 rows)
- [OTCCOMPARISONTRADESBULK](#otccomparisontradesbulk) (57 columns, ~0 rows)
- [OTCRECONTRADES](#otcrecontrades) (71 columns, ~344250001 rows)
- [OTCRECONTRADESCDF](#otcrecontradescdf) (26 columns, ~589533588 rows)
- [OTCTRADES](#otctrades) (74 columns, ~473036254 rows)
- [OTCTRADESBULK](#otctradesbulk) (74 columns, ~0 rows)
- [PLACEOFSETTLEMENTS](#placeofsettlements) (9 columns, ~0 rows)
- [PLACEOFSETTLEMENTSBULK](#placeofsettlementsbulk) (9 columns, ~0 rows)
- [PRICESOURCES](#pricesources) (4 columns, ~8 rows)
- [PRICESOURCESBULK](#pricesourcesbulk) (4 columns, ~0 rows)
- [PROFITANDLOSSES](#profitandlosses) (31 columns, ~0 rows)
- [PROFITANDLOSSESBULK](#profitandlossesbulk) (31 columns, ~0 rows)
- [PSETHISTORY](#psethistory) (5 columns, ~162082 rows)
- [PSETHISTORYBULK](#psethistorybulk) (5 columns, ~0 rows)
- [RATINGBASEDELIGRULES](#ratingbasedeligrules) (23 columns, ~1 rows)
- [RATINGBASEDELIGRULESBULK](#ratingbasedeligrulesbulk) (23 columns, ~0 rows)
- [RATINGSBASEDMARGINTERMS](#ratingsbasedmarginterms) (18 columns, ~523 rows)
- [RATINGSBASEDMARGINTERMSBULK](#ratingsbasedmargintermsbulk) (18 columns, ~0 rows)
- [REPOTRADES](#repotrades) (64 columns, ~0 rows)
- [REPOTRADESBULK](#repotradesbulk) (64 columns, ~0 rows)
- [SCHEMAINFO](#schemainfo) (1 columns, ~1 rows)
- [SCHEMAINFOBULK](#schemainfobulk) (1 columns, ~0 rows)
- [SETTLEMENTINSTRUCTIONS](#settlementinstructions) (31 columns, ~8842 rows)
- [SETTLEMENTINSTRUCTIONSBULK](#settlementinstructionsbulk) (31 columns, ~0 rows)
- [SPECIFICTRADECOVERAGE](#specifictradecoverage) (11 columns, ~2897 rows)
- [SPECIFICTRADECOVERAGEBULK](#specifictradecoveragebulk) (11 columns, ~0 rows)
- [STATUS](#status) (2 columns, ~3 rows)
- [STATUSBULK](#statusbulk) (2 columns, ~0 rows)
- [STOCKINDEXES](#stockindexes) (2 columns, ~43 rows)
- [STOCKINDEXESBULK](#stockindexesbulk) (2 columns, ~0 rows)
- [SUBSTITUTIONS](#substitutions) (24 columns, ~3026 rows)
- [SUBSTITUTIONSBULK](#substitutionsbulk) (24 columns, ~0 rows)
- [TASKSTATUS](#taskstatus) (13 columns, ~223192 rows)
- [TASKSTATUSBULK](#taskstatusbulk) (13 columns, ~0 rows)
- [TRADEASSIGNMENTRULES](#tradeassignmentrules) (14 columns, ~37042 rows)
- [TRADEASSIGNMENTRULESBULK](#tradeassignmentrulesbulk) (14 columns, ~0 rows)
- [TRIPARTYCOLLPOSITIONS](#tripartycollpositions) (26 columns, ~0 rows)
- [TRIPARTYCOLLPOSITIONSBULK](#tripartycollpositionsbulk) (26 columns, ~0 rows)
- [TRIPARTYCONCBREACHES](#tripartyconcbreaches) (4 columns, ~0 rows)
- [TRIPARTYCONCBREACHESBULK](#tripartyconcbreachesbulk) (4 columns, ~0 rows)
- [TRIPARTYECAGREEMENTRESULTS](#tripartyecagreementresults) (9 columns, ~0 rows)
- [TRIPARTYECAGREEMENTRESULTSBULK](#tripartyecagreementresultsbulk) (9 columns, ~0 rows)
- [TRIPARTYECPOSITIONS](#tripartyecpositions) (27 columns, ~0 rows)
- [TRIPARTYECPOSITIONSBULK](#tripartyecpositionsbulk) (27 columns, ~0 rows)
- [TRIPARTYECRECORDS](#tripartyecrecords) (11 columns, ~0 rows)
- [TRIPARTYECRECORDSBULK](#tripartyecrecordsbulk) (11 columns, ~0 rows)
- [TRIPARTYELIGBREACHES](#tripartyeligbreaches) (5 columns, ~0 rows)
- [TRIPARTYELIGBREACHESBULK](#tripartyeligbreachesbulk) (5 columns, ~0 rows)
- [UNASSIGNEDOTCTRADES](#unassignedotctrades) (25 columns, ~9611 rows)
- [UNASSIGNEDOTCTRADESBULK](#unassignedotctradesbulk) (25 columns, ~0 rows)
- [UNASSIGNEDREPOTRADES](#unassignedrepotrades) (20 columns, ~0 rows)
- [UNASSIGNEDREPOTRADESBULK](#unassignedrepotradesbulk) (20 columns, ~0 rows)
- [USERS](#users) (15 columns, ~207 rows)
- [USERSBULK](#usersbulk) (15 columns, ~0 rows)
- [WRONGWAYRISKRULES](#wrongwayriskrules) (6 columns, ~0 rows)
- [WRONGWAYRISKRULESBULK](#wrongwayriskrulesbulk) (6 columns, ~0 rows)

---

## ACTRATINGSBASEDMARGINTERMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGBASEDMARGINTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINTERMID | NUMBER(18,0) | NULL |  |  |
| 3 | ORDINAL | NUMBER(21,6) | NULL |  |  |
| 4 | DELIVERMINIMUMTRANSFERAMOUNT | NUMBER(21,6) | NULL |  |  |
| 5 | DELIVERROUNDINGAMOUNT | NUMBER(21,6) | NULL |  |  |
| 6 | THRESHOLD | NUMBER(21,6) | NULL |  |  |
| 7 | ADDITIONALMARGIN | NUMBER(21,6) | NULL |  |  |
| 8 | LOCKUPMARGIN | NUMBER(21,6) | NULL |  |  |
| 9 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 10 | AGENCYID | NUMBER(18,0) | NULL |  |  |
| 11 | RETURNMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 12 | MINIMUMTRANSFERAMOUNTMETHOD | NVARCHAR2(510) | NULL |  |  |
| 13 | RETURNROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 14 | ROUNDINGAMOUNTMETHOD | NVARCHAR2(510) | NULL |  |  |
| 15 | ADDITIONALMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 16 | LOCKUPMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 17 | THRESHOLDMETHOD | NVARCHAR2(510) | NULL |  |  |
| 18 | CREDITRATINGID | NUMBER(18,0) | NULL |  |  |
| 19 | CURRENCYID | NUMBER(3,0) | NULL |  |  |
| 20 | CURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 21 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |

## ACTRATINGSBASEDMARGINTERMSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGBASEDMARGINTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINTERMID | NUMBER(18,0) | NULL |  |  |
| 3 | ORDINAL | NUMBER(21,6) | NULL |  |  |
| 4 | DELIVERMINIMUMTRANSFERAMOUNT | NUMBER(21,6) | NULL |  |  |
| 5 | DELIVERROUNDINGAMOUNT | NUMBER(21,6) | NULL |  |  |
| 6 | THRESHOLD | NUMBER(21,6) | NULL |  |  |
| 7 | ADDITIONALMARGIN | NUMBER(21,6) | NULL |  |  |
| 8 | LOCKUPMARGIN | NUMBER(21,6) | NULL |  |  |
| 9 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 10 | AGENCYID | NUMBER(18,0) | NULL |  |  |
| 11 | RETURNMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 12 | MINIMUMTRANSFERAMOUNTMETHOD | NVARCHAR2(510) | NULL |  |  |
| 13 | RETURNROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 14 | ROUNDINGAMOUNTMETHOD | NVARCHAR2(510) | NULL |  |  |
| 15 | ADDITIONALMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 16 | LOCKUPMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 17 | THRESHOLDMETHOD | NVARCHAR2(510) | NULL |  |  |
| 18 | CREDITRATINGID | NUMBER(18,0) | NULL |  |  |
| 19 | CURRENCYID | NUMBER(3,0) | NULL |  |  |
| 20 | CURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 21 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |

## ADDITIONALMARGINOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEREFERENCE | NVARCHAR2(2000) | NOT NULL |  |  |
| 2 | TRADEIMPORTID | NUMBER(18,0) | NULL |  |  |
| 3 | TRADEIMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 4 | TRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 5 | ORIGINALAMOUNT | NUMBER(19,4) | NULL |  |  |
| 6 | UPDATEDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 7 | ORIGINALMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 8 | UPDATEDMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 9 | ORIGINALCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | ORIGINALCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 11 | UPDATEDCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | UPDATEDCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 13 | ORIGINALDUETO | NVARCHAR2(2000) | NULL |  |  |
| 14 | UPDATEDDUETO | NVARCHAR2(2000) | NULL |  |  |
| 15 | EXPIRATIONDATE | DATE | NULL |  |  |
| 16 | IMPORTID | NUMBER(18,0) | NULL |  |  |
| 17 | IMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 18 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 19 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 20 | UPDATEDBYNAME | NVARCHAR2(100) | NULL |  |  |
| 21 | UPDATEDAMOUNTAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 22 | UPDATEDAMOUNTSYSTEM | NUMBER(19,4) | NULL |  |  |
| 23 | OVERRIDECOMMENT | NVARCHAR2(1000) | NULL |  |  |

## ADDITIONALMARGINOVERRIDESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEREFERENCE | NVARCHAR2(2000) | NOT NULL |  |  |
| 2 | TRADEIMPORTID | NUMBER(18,0) | NULL |  |  |
| 3 | TRADEIMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 4 | TRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 5 | ORIGINALAMOUNT | NUMBER(19,4) | NULL |  |  |
| 6 | UPDATEDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 7 | ORIGINALMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 8 | UPDATEDMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 9 | ORIGINALCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | ORIGINALCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 11 | UPDATEDCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | UPDATEDCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 13 | ORIGINALDUETO | NVARCHAR2(2000) | NULL |  |  |
| 14 | UPDATEDDUETO | NVARCHAR2(2000) | NULL |  |  |
| 15 | EXPIRATIONDATE | DATE | NULL |  |  |
| 16 | IMPORTID | NUMBER(18,0) | NULL |  |  |
| 17 | IMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 18 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 19 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 20 | UPDATEDBYNAME | NVARCHAR2(100) | NULL |  |  |
| 21 | UPDATEDAMOUNTAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 22 | UPDATEDAMOUNTSYSTEM | NUMBER(19,4) | NULL |  |  |
| 23 | OVERRIDECOMMENT | NVARCHAR2(1000) | NULL |  |  |

## AGREEMENTALIASES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTALIASID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTALIASNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | AGREEMENTALIASGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | ALIASGROUPNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 5 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | AGREEMENTNAME | NVARCHAR2(2000) | NOT NULL |  |  |

## AGREEMENTALIASESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTALIASID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTALIASNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | AGREEMENTALIASGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | ALIASGROUPNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 5 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | AGREEMENTNAME | NVARCHAR2(2000) | NOT NULL |  |  |

## AGREEMENTBRANCHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | BRANCHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | BRANCHNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 6 | ENTITYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | ISPRINCIPALBRANCH | NUMBER(1,0) | NULL |  |  |
| 8 | ISCOUNTERPARTYBRANCH | NUMBER(1,0) | NULL |  |  |
| 9 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |

## AGREEMENTBRANCHESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | BRANCHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | BRANCHNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 6 | ENTITYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | ISPRINCIPALBRANCH | NUMBER(1,0) | NULL |  |  |
| 8 | ISCOUNTERPARTYBRANCH | NUMBER(1,0) | NULL |  |  |
| 9 | LOADTIMESTAMP | DATE | NOT NULL |  |  |

## AGREEMENTCONTACTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | CONTACTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | CONTACTNAME | NVARCHAR2(2000) | NULL |  |  |

## AGREEMENTCONTACTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | CONTACTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | CONTACTNAME | NVARCHAR2(2000) | NULL |  |  |

## AGREEMENTEXPOSUREDIFFERENCE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTEXPOSUREDIFFERENCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | EXPOSUREDIFFERENCE | NUMBER(19,4) | NULL |  |  |
| 5 | CURRENTEXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 6 | CURRENTEXPOSUREDATE | DATE | NULL |  |  |
| 7 | CURRENTTRADESCOUNT | NUMBER(9,0) | NULL |  |  |
| 8 | EXPOSURECOB1AMOUNT | NUMBER(19,4) | NULL |  |  |
| 9 | EXPOSURECOB1DATE | DATE | NULL |  |  |
| 10 | EXPOSURECOB1TRADESCOUNT | NUMBER(9,0) | NULL |  |  |
| 11 | EXPOSURECOB2AMOUNT | NUMBER(19,4) | NULL |  |  |
| 12 | EXPOSURECOB2DATE | DATE | NULL |  |  |
| 13 | EXPOSURECOB2TRADESCOUNT | NUMBER(9,0) | NULL |  |  |
| 14 | TRADECOUNTDIFFERENCE | NUMBER(9,0) | NULL |  |  |

## AGREEMENTEXPOSUREDIFFERENCEBUL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTEXPOSUREDIFFERENCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | EXPOSUREDIFFERENCE | NUMBER(19,4) | NULL |  |  |
| 5 | CURRENTEXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 6 | CURRENTEXPOSUREDATE | DATE | NULL |  |  |
| 7 | CURRENTTRADESCOUNT | NUMBER(9,0) | NULL |  |  |
| 8 | EXPOSURECOB1AMOUNT | NUMBER(19,4) | NULL |  |  |
| 9 | EXPOSURECOB1DATE | DATE | NULL |  |  |
| 10 | EXPOSURECOB1TRADESCOUNT | NUMBER(9,0) | NULL |  |  |
| 11 | EXPOSURECOB2AMOUNT | NUMBER(19,4) | NULL |  |  |
| 12 | EXPOSURECOB2DATE | DATE | NULL |  |  |
| 13 | EXPOSURECOB2TRADESCOUNT | NUMBER(9,0) | NULL |  |  |
| 14 | TRADECOUNTDIFFERENCE | NUMBER(9,0) | NULL |  |  |

## AGREEMENTGROUPS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTGROUPNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 4 | MAINCONTACTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | MARGINCONTACTEMAIL | NVARCHAR2(510) | NULL |  |  |
| 6 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 7 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 9 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 10 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 11 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 12 | INTERESTCONTACTNAME | NVARCHAR2(510) | NULL |  |  |
| 13 | INTERESTCONTACTEMAIL | VARCHAR2(1020) | NULL |  |  |
| 14 | SENDEREMAIL | NVARCHAR2(510) | NULL |  |  |
| 15 | ISDELETED | NUMBER(1,0) | NULL |  |  |
| 16 | AGREEMENTGROUPTYPE | NVARCHAR2(510) | NULL |  |  |
| 17 | ISSENDPROFITANDLOSS | NUMBER(1,0) | NULL |  |  |
| 18 | SOAGREEMENTGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 19 | SOAGREEMENTTYPE | NVARCHAR2(510) | NULL |  |  |
| 20 | SOPRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 21 | SOCOUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 22 | COLLATERALCONTACTEMAIL | NVARCHAR2(510) | NULL |  |  |
| 23 | COLLATERALCONTACTNAME | NVARCHAR2(510) | NULL |  |  |
| 24 | ALIASGROUPID | NUMBER(18,0) | NULL |  |  |
| 25 | ALIASGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 26 | NETCASH | NUMBER(1,0) | NULL |  |  |
| 27 | NETDEBT | NUMBER(1,0) | NULL |  |  |
| 28 | NETEQUITIES | NUMBER(1,0) | NULL |  |  |
| 29 | NETVARIATIONWITHLOCKUP | NUMBER(1,0) | NULL |  |  |
| 30 | LASTEDITTIMESTAMP | DATE | NULL |  |  |

## AGREEMENTGROUPSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTGROUPNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 4 | MAINCONTACTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | MARGINCONTACTEMAIL | NVARCHAR2(510) | NULL |  |  |
| 6 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 7 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 9 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 10 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 11 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 12 | INTERESTCONTACTNAME | NVARCHAR2(510) | NULL |  |  |
| 13 | INTERESTCONTACTEMAIL | VARCHAR2(1020) | NULL |  |  |
| 14 | SENDEREMAIL | NVARCHAR2(510) | NULL |  |  |
| 15 | ISDELETED | NUMBER(1,0) | NULL |  |  |
| 16 | AGREEMENTGROUPTYPE | NVARCHAR2(510) | NULL |  |  |
| 17 | ISSENDPROFITANDLOSS | NUMBER(1,0) | NULL |  |  |
| 18 | SOAGREEMENTGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 19 | SOAGREEMENTTYPE | NVARCHAR2(510) | NULL |  |  |
| 20 | SOPRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 21 | SOCOUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 22 | COLLATERALCONTACTEMAIL | NVARCHAR2(510) | NULL |  |  |
| 23 | COLLATERALCONTACTNAME | NVARCHAR2(510) | NULL |  |  |
| 24 | ALIASGROUPID | NUMBER(18,0) | NULL |  |  |
| 25 | ALIASGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 26 | NETCASH | NUMBER(1,0) | NULL |  |  |
| 27 | NETDEBT | NUMBER(1,0) | NULL |  |  |
| 28 | NETEQUITIES | NUMBER(1,0) | NULL |  |  |
| 29 | NETVARIATIONWITHLOCKUP | NUMBER(1,0) | NULL |  |  |
| 30 | LASTEDITTIMESTAMP | DATE | NULL |  |  |

## AGREEMENTGROUPSUSERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 2 | USERID | NUMBER(18,0) | NULL |  |  |
| 3 | USERNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | AGREEMENTGROUPNAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTGROUPSUSERSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 2 | USERID | NUMBER(18,0) | NULL |  |  |
| 3 | USERNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | AGREEMENTGROUPNAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTMARGINS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTMARGINID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | MARGINTYPE | NVARCHAR2(510) | NOT NULL |  |  |
| 5 | DUETO | NVARCHAR2(510) | NULL |  |  |
| 6 | AMOUNT | NUMBER(19,4) | NULL |  |  |
| 7 | COVERAGE | NVARCHAR2(200) | NULL |  |  |
| 8 | METHODOLOGY | NVARCHAR2(200) | NULL |  |  |
| 9 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 10 | IMPORTCONFIGURATIONNAME | NVARCHAR2(200) | NULL |  |  |
| 11 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | CURRENCYNAME | NCHAR(6) | NULL |  |  |
| 13 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 14 | MARGINMETHOD | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTMARGINSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTMARGINID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | MARGINTYPE | NVARCHAR2(510) | NOT NULL |  |  |
| 5 | DUETO | NVARCHAR2(510) | NULL |  |  |
| 6 | AMOUNT | NUMBER(19,4) | NULL |  |  |
| 7 | COVERAGE | NVARCHAR2(200) | NULL |  |  |
| 8 | METHODOLOGY | NVARCHAR2(200) | NULL |  |  |
| 9 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 10 | IMPORTCONFIGURATIONNAME | NVARCHAR2(200) | NULL |  |  |
| 11 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | CURRENCYNAME | NCHAR(6) | NULL |  |  |
| 13 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 14 | MARGINMETHOD | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTNOTES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTNOTEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | NOTE | NVARCHAR2(1000) | NOT NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 5 | CREATEDBYID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDBY | NVARCHAR2(510) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |

## AGREEMENTNOTESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTNOTEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | NOTE | NVARCHAR2(1000) | NOT NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 5 | CREATEDBYID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDBY | NVARCHAR2(510) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |

## AGREEMENTRATING

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOODYS | NVARCHAR2(20) | NULL |  |  |
| 3 | FITCH | NVARCHAR2(20) | NULL |  |  |
| 4 | SANDP | NVARCHAR2(20) | NULL |  |  |
| 5 | INTERNAL | NVARCHAR2(20) | NULL |  |  |
| 6 | IRS | NUMBER(18,0) | NOT NULL |  |  |
| 7 | COMMODITIE | NUMBER(18,0) | NOT NULL |  |  |
| 8 | FXSWAP | NUMBER(18,0) | NOT NULL |  |  |
| 9 | FXFWD | NUMBER(18,0) | NOT NULL |  |  |
| 10 | CDS | NUMBER(18,0) | NOT NULL |  |  |
| 11 | FXOPT | NUMBER(18,0) | NOT NULL |  |  |
| 12 | EQUITIES | NUMBER(18,0) | NOT NULL |  |  |
| 13 | PRECIOUSMETAL | NUMBER(18,0) | NULL |  |  |
| 14 | CO2 | NUMBER(18,0) | NULL |  |  |
| 15 | INFLATION | NUMBER(18,0) | NULL |  |  |
| 16 | WEATHER | NUMBER(18,0) | NULL |  |  |
| 17 | TRS | NUMBER(18,0) | NULL |  |  |
| 18 | PHYSICALCOMM | NUMBER(18,0) | NULL |  |  |

## AGREEMENTRESPBUSINESSLINES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPBUSINESSLINEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | BUSINESSLINE | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTRESPBUSINESSLINESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPBUSINESSLINEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | BUSINESSLINE | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTRESPCOUNTERPARTY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | COUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTRESPCOUNTERPARTYBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | COUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTRESPCPTYORGTYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | ORGANIZATIONTYPENAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTRESPCPTYORGTYPESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | ORGANIZATIONTYPENAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTRESPONSIBILITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RESPONSIBILITYID | NUMBER(18,0) | NULL |  |  |
| 2 | RESPONSIBILITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | HASUSERS | NUMBER(1,0) | NULL |  |  |

## AGREEMENTRESPONSIBILITIESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RESPONSIBILITYID | NUMBER(18,0) | NULL |  |  |
| 2 | RESPONSIBILITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | HASUSERS | NUMBER(1,0) | NULL |  |  |

## AGREEMENTRESPPRINCIPALS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTRESPPRINCIPALSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTRESPPRINMANLOC

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | CITYNAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTRESPPRINMANLOCBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | CITYNAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTRESPUSERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | USERNAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTRESPUSERSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | USERNAME | NVARCHAR2(510) | NULL |  |  |

## AGREEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGREEMENTTYPEID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 6 | COUNTERPARTYNAME | NVARCHAR2(2000) | NULL |  |  |
| 7 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 8 | PRINCIPALNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | PRINCIPALMANAGINGLOCATIONID | NUMBER(18,0) | NULL |  |  |
| 10 | PRINCIPALMANAGINGLOCATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | VALUATIONAGENT | NVARCHAR2(2000) | NULL |  |  |
| 12 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 13 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | BUSINESSLINE | NVARCHAR2(2000) | NULL |  |  |
| 15 | SOURCEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 16 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 17 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 18 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 19 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 20 | INCLUDESTRADEDAYS | NVARCHAR2(2000) | NULL |  |  |
| 21 | EXCLUDESTRADEDAYS | NVARCHAR2(2000) | NULL |  |  |
| 22 | CALCULATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 23 | CPTYCREDITSUPPORTPROVIDERID | NUMBER(18,0) | NULL |  |  |
| 24 | CPTYCREDITSUPPORTPROVIDERNAME | NVARCHAR2(2000) | NULL |  |  |
| 25 | PRINCREDITSUPPORTPROVIDERID | NUMBER(18,0) | NULL |  |  |
| 26 | PRINCREDITSUPPORTPROVIDERNAME | NVARCHAR2(2000) | NULL |  |  |
| 27 | LOCKUPCALCULATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 28 | NOTIFICATIONTIME | DATE | NULL |  |  |
| 29 | NOTIFICATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 30 | NOTIFICATIONTIMECITYID | NUMBER(18,0) | NULL |  |  |
| 31 | NOTIFICATIONTIMECITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 32 | CPTYMANAGINGLOCATIONID | NUMBER(18,0) | NULL |  |  |
| 33 | CPTYMANAGINGLOCATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 34 | DISPUTEMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 35 | DISPUTEAMOUNT | NUMBER(21,6) | NULL |  |  |
| 36 | DISPUTECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 37 | DISPUTECURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 38 | COLLATERALVALUATIONQUOTE | NVARCHAR2(2000) | NULL |  |  |
| 39 | COLLATERALPRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 40 | COLLATERALPRICESOURCENAME | NVARCHAR2(2000) | NULL |  |  |
| 41 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 42 | AGREEMENTSTATUS | NVARCHAR2(2000) | NULL |  |  |
| 43 | STATUSDETAILNAME | NVARCHAR2(2000) | NULL |  |  |
| 44 | STATUSDETAILID | NUMBER(18,0) | NULL |  |  |
| 45 | GOVERNINGLAWNAME | NVARCHAR2(2000) | NULL |  |  |
| 46 | GOVERNINGLAWID | NUMBER(18,0) | NULL |  |  |
| 47 | VERSIONYEAR | NUMBER(9,0) | NULL |  |  |
| 48 | MASTERAGREEMENTDATE | DATE | NULL |  |  |
| 49 | SIGNATUREDATE | DATE | NULL |  |  |
| 50 | AMENDMENTDATE | DATE | NULL |  |  |
| 51 | POSTINGPARTY | NVARCHAR2(100) | NULL |  |  |
| 52 | COLLATERALALLOCATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 53 | AVAILABLEFORREHYPOTHECATION | NVARCHAR2(2000) | NULL |  |  |
| 54 | TRIPARTYVARIATIONCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 55 | TRIPARTYVARIATIONCUSTODIANNAME | NVARCHAR2(2000) | NULL |  |  |
| 56 | TRIPARTYLOCKUPCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 57 | TRIPARTYLOCKUPCUSTODIANNAME | NVARCHAR2(2000) | NULL |  |  |
| 58 | INCLUDEVARIATIONACCRUAL | NUMBER(1,0) | NULL |  |  |
| 59 | INCLUDELOCKUPACCRUAL | NUMBER(1,0) | NULL |  |  |
| 60 | CASHSETTLEMENTOFFSET | NVARCHAR2(2000) | NULL |  |  |
| 61 | DEBTSETTLEMENTOFFSET | NVARCHAR2(2000) | NULL |  |  |
| 62 | NETINTERESTPAYMENTS | NUMBER(1,0) | NULL |  |  |
| 63 | INTERESTPAYMENTCALENDARNAME | NVARCHAR2(200) | NULL |  |  |
| 64 | INTERESTPAYMENTCALENDARID | NUMBER(18,0) | NULL |  |  |
| 65 | MARGINVALUATIONTIMINGTYPE | NVARCHAR2(2000) | NULL |  |  |
| 66 | INTERESTPAYMENTTIMINGTYPE | NVARCHAR2(2000) | NULL |  |  |
| 67 | USEMTAONLOCKUPMARGINTERMS | NUMBER(1,0) | NULL |  |  |
| 68 | USEROUNDINGONLOCKUPMARGINTERMS | NUMBER(1,0) | NULL |  |  |
| 69 | FXRATESOURCEID | NUMBER(18,0) | NULL |  |  |
| 70 | FXRATESOURCENAME | NVARCHAR2(200) | NULL |  |  |
| 71 | INTERESTPAYMENTPREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 72 | COLLATERALMARGINTYPE | NVARCHAR2(510) | NULL |  |  |
| 73 | CLEARINGDIRECTION | NVARCHAR2(510) | NULL |  |  |
| 74 | CLEARINGCLIENTNAME | NVARCHAR2(510) | NULL |  |  |
| 75 | CENTRALCOUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 76 | CENTRALCOUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 77 | INTERESTROUNDINGMETHOD | NVARCHAR2(100) | NULL |  |  |
| 78 | INTERESTAPPLYPRECISIONTO | NVARCHAR2(100) | NULL |  |  |
| 79 | EXTPRINPOSTINGMETHOD | NVARCHAR2(500) | NULL |  |  |
| 80 | EXTCPTYPOSTINGMETHOD | NVARCHAR2(500) | NULL |  |  |
| 81 | EXTMATCHCODE | NVARCHAR2(500) | NULL |  |  |
| 82 | EXTAGREEMENTNO | NUMBER(20,6) | NULL |  |  |
| 83 | EXTCOLLATERALLIQUIDITY | NUMBER(1,0) | NULL |  |  |
| 84 | EXTCOLLATERALELIGIBILITY | NUMBER(1,0) | NULL |  |  |
| 85 | EXTDEPOSIT | NVARCHAR2(500) | NULL |  |  |
| 86 | EXTPAYMENTTYPE | NVARCHAR2(500) | NULL |  |  |
| 87 | EXTCASHACCT | NVARCHAR2(500) | NULL |  |  |
| 88 | EXTINTERNALCASHACCT | NVARCHAR2(500) | NULL |  |  |
| 89 | EXTINTERNALSECACCT | NVARCHAR2(500) | NULL |  |  |
| 90 | EXTINTERNALCASH2 | NVARCHAR2(500) | NULL |  |  |
| 91 | EXTANVILMATCHCODE | NVARCHAR2(500) | NULL |  |  |
| 92 | EXTLEGALENTITYID | NVARCHAR2(500) | NULL |  |  |
| 93 | EXTLASTRECONDATE | DATE | NULL |  |  |
| 94 | EXTFINANCIALCPTY | NUMBER(9,0) | NULL |  |  |
| 95 | EXTRECONDATE | NVARCHAR2(500) | NULL |  |  |
| 96 | EXTTHRESHOLDCREDIT | NUMBER(20,6) | NULL |  |  |
| 97 | EXTTHRESHOLDEQUITIE | NUMBER(20,6) | NULL |  |  |
| 98 | EXTTHRESHOLDINTEREST | NUMBER(20,6) | NULL |  |  |
| 99 | EXTTHRESHOLDFX | NUMBER(20,6) | NULL |  |  |
| 100 | EXTTHRESHOLDCOMMODITY | NUMBER(20,6) | NULL |  |  |
| 101 | EXTTYPFC_NFC | NVARCHAR2(500) | NULL |  |  |
| 102 | EXTPORTRECEIVER | NVARCHAR2(500) | NULL |  |  |
| 103 | EXTDFARELEVANT | NUMBER(1,0) | NULL |  |  |
| 104 | EXTEXCELREQUIRED | NUMBER(1,0) | NULL |  |  |
| 105 | EXTKINDOFRECON | NVARCHAR2(500) | NULL |  |  |
| 106 | EXTNEGATIVEINTERESTS | NUMBER(1,0) | NULL |  |  |
| 107 | EXTSINLGEAGREEMENT | NUMBER(1,0) | NULL |  |  |
| 108 | EXTPAYMENTTOOLINHIBITION | NUMBER(1,0) | NULL |  |  |
| 109 | EXTISAVISSPECIALCTPY | NUMBER(1,0) | NULL |  |  |
| 110 | EXTISPAYMENTSPECIALCTPY | NUMBER(1,0) | NULL |  |  |
| 111 | EXTADRESSSTREET | NVARCHAR2(510) | NULL |  |  |
| 112 | EXTADDRADDITION | NVARCHAR2(510) | NULL |  |  |
| 113 | EXTADDRZIPCODE | NVARCHAR2(510) | NULL |  |  |
| 114 | EXTADDRCITY | NVARCHAR2(510) | NULL |  |  |
| 115 | EXTADDRCOUNTRY | NVARCHAR2(510) | NULL |  |  |
| 116 | EXTWEEKLYRECON | NVARCHAR2(40) | NULL |  |  |
| 117 | EXTTRIOPTIMASHORTCODE | NVARCHAR2(500) | NULL |  |  |
| 118 | EXTISDA | NUMBER(1,0) | NULL |  |  |
| 119 | EXTRECONTOOL | NVARCHAR2(120) | NULL |  |  |
| 120 | EXTQUARTERLYRECON | DATE | NULL |  |  |
| 121 | EXTYEARLYRECON | DATE | NULL |  |  |
| 122 | EXTPREFERREDFREQUENCY | NVARCHAR2(510) | NULL |  |  |
| 123 | EXTNEXTRECONDATE | DATE | NULL |  |  |
| 124 | EXTSENDDATE | DATE | NULL |  |  |
| 125 | EXTIBAN | NVARCHAR2(60) | NULL |  |  |
| 126 | EXTIBANCCY | NVARCHAR2(6) | NULL |  |  |
| 127 | EXTCAS_AGREEMENT_EXCLUSION | NUMBER(1,0) | NULL |  |  |
| 128 | EXTCTS | NUMBER | NULL |  |  |
| 129 | EXTSOURCEREFNEW | NUMBER(20,0) | NULL |  |  |
| 130 | EXTTRADECOVERAGEDELIVERY | NUMBER(1,0) | NULL |  |  |
| 131 | MARGINVALUATIONTIMINGID | NUMBER(18,0) | NULL |  |  |
| 132 | INTERESTPAYMENTTIMINGID | NUMBER(18,0) | NULL |  |  |
| 133 | ALLOWINTRADAYCALCULATION | NUMBER(1,0) | NULL |  |  |
| 134 | INTRADAYTOLERANCE | NUMBER(18,0) | NULL |  |  |
| 135 | PRICEADJUSTMENT | NVARCHAR2(510) | NULL |  |  |
| 136 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 137 | AGREEMENTGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 138 | SPLITTOLERANCEAMOUNT | NUMBER(21,6) | NULL |  |  |
| 139 | SPLITTOLERANCECURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 140 | SPLITTOLERANCEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 141 | EXTTRIOPTIMAREPORT | NVARCHAR2(40) | NULL |  |  |
| 142 | EXTCLIENTMATCHCODE | NVARCHAR2(200) | NULL |  |  |
| 143 | EXTCSA_TYPE | NVARCHAR2(80) | NULL |  |  |
| 144 | EXTRADARSCREEN | NUMBER(1,0) | NULL |  |  |
| 145 | EXTLIMEXSTATUS | NUMBER(1,0) | NULL |  |  |
| 146 | EXTINTERNALCPDACCOUNT | NUMBER(20,6) | NULL |  |  |
| 147 | EXTDFA_COMPLIANT | NUMBER(1,0) | NULL |  |  |
| 148 | EXTIM_NONCOMPLIANT | NUMBER(1,0) | NULL |  |  |
| 149 | EXTASSETCLASSESALTERNATIVEAP | NVARCHAR2(1000) | NULL |  |  |
| 150 | EXTSECURITY_ACCOUNT_CUST | NVARCHAR2(1000) | NULL |  |  |
| 151 | EXTIMCALCULATIONMETHOD | NVARCHAR2(200) | NULL |  |  |
| 152 | EXTPRODUCTSIMMEXCEPTION | NVARCHAR2(1000) | NULL |  |  |
| 153 | EXTSIMMAPPROACH | NVARCHAR2(80) | NULL |  |  |
| 154 | EXTTERMINATIONCURRENCY | NVARCHAR2(12) | NULL |  |  |
| 155 | EXTSIMMCALCULATIONCURRENCY | NVARCHAR2(12) | NULL |  |  |
| 156 | EXTONEWAYPROVISION | NUMBER(1,0) | NULL |  |  |
| 157 | EXTCSDID | NUMBER(20,0) | NULL |  |  |
| 158 | EXTRETROSPECTIVEEFFECT | NUMBER(1,0) | NULL |  |  |
| 159 | EXTCSDREGIME | NVARCHAR2(1000) | NULL |  |  |
| 160 | EXTIM_PHASE | NVARCHAR2(80) | NULL |  |  |
| 161 | EXTISMESSAGINGAGREEMENT | NUMBER(1,0) | NULL |  |  |
| 162 | EXTUSDOMESTIC | NUMBER(1,0) | NULL |  |  |
| 163 | EXTISMESSAGINGAGREEMENTB | NUMBER(1,0) | NULL |  |  |
| 164 | EXTSWIFTMSGWORKFLOW | NVARCHAR2(20) | NULL |  |  |
| 165 | EXTELIGIBILITYSET | NVARCHAR2(60) | NULL |  |  |
| 166 | EXTLIGHTCSD | NUMBER(1,0) | NULL |  |  |
| 167 | EXTIM_NONCOMPLIANTDATE | DATE | NULL |  |  |
| 168 | EXTESTER_READY | NUMBER(1,0) | NULL |  |  |
| 169 | EXTESTER_NON_COMPLIANT | NUMBER(1,0) | NULL |  |  |
| 170 | EXTESTER_DUE_DATE | DATE | NULL |  |  |
| 171 | EXTSIG_RISK_SUB | NUMBER(1,0) | NULL |  |  |
| 172 | EXTBRANCH_OF_US_BANK | NUMBER(1,0) | NULL |  |  |
| 173 | EXTNONUS_BANK | NUMBER(1,0) | NULL |  |  |
| 174 | EXTUS_PERSON | NUMBER(1,0) | NULL |  |  |
| 175 | EXTUS_PERSON_GUARANTEED | NUMBER(1,0) | NULL |  |  |
| 176 | EXTDF_CLASS | NVARCHAR2(500) | NULL |  |  |
| 177 | EXTDF_TYPE | NVARCHAR2(500) | NULL |  |  |
| 178 | EXTCFTCREGISTRATION | NVARCHAR2(500) | NULL |  |  |
| 179 | EXTTRADING_FROMNY | NUMBER(1,0) | NULL |  |  |
| 180 | EXTPORTFOLIORECONCILIATION | NVARCHAR2(500) | NULL |  |  |
| 181 | EXTISACADIAINTEREST | NUMBER(1,0) | NULL |  |  |
| 182 | EXTCAPINSTRUMENTID | NVARCHAR2(510) | NULL |  |  |
| 183 | EXTCAPHELDBYCPTY | NUMBER(20,2) | NULL |  |  |
| 184 | EXTCAPPOSTEDBYPRIN | NUMBER(20,2) | NULL |  |  |
| 185 | EXTRECONCREATEDDATE | DATE | NULL |  |  |
| 186 | EXTWITHHOLDINGTAX | NUMBER(1,0) | NULL |  |  |
| 187 | IMRAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 188 | IARAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 189 | IMIATIMESTAMPUTC | DATE | NULL |  |  |
| 190 | IMRAWDUETO | NVARCHAR2(510) | NULL |  |  |
| 191 | IARAWDUETO | NVARCHAR2(510) | NULL |  |  |
| 192 | AUTOBOOKINGALLOWEDFOR | NVARCHAR2(2000) | NULL |  |  |

## AGREEMENTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGREEMENTTYPEID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 6 | COUNTERPARTYNAME | NVARCHAR2(2000) | NULL |  |  |
| 7 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 8 | PRINCIPALNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | PRINCIPALMANAGINGLOCATIONID | NUMBER(18,0) | NULL |  |  |
| 10 | PRINCIPALMANAGINGLOCATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | VALUATIONAGENT | NVARCHAR2(2000) | NULL |  |  |
| 12 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 13 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | BUSINESSLINE | NVARCHAR2(2000) | NULL |  |  |
| 15 | SOURCEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 16 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 17 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 18 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 19 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 20 | INCLUDESTRADEDAYS | NVARCHAR2(2000) | NULL |  |  |
| 21 | EXCLUDESTRADEDAYS | NVARCHAR2(2000) | NULL |  |  |
| 22 | CALCULATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 23 | CPTYCREDITSUPPORTPROVIDERID | NUMBER(18,0) | NULL |  |  |
| 24 | CPTYCREDITSUPPORTPROVIDERNAME | NVARCHAR2(2000) | NULL |  |  |
| 25 | PRINCREDITSUPPORTPROVIDERID | NUMBER(18,0) | NULL |  |  |
| 26 | PRINCREDITSUPPORTPROVIDERNAME | NVARCHAR2(2000) | NULL |  |  |
| 27 | LOCKUPCALCULATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 28 | NOTIFICATIONTIME | DATE | NULL |  |  |
| 29 | NOTIFICATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 30 | NOTIFICATIONTIMECITYID | NUMBER(18,0) | NULL |  |  |
| 31 | NOTIFICATIONTIMECITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 32 | CPTYMANAGINGLOCATIONID | NUMBER(18,0) | NULL |  |  |
| 33 | CPTYMANAGINGLOCATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 34 | DISPUTEMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 35 | DISPUTEAMOUNT | NUMBER(21,6) | NULL |  |  |
| 36 | DISPUTECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 37 | DISPUTECURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 38 | COLLATERALVALUATIONQUOTE | NVARCHAR2(2000) | NULL |  |  |
| 39 | COLLATERALPRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 40 | COLLATERALPRICESOURCENAME | NVARCHAR2(2000) | NULL |  |  |
| 41 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 42 | AGREEMENTSTATUS | NVARCHAR2(2000) | NULL |  |  |
| 43 | STATUSDETAILNAME | NVARCHAR2(2000) | NULL |  |  |
| 44 | STATUSDETAILID | NUMBER(18,0) | NULL |  |  |
| 45 | GOVERNINGLAWNAME | NVARCHAR2(2000) | NULL |  |  |
| 46 | GOVERNINGLAWID | NUMBER(18,0) | NULL |  |  |
| 47 | VERSIONYEAR | NUMBER(9,0) | NULL |  |  |
| 48 | MASTERAGREEMENTDATE | DATE | NULL |  |  |
| 49 | SIGNATUREDATE | DATE | NULL |  |  |
| 50 | AMENDMENTDATE | DATE | NULL |  |  |
| 51 | POSTINGPARTY | NVARCHAR2(100) | NULL |  |  |
| 52 | COLLATERALALLOCATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 53 | AVAILABLEFORREHYPOTHECATION | NVARCHAR2(2000) | NULL |  |  |
| 54 | TRIPARTYVARIATIONCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 55 | TRIPARTYVARIATIONCUSTODIANNAME | NVARCHAR2(2000) | NULL |  |  |
| 56 | TRIPARTYLOCKUPCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 57 | TRIPARTYLOCKUPCUSTODIANNAME | NVARCHAR2(2000) | NULL |  |  |
| 58 | INCLUDEVARIATIONACCRUAL | NUMBER(1,0) | NULL |  |  |
| 59 | INCLUDELOCKUPACCRUAL | NUMBER(1,0) | NULL |  |  |
| 60 | CASHSETTLEMENTOFFSET | NVARCHAR2(2000) | NULL |  |  |
| 61 | DEBTSETTLEMENTOFFSET | NVARCHAR2(2000) | NULL |  |  |
| 62 | NETINTERESTPAYMENTS | NUMBER(1,0) | NULL |  |  |
| 63 | INTERESTPAYMENTCALENDARNAME | NVARCHAR2(200) | NULL |  |  |
| 64 | INTERESTPAYMENTCALENDARID | NUMBER(18,0) | NULL |  |  |
| 65 | MARGINVALUATIONTIMINGTYPE | NVARCHAR2(2000) | NULL |  |  |
| 66 | INTERESTPAYMENTTIMINGTYPE | NVARCHAR2(2000) | NULL |  |  |
| 67 | USEMTAONLOCKUPMARGINTERMS | NUMBER(1,0) | NULL |  |  |
| 68 | USEROUNDINGONLOCKUPMARGINTERMS | NUMBER(1,0) | NULL |  |  |
| 69 | FXRATESOURCEID | NUMBER(18,0) | NULL |  |  |
| 70 | FXRATESOURCENAME | NVARCHAR2(200) | NULL |  |  |
| 71 | INTERESTPAYMENTPREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 72 | COLLATERALMARGINTYPE | NVARCHAR2(510) | NULL |  |  |
| 73 | CLEARINGDIRECTION | NVARCHAR2(510) | NULL |  |  |
| 74 | CLEARINGCLIENTNAME | NVARCHAR2(510) | NULL |  |  |
| 75 | CENTRALCOUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 76 | CENTRALCOUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 77 | INTERESTROUNDINGMETHOD | NVARCHAR2(100) | NULL |  |  |
| 78 | INTERESTAPPLYPRECISIONTO | NVARCHAR2(100) | NULL |  |  |
| 79 | EXTPRINPOSTINGMETHOD | NVARCHAR2(500) | NULL |  |  |
| 80 | EXTCPTYPOSTINGMETHOD | NVARCHAR2(500) | NULL |  |  |
| 81 | EXTMATCHCODE | NVARCHAR2(500) | NULL |  |  |
| 82 | EXTAGREEMENTNO | NUMBER(20,6) | NULL |  |  |
| 83 | EXTCOLLATERALLIQUIDITY | NUMBER(1,0) | NULL |  |  |
| 84 | EXTCOLLATERALELIGIBILITY | NUMBER(1,0) | NULL |  |  |
| 85 | EXTDEPOSIT | NVARCHAR2(500) | NULL |  |  |
| 86 | EXTPAYMENTTYPE | NVARCHAR2(500) | NULL |  |  |
| 87 | EXTCASHACCT | NVARCHAR2(500) | NULL |  |  |
| 88 | EXTINTERNALCASHACCT | NVARCHAR2(500) | NULL |  |  |
| 89 | EXTINTERNALSECACCT | NVARCHAR2(500) | NULL |  |  |
| 90 | EXTINTERNALCASH2 | NVARCHAR2(500) | NULL |  |  |
| 91 | EXTANVILMATCHCODE | NVARCHAR2(500) | NULL |  |  |
| 92 | EXTLEGALENTITYID | NVARCHAR2(500) | NULL |  |  |
| 93 | EXTLASTRECONDATE | DATE | NULL |  |  |
| 94 | EXTFINANCIALCPTY | NUMBER(9,0) | NULL |  |  |
| 95 | EXTRECONDATE | NVARCHAR2(500) | NULL |  |  |
| 96 | EXTTHRESHOLDCREDIT | NUMBER(20,6) | NULL |  |  |
| 97 | EXTTHRESHOLDEQUITIE | NUMBER(20,6) | NULL |  |  |
| 98 | EXTTHRESHOLDINTEREST | NUMBER(20,6) | NULL |  |  |
| 99 | EXTTHRESHOLDFX | NUMBER(20,6) | NULL |  |  |
| 100 | EXTTHRESHOLDCOMMODITY | NUMBER(20,6) | NULL |  |  |
| 101 | EXTTYPFC_NFC | NVARCHAR2(500) | NULL |  |  |
| 102 | EXTPORTRECEIVER | NVARCHAR2(500) | NULL |  |  |
| 103 | EXTDFARELEVANT | NUMBER(1,0) | NULL |  |  |
| 104 | EXTEXCELREQUIRED | NUMBER(1,0) | NULL |  |  |
| 105 | EXTKINDOFRECON | NVARCHAR2(500) | NULL |  |  |
| 106 | EXTNEGATIVEINTERESTS | NUMBER(1,0) | NULL |  |  |
| 107 | EXTSINLGEAGREEMENT | NUMBER(1,0) | NULL |  |  |
| 108 | EXTPAYMENTTOOLINHIBITION | NUMBER(1,0) | NULL |  |  |
| 109 | EXTISAVISSPECIALCTPY | NUMBER(1,0) | NULL |  |  |
| 110 | EXTISPAYMENTSPECIALCTPY | NUMBER(1,0) | NULL |  |  |
| 111 | EXTADRESSSTREET | NVARCHAR2(510) | NULL |  |  |
| 112 | EXTADDRADDITION | NVARCHAR2(510) | NULL |  |  |
| 113 | EXTADDRZIPCODE | NVARCHAR2(510) | NULL |  |  |
| 114 | EXTADDRCITY | NVARCHAR2(510) | NULL |  |  |
| 115 | EXTADDRCOUNTRY | NVARCHAR2(510) | NULL |  |  |
| 116 | EXTWEEKLYRECON | NVARCHAR2(40) | NULL |  |  |
| 117 | EXTTRIOPTIMASHORTCODE | NVARCHAR2(500) | NULL |  |  |
| 118 | EXTISDA | NUMBER(1,0) | NULL |  |  |
| 119 | EXTRECONTOOL | NVARCHAR2(120) | NULL |  |  |
| 120 | EXTQUARTERLYRECON | DATE | NULL |  |  |
| 121 | EXTYEARLYRECON | DATE | NULL |  |  |
| 122 | EXTPREFERREDFREQUENCY | NVARCHAR2(510) | NULL |  |  |
| 123 | EXTNEXTRECONDATE | DATE | NULL |  |  |
| 124 | EXTSENDDATE | DATE | NULL |  |  |
| 125 | EXTIBAN | NVARCHAR2(60) | NULL |  |  |
| 126 | EXTIBANCCY | NVARCHAR2(6) | NULL |  |  |
| 127 | EXTCAS_AGREEMENT_EXCLUSION | NUMBER(1,0) | NULL |  |  |
| 128 | EXTCTS | NUMBER | NULL |  |  |
| 129 | EXTSOURCEREFNEW | NUMBER(20,0) | NULL |  |  |
| 130 | EXTTRADECOVERAGEDELIVERY | NUMBER(1,0) | NULL |  |  |
| 131 | MARGINVALUATIONTIMINGID | NUMBER(18,0) | NULL |  |  |
| 132 | INTERESTPAYMENTTIMINGID | NUMBER(18,0) | NULL |  |  |
| 133 | ALLOWINTRADAYCALCULATION | NUMBER(1,0) | NULL |  |  |
| 134 | INTRADAYTOLERANCE | NUMBER(18,0) | NULL |  |  |
| 135 | PRICEADJUSTMENT | NVARCHAR2(510) | NULL |  |  |
| 136 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 137 | AGREEMENTGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 138 | SPLITTOLERANCEAMOUNT | NUMBER(21,6) | NULL |  |  |
| 139 | SPLITTOLERANCECURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 140 | SPLITTOLERANCEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 141 | EXTTRIOPTIMAREPORT | NVARCHAR2(40) | NULL |  |  |
| 142 | EXTCLIENTMATCHCODE | NVARCHAR2(200) | NULL |  |  |
| 143 | EXTCSA_TYPE | NVARCHAR2(80) | NULL |  |  |
| 144 | EXTRADARSCREEN | NUMBER(1,0) | NULL |  |  |
| 145 | EXTLIMEXSTATUS | NUMBER(1,0) | NULL |  |  |
| 146 | EXTINTERNALCPDACCOUNT | NUMBER(20,6) | NULL |  |  |
| 147 | EXTDFA_COMPLIANT | NUMBER(1,0) | NULL |  |  |
| 148 | EXTIM_NONCOMPLIANT | NUMBER(1,0) | NULL |  |  |
| 149 | EXTASSETCLASSESALTERNATIVEAP | NVARCHAR2(1000) | NULL |  |  |
| 150 | EXTSECURITY_ACCOUNT_CUST | NVARCHAR2(1000) | NULL |  |  |
| 151 | EXTIMCALCULATIONMETHOD | NVARCHAR2(200) | NULL |  |  |
| 152 | EXTPRODUCTSIMMEXCEPTION | NVARCHAR2(1000) | NULL |  |  |
| 153 | EXTSIMMAPPROACH | NVARCHAR2(80) | NULL |  |  |
| 154 | EXTTERMINATIONCURRENCY | NVARCHAR2(12) | NULL |  |  |
| 155 | EXTSIMMCALCULATIONCURRENCY | NVARCHAR2(12) | NULL |  |  |
| 156 | EXTONEWAYPROVISION | NUMBER(1,0) | NULL |  |  |
| 157 | EXTCSDID | NUMBER(20,0) | NULL |  |  |
| 158 | EXTRETROSPECTIVEEFFECT | NUMBER(1,0) | NULL |  |  |
| 159 | EXTCSDREGIME | NVARCHAR2(1000) | NULL |  |  |
| 160 | EXTIM_PHASE | NVARCHAR2(80) | NULL |  |  |
| 161 | EXTISMESSAGINGAGREEMENT | NUMBER(1,0) | NULL |  |  |
| 162 | EXTUSDOMESTIC | NUMBER(1,0) | NULL |  |  |
| 163 | EXTISMESSAGINGAGREEMENTB | NUMBER(1,0) | NULL |  |  |
| 164 | EXTSWIFTMSGWORKFLOW | NVARCHAR2(20) | NULL |  |  |
| 165 | EXTELIGIBILITYSET | NVARCHAR2(60) | NULL |  |  |
| 166 | EXTLIGHTCSD | NUMBER(1,0) | NULL |  |  |
| 167 | EXTIM_NONCOMPLIANTDATE | DATE | NULL |  |  |
| 168 | EXTESTER_READY | NUMBER(1,0) | NULL |  |  |
| 169 | EXTESTER_NON_COMPLIANT | NUMBER(1,0) | NULL |  |  |
| 170 | EXTESTER_DUE_DATE | DATE | NULL |  |  |
| 171 | EXTSIG_RISK_SUB | NUMBER(1,0) | NULL |  |  |
| 172 | EXTBRANCH_OF_US_BANK | NUMBER(1,0) | NULL |  |  |
| 173 | EXTNONUS_BANK | NUMBER(1,0) | NULL |  |  |
| 174 | EXTUS_PERSON | NUMBER(1,0) | NULL |  |  |
| 175 | EXTUS_PERSON_GUARANTEED | NUMBER(1,0) | NULL |  |  |
| 176 | EXTDF_CLASS | NVARCHAR2(500) | NULL |  |  |
| 177 | EXTDF_TYPE | NVARCHAR2(500) | NULL |  |  |
| 178 | EXTCFTCREGISTRATION | NVARCHAR2(500) | NULL |  |  |
| 179 | EXTTRADING_FROMNY | NUMBER(1,0) | NULL |  |  |
| 180 | EXTPORTFOLIORECONCILIATION | NVARCHAR2(500) | NULL |  |  |
| 181 | EXTISACADIAINTEREST | NUMBER(1,0) | NULL |  |  |
| 182 | EXTCAPINSTRUMENTID | NVARCHAR2(510) | NULL |  |  |
| 183 | EXTCAPHELDBYCPTY | NUMBER(20,2) | NULL |  |  |
| 184 | EXTCAPPOSTEDBYPRIN | NUMBER(20,2) | NULL |  |  |
| 185 | EXTRECONCREATEDDATE | DATE | NULL |  |  |
| 186 | EXTWITHHOLDINGTAX | NUMBER(1,0) | NULL |  |  |
| 187 | IMRAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 188 | IARAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 189 | IMIATIMESTAMPUTC | DATE | NULL |  |  |
| 190 | IMRAWDUETO | NVARCHAR2(510) | NULL |  |  |
| 191 | IARAWDUETO | NVARCHAR2(510) | NULL |  |  |
| 192 | AUTOBOOKINGALLOWEDFOR | NVARCHAR2(2000) | NULL |  |  |

## AGREEMENTSCOPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTSCOPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTSCOPENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 4 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 5 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 6 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | ENTITYNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | ENTITYID | NUMBER(18,0) | NULL |  |  |

## AGREEMENTSCOPESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTSCOPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTSCOPENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 4 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 5 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 6 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | ENTITYNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | ENTITYID | NUMBER(18,0) | NULL |  |  |

## AGREEMENTTRADECOUNT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADECOUNT | NUMBER(18,0) | NOT NULL |  |  |
| 3 | TRADETYPEID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTTRADETYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | PRINCIPALID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | PRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 5 | COUNTERPARTYID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | COUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 7 | TRADETYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 8 | TRADETYPENAME | NVARCHAR2(200) | NULL |  |  |
| 9 | BUSINESSLINE | NVARCHAR2(510) | NULL |  |  |
| 10 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 11 | ADDITIONALCRITERIA | NVARCHAR2(4000) | NULL |  |  |

## AGREEMENTTRADETYPESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | PRINCIPALID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | PRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 5 | COUNTERPARTYID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | COUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 7 | TRADETYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 8 | TRADETYPENAME | NVARCHAR2(200) | NULL |  |  |
| 9 | BUSINESSLINE | NVARCHAR2(510) | NULL |  |  |
| 10 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 11 | ADDITIONALCRITERIA | NVARCHAR2(4000) | NULL |  |  |

## APPROVALCHANGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | APPROVALCHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | APPROVALRECORDID | NUMBER(18,0) | NULL |  |  |
| 3 | FIELDNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | ACTION | NVARCHAR2(510) | NULL |  |  |
| 5 | REFERENCEID | NUMBER(18,0) | NULL |  |  |
| 6 | AMENDEDBY | NUMBER(18,0) | NULL |  |  |
| 7 | AMENDEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | AMENDEDDATE | DATE | NULL |  |  |
| 9 | REVIEWBY | NUMBER(18,0) | NULL |  |  |
| 10 | REVIEWBYNAME | NVARCHAR2(510) | NULL |  |  |
| 11 | REVIEWEDDATE | DATE | NULL |  |  |
| 12 | APPROVALSTATUS | NVARCHAR2(510) | NULL |  |  |
| 13 | STATUSCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 14 | REFERENCENAME | NVARCHAR2(510) | NULL |  |  |
| 15 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |
| 16 | PARENTAPPROVALRECORDID | NUMBER(18,0) | NULL |  |  |
| 17 | PARENTREFERENCENAME | NVARCHAR2(510) | NULL |  |  |
| 18 | PARENTREFERENCEID | NUMBER(18,0) | NULL |  |  |
| 19 | DATATYPE | NVARCHAR2(510) | NULL |  |  |
| 20 | BEFOREVALUE | NCLOB | NULL |  |  |
| 21 | AFTERVALUE | NCLOB | NULL |  |  |

## APPROVALCHANGESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | APPROVALCHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | APPROVALRECORDID | NUMBER(18,0) | NULL |  |  |
| 3 | FIELDNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | ACTION | NVARCHAR2(510) | NULL |  |  |
| 5 | REFERENCEID | NUMBER(18,0) | NULL |  |  |
| 6 | AMENDEDBY | NUMBER(18,0) | NULL |  |  |
| 7 | AMENDEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | AMENDEDDATE | DATE | NULL |  |  |
| 9 | REVIEWBY | NUMBER(18,0) | NULL |  |  |
| 10 | REVIEWBYNAME | NVARCHAR2(510) | NULL |  |  |
| 11 | REVIEWEDDATE | DATE | NULL |  |  |
| 12 | APPROVALSTATUS | NVARCHAR2(510) | NULL |  |  |
| 13 | STATUSCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 14 | REFERENCENAME | NVARCHAR2(510) | NULL |  |  |
| 15 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |
| 16 | PARENTAPPROVALRECORDID | NUMBER(18,0) | NULL |  |  |
| 17 | PARENTREFERENCENAME | NVARCHAR2(510) | NULL |  |  |
| 18 | PARENTREFERENCEID | NUMBER(18,0) | NULL |  |  |
| 19 | DATATYPE | NVARCHAR2(510) | NULL |  |  |
| 20 | BEFOREVALUE | NCLOB | NULL |  |  |
| 21 | AFTERVALUE | NCLOB | NULL |  |  |

## APPROVALHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | APPROVALTRANSITIONHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | APPROVALRECORDID | NUMBER(18,0) | NULL |  |  |
| 3 | REFERENCEID | NUMBER(18,0) | NULL |  |  |
| 4 | REFERENCENAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | ACTION | NVARCHAR2(100) | NULL |  |  |
| 6 | AMENDEDBYID | NUMBER(18,0) | NULL |  |  |
| 7 | AMENDEDBYNAME | NVARCHAR2(100) | NULL |  |  |
| 8 | AMENDEDDATE | DATE | NULL |  |  |
| 9 | REVIEWEDBYID | NUMBER(18,0) | NULL |  |  |
| 10 | REVIEWEDBYNAME | NVARCHAR2(100) | NULL |  |  |
| 11 | REVIEWEDDATE | DATE | NULL |  |  |
| 12 | APPROVALSTATUS | NVARCHAR2(100) | NULL |  |  |
| 13 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 14 | DATATYPE | NVARCHAR2(100) | NULL |  |  |
| 15 | PARENTREFERENCEID | NUMBER(18,0) | NULL |  |  |
| 16 | STATUSCOMMENT | NVARCHAR2(1000) | NULL |  |  |

## APPROVALHISTORYBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | APPROVALTRANSITIONHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | APPROVALRECORDID | NUMBER(18,0) | NULL |  |  |
| 3 | REFERENCEID | NUMBER(18,0) | NULL |  |  |
| 4 | REFERENCENAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | ACTION | NVARCHAR2(100) | NULL |  |  |
| 6 | AMENDEDBYID | NUMBER(18,0) | NULL |  |  |
| 7 | AMENDEDBYNAME | NVARCHAR2(100) | NULL |  |  |
| 8 | AMENDEDDATE | DATE | NULL |  |  |
| 9 | REVIEWEDBYID | NUMBER(18,0) | NULL |  |  |
| 10 | REVIEWEDBYNAME | NVARCHAR2(100) | NULL |  |  |
| 11 | REVIEWEDDATE | DATE | NULL |  |  |
| 12 | APPROVALSTATUS | NVARCHAR2(100) | NULL |  |  |
| 13 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 14 | DATATYPE | NVARCHAR2(100) | NULL |  |  |
| 15 | PARENTREFERENCEID | NUMBER(18,0) | NULL |  |  |
| 16 | STATUSCOMMENT | NVARCHAR2(1000) | NULL |  |  |

## ASSETPOOLBALANCES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ASSETPOOLBALANCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 3 | ASSETPOOLNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | INSTRUMENTNAME | NVARCHAR2(4000) | NULL |  |  |
| 6 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 7 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 8 | IMPORTCONFIGURATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | RECORDDATE | DATE | NULL |  |  |
| 10 | EFFECTIVEDATE | DATE | NULL |  |  |

## ASSETPOOLBALANCESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ASSETPOOLBALANCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 3 | ASSETPOOLNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | INSTRUMENTNAME | NVARCHAR2(4000) | NULL |  |  |
| 6 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 7 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 8 | IMPORTCONFIGURATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | RECORDDATE | DATE | NULL |  |  |
| 10 | EFFECTIVEDATE | DATE | NULL |  |  |

## ASSETPOOLS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ASSETPOOLID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ASSETPOOLNAME | NVARCHAR2(200) | NULL |  |  |
| 3 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 4 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 6 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 7 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 9 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 10 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 11 | UPDATEDTIMESTAMP | DATE | NULL |  |  |

## ASSETPOOLSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ASSETPOOLID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ASSETPOOLNAME | NVARCHAR2(200) | NULL |  |  |
| 3 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 4 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 6 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 7 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 9 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 10 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 11 | UPDATEDTIMESTAMP | DATE | NULL |  |  |

## AUDITCHANGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AUDITCHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AUDITRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | FIELDNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | BEFOREVALUE | NVARCHAR2(4000) | NULL |  |  |
| 5 | AFTERVALUE | NVARCHAR2(4000) | NULL |  |  |
| 6 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | ACTIONNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | TRACKEDDATATYPE | NVARCHAR2(510) | NULL |  |  |
| 9 | REFERENCEID | NUMBER(18,0) | NULL |  |  |
| 10 | AMENDEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 11 | AMENDEDDATE | DATE | NULL |  |  |
| 12 | REFERENCENAME | NVARCHAR2(1000) | NULL |  |  |
| 13 | PARENTAUDITRECORDID | NUMBER(18,0) | NULL |  |  |
| 14 | PARENTREFERENCENAME | NVARCHAR2(510) | NULL |  |  |
| 15 | PARENTREFERENCEID | NUMBER(18,0) | NULL |  |  |
| 16 | REVIEWEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 17 | REVIEWEDDATE | DATE | NULL |  |  |

## AUDITCHANGESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AUDITCHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AUDITRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | FIELDNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | BEFOREVALUE | NVARCHAR2(4000) | NULL |  |  |
| 5 | AFTERVALUE | NVARCHAR2(4000) | NULL |  |  |
| 6 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | ACTIONNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | TRACKEDDATATYPE | NVARCHAR2(510) | NULL |  |  |
| 9 | REFERENCEID | NUMBER(18,0) | NULL |  |  |
| 10 | AMENDEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 11 | AMENDEDDATE | DATE | NULL |  |  |
| 12 | REFERENCENAME | NVARCHAR2(510) | NULL |  |  |
| 13 | PARENTAUDITRECORDID | NUMBER(18,0) | NULL |  |  |
| 14 | PARENTREFERENCENAME | NVARCHAR2(510) | NULL |  |  |
| 15 | PARENTREFERENCEID | NUMBER(18,0) | NULL |  |  |
| 16 | REVIEWEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 17 | REVIEWEDDATE | DATE | NULL |  |  |

## CCP_ALLOCATED_COLLATERAL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_ALLOCATED_COLLATERALID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | WKN | NVARCHAR2(40) | NULL |  |  |
| 5 | TYP | NVARCHAR2(40) | NULL |  |  |
| 6 | BASKET | NVARCHAR2(40) | NULL |  |  |
| 7 | ABWICKLUNGSORT | NVARCHAR2(40) | NULL |  |  |
| 8 | WKN_KURZBEZEICHNUNG | NVARCHAR2(100) | NULL |  |  |
| 9 | NOMINALE | NUMBER(19,2) | NULL |  |  |
| 10 | ALLOKATIONSART | NVARCHAR2(40) | NULL |  |  |
| 11 | TEILNEHMER_NR | NVARCHAR2(40) | NULL |  |  |
| 12 | KUNDENREFERENZ | NVARCHAR2(100) | NULL |  |  |
| 13 | KUNDE | NVARCHAR2(100) | NULL |  |  |
| 14 | FORDERUNGS_NR_SYSTEM | NUMBER(19,0) | NULL |  |  |
| 15 | EIGENE_FORDERUNGS_NR | NUMBER(19,0) | NULL |  |  |
| 16 | KONTRAHENT | NUMBER(19,0) | NULL |  |  |
| 17 | KUNDENREFERENZ_KONTRAHENT | NVARCHAR2(100) | NULL |  |  |
| 18 | KUNDE_KONTRAHENT | NVARCHAR2(100) | NULL |  |  |
| 19 | KURSWERT_REFERENZWHG | NUMBER(19,2) | NULL |  |  |
| 20 | SICHERHEITENWERT_REFERENZWHG | NUMBER(19,2) | NULL |  |  |
| 21 | FORDERUNGSWHG | NCHAR(6) | NULL |  |  |
| 22 | SICHERHEITENWERT_FORDERUNGSWHG | NUMBER(19,2) | NULL |  |  |

## CCP_CLAIM_AMOUNTL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_CLAIM_AMOUNTLID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | TEILNEHMER_NR | NUMBER(19,0) | NULL |  |  |
| 5 | FORDERUNGSWHG | NCHAR(6) | NULL |  |  |
| 6 | FORDERUNGSBETRAG | NUMBER(19,2) | NULL |  |  |
| 7 | SICHERHEITENWERT | NUMBER(19,2) | NULL |  |  |
| 8 | DECKUNGSGRAD | NUMBER(19,2) | NULL |  |  |
| 9 | GCP_BASKET | NVARCHAR2(40) | NULL |  |  |
| 10 | KONTRAHENT | NUMBER(19,0) | NULL |  |  |
| 11 | KUNDENREFERENZ_KONTRAHENT | NVARCHAR2(100) | NULL |  |  |
| 12 | KUNDE_KONTRAHENT | NVARCHAR2(100) | NULL |  |  |
| 13 | KUNDENREFERENZ | NVARCHAR2(100) | NULL |  |  |
| 14 | KUNDE | NVARCHAR2(100) | NULL |  |  |
| 15 | MFI_ID | NVARCHAR2(100) | NULL |  |  |
| 16 | EIGENE_FORDERUNGS_NR | NUMBER(19,0) | NULL |  |  |
| 17 | FORDERUNGS_NR_SYSTEM | NUMBER(19,0) | NULL |  |  |
| 18 | EIGENE_VERTRAGS_NR | NUMBER(19,0) | NULL |  |  |
| 19 | VERTRAGS_NR_SYSTEM | NUMBER(19,0) | NULL |  |  |
| 20 | EIGENER_STATUS | NVARCHAR2(40) | NULL |  |  |

## CCP_COLLATERAL_OVERVIEW

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_COLLATERAL_OVERVIEWID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | WKN | NVARCHAR2(40) | NULL |  |  |
| 5 | TYP | NVARCHAR2(40) | NULL |  |  |
| 6 | BASKET | NVARCHAR2(40) | NULL |  |  |
| 7 | ABWICKLUNGSORT | NVARCHAR2(40) | NULL |  |  |
| 8 | WKN_KURZBEZEICHNUNG | NVARCHAR2(100) | NULL |  |  |
| 9 | NOMINALE | NUMBER(19,2) | NULL |  |  |
| 10 | SICHERHEITENSTATUS | NVARCHAR2(60) | NULL |  |  |
| 11 | ALLOKATIONSART | NVARCHAR2(40) | NULL |  |  |
| 12 | TEILNEHMER_NR | NUMBER(19,0) | NULL |  |  |
| 13 | KUNDENREFERENZ | NVARCHAR2(100) | NULL |  |  |
| 14 | KUNDE | NVARCHAR2(100) | NULL |  |  |
| 15 | FORDERUNGS_NR_SYSTEM | NUMBER(19,0) | NULL |  |  |
| 16 | EIGENE_FORDERUNGS_NR | NUMBER(19,0) | NULL |  |  |
| 17 | KONTRAHENT | NUMBER(19,0) | NULL |  |  |
| 18 | KUNDENREFERENZ_KONTRAHENT | NVARCHAR2(100) | NULL |  |  |
| 19 | KUNDE_KONTRAHENT | NVARCHAR2(100) | NULL |  |  |
| 20 | KURSWERT_REFERENZWHG | NUMBER(19,2) | NULL |  |  |
| 21 | SICHERHEITENWERT_REFERENZWHG | NUMBER(19,2) | NULL |  |  |
| 22 | FORDERUNGSWHG | NCHAR(6) | NULL |  |  |
| 23 | SICHERHEITENWERT_FORDERUNGSWHG | NUMBER(19,2) | NULL |  |  |

## CCP_ELIGIBLE_SECURITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_ELIGIBLE_SECURITIESID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | ISIN_CODE | NVARCHAR2(40) | NULL |  |  |
| 5 | OTHER_REG_NUMBER | NVARCHAR2(40) | NULL |  |  |
| 6 | HAIRCUT_CATEGORY | NVARCHAR2(20) | NULL |  |  |
| 7 | EA_TYPE | NVARCHAR2(20) | NULL |  |  |
| 8 | REFERENCE_MARKET | NVARCHAR2(20) | NULL |  |  |
| 9 | DENOMINATION | NCHAR(6) | NULL |  |  |
| 10 | ISSUANCE_DATE | DATE | NULL |  |  |
| 11 | MATURITY_DATE | DATE | NULL |  |  |
| 12 | ISSUER_CSD | NVARCHAR2(20) | NULL |  |  |
| 13 | COUPON_RATE | NUMBER(19,6) | NULL |  |  |
| 14 | ISSUER_NAME | NVARCHAR2(400) | NULL |  |  |
| 15 | ISSUER_RESIDENCE | NVARCHAR2(20) | NULL |  |  |
| 16 | ISSUER_GROUP | NVARCHAR2(20) | NULL |  |  |
| 17 | GUARANTOR_NAME | NVARCHAR2(400) | NULL |  |  |
| 18 | GUARANTOR_RESIDENCE | NVARCHAR2(20) | NULL |  |  |
| 19 | GUARANTOR_GROUP | NVARCHAR2(20) | NULL |  |  |
| 20 | COUPON_DEFINITION | NVARCHAR2(20) | NULL |  |  |
| 21 | HAIRCUT | NUMBER(9,6) | NULL |  |  |
| 22 | HAIRCUT_OWN_USE | NUMBER(9,6) | NULL |  |  |
| 23 | POT_OWN_USABLE_COVERED_BOND | NCHAR(6) | NULL |  |  |

## CCP_ENX_DC21

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VERSION | NUMBER | NULL |  |  |
| 2 | CLEARINGMEMBER | NUMBER | NULL |  |  |
| 3 | MARGINTYPE | NUMBER | NULL |  |  |
| 4 | SEGMENT | NUMBER | NULL |  |  |
| 5 | COLLATERALACCOUNTID | NVARCHAR2(20) | NULL |  |  |
| 6 | INITIALMARGINAMOUNT | NUMBER | NULL |  |  |
| 7 | EXTRAORDINARYINITIALMARGIN | NUMBER | NULL |  |  |
| 8 | CLIENTBUFFERCASHEUR | NUMBER | NULL |  |  |
| 9 | OVERALLTOTALINITIALMARGIN | NUMBER | NULL |  |  |
| 10 | TOTALNCBGUARANTEE | NUMBER | NULL |  |  |
| 11 | ALLOCATEDNCBGUARANTEE | NUMBER | NULL |  |  |
| 12 | EXCESSNCBGUARANTEE | NUMBER | NULL |  |  |
| 13 | TOTALCASHAVAILABLEEUR | NUMBER | NULL |  |  |
| 14 | ALLOCATEDCASHEUR | NUMBER | NULL |  |  |
| 15 | EXCESSCASHEUR | NUMBER | NULL |  |  |
| 16 | CURRENCY | CHAR(3) | NULL |  |  |
| 17 | DEPOSITEDCURRENCYAMOUNTINCURRENCY | NUMBER | NULL |  |  |
| 18 | FXRATEAPPLIED | NUMBER | NULL |  |  |
| 19 | TOTALSECURITIESCOLLATERALAVAILABLEBEFORELIMITSEUR | NUMBER | NULL |  |  |
| 20 | TOTALSECURITIESCOLLATERALAVAILABLEAFTERLIMITSEUR | NUMBER | NULL |  |  |
| 21 | TOTALSECURITIESCOLLATERALALLOCATEDINEUR | NUMBER | NULL |  |  |
| 22 | TOTALSECURITIESEXCESSALLCOUNTRIESINEUR | NUMBER | NULL |  |  |
| 23 | ISSUANCECOUNTRY | CHAR(2) | NULL |  |  |
| 24 | ISIN | VARCHAR2(24) | NULL |  |  |
| 25 | PLACEOFDEPOSITORY | NUMBER | NULL |  |  |
| 26 | SECURITYDESCRIPTION | NVARCHAR2(200) | NULL |  |  |
| 27 | SECURITYMATURITYDATE | DATE | NULL |  |  |
| 28 | SECURITYFACEVALUEUNIT | VARCHAR2(10) | NULL |  |  |
| 29 | SECURITYDIRTYPRICE | NUMBER | NULL |  |  |
| 30 | SECURITYCLEANPRICE | NUMBER | NULL |  |  |
| 31 | SECURITYACCRUEDINTEREST | NUMBER | NULL |  |  |
| 32 | SECURITYHAIRCUT | NUMBER | NULL |  |  |
| 33 | CURRENCYISOCODE | CHAR(3) | NULL |  |  |
| 34 | FXRATEAPPLIEDEUR | NUMBER | NULL |  |  |
| 35 | SECURITYVALUATEDAMOUNTEUR | NUMBER | NULL |  |  |
| 36 | REASONFORISINTEMPORARYEXCLUSION | NUMBER | NULL |  |  |
| 37 | TOTALSECURITYCOLLATERALAVAILABLEBEFORECOUNTRYLIMITSEUR | NUMBER | NULL |  |  |
| 38 | TOTALMAXIMUMSECURITYCOLLATERALVALUEAFTERCOUNTRYLIMITSEUR | NUMBER | NULL |  |  |
| 39 | EXCESSFORTHECOUNTRYEUR | NUMBER | NULL |  |  |
| 40 | LASTUPDATEDATETIME | DATE | NULL |  |  |
| 41 | EXTRACTDATE | DATE | NULL |  |  |

## CCP_ENX_DC22

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VERSION | NUMBER | NULL |  |  |
| 2 | CLEARINGMEMBER | NUMBER | NULL |  |  |
| 3 | MARGINTYPE | NUMBER | NULL |  |  |
| 4 | SEGMENT | NUMBER | NULL |  |  |
| 5 | DEFAULTFUNDACCOUNTID | NVARCHAR2(20) | NULL |  |  |
| 6 | TOTALDEFAULTFUNDCONTRIBUTION | NUMBER | NULL |  |  |
| 7 | TOTALNCBGUARANTEEAVAILABLEFORDEFAULTFUND | NUMBER | NULL |  |  |
| 8 | ALLOCATEDNCBGUARANTEEFORDEFAULTFUND | NUMBER | NULL |  |  |
| 9 | EXCESSNCBGUARANTEEFORDEFAULTFUND | NUMBER | NULL |  |  |
| 10 | TOTALCASHEURAVAILABLEFORDEFAULTFUND | NUMBER | NULL |  |  |
| 11 | ALLOCATEDCASHFORDEFAULTFUND | NUMBER | NULL |  |  |
| 12 | EXCESSCASHEURFORDEFAULTFUND | NUMBER | NULL |  |  |
| 13 | LASTUPDATEDATETIME | DATE | NULL |  |  |
| 14 | EXTRACTDATE | DATE | NULL |  |  |
| 15 | REPORTDATE | DATE | NULL |  |  |

## CCP_ENX_DC31

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VERSION | NUMBER | NULL |  |  |
| 2 | CLEARINGMEMBER | NUMBER | NULL |  |  |
| 3 | MARGINTYPE | NUMBER | NULL |  |  |
| 4 | SEGMENT | NUMBER | NULL |  |  |
| 5 | COLLATERALACCOUNTID | NVARCHAR2(20) | NULL |  |  |
| 6 | INITIALMARGINAMOUNT | NUMBER | NULL |  |  |
| 7 | EXTRAORDINARYINITIALMARGIN | NUMBER | NULL |  |  |
| 8 | CLIENTBUFFERCASHEUR | NUMBER | NULL |  |  |
| 9 | OVERALLTOTALINITIALMARGIN | NUMBER | NULL |  |  |
| 10 | TOTALNCBGUARANTEE | NUMBER | NULL |  |  |
| 11 | ALLOCATEDNCBGUARANTEE | NUMBER | NULL |  |  |
| 12 | EXCESSNCBGUARANTEE | NUMBER | NULL |  |  |
| 13 | TOTALCASHAVAILABLEEUR | NUMBER | NULL |  |  |
| 14 | ALLOCATEDCASHEUR | NUMBER | NULL |  |  |
| 15 | EXCESSCASHEUR | NUMBER | NULL |  |  |
| 16 | CURRENCY | CHAR(3) | NULL |  |  |
| 17 | DEPOSITEDCURRENCYAMOUNTINCURRENCY | NUMBER | NULL |  |  |
| 18 | FXRATEAPPLIED | NUMBER | NULL |  |  |
| 19 | TOTALSECURITIESCOLLATERALAVAILABLEBEFORELIMITSEUR | NUMBER | NULL |  |  |
| 20 | TOTALSECURITIESCOLLATERALAVAILABLEAFTERLIMITSEUR | NUMBER | NULL |  |  |
| 21 | TOTALSECURITIESCOLLATERALALLOCATEDINEUR | NUMBER | NULL |  |  |
| 22 | TOTALSECURITIESEXCESSALLCOUNTRIESINEUR | NUMBER | NULL |  |  |
| 23 | ISSUANCECOUNTRY | CHAR(2) | NULL |  |  |
| 24 | ISIN | VARCHAR2(24) | NULL |  |  |
| 25 | PLACEOFDEPOSITORY | NUMBER | NULL |  |  |
| 26 | SECURITYDESCRIPTION | NVARCHAR2(200) | NULL |  |  |
| 27 | SECURITYMATURITYDATE | DATE | NULL |  |  |
| 28 | SECURITYFACEVALUEUNIT | VARCHAR2(10) | NULL |  |  |
| 29 | SECURITYFACEVALUE | NUMBER | NULL |  |  |
| 30 | SECURITYDIRTYPRICE | NUMBER | NULL |  |  |
| 31 | SECURITYCLEANPRICE | NUMBER | NULL |  |  |
| 32 | SECURITYACCRUEDINTEREST | NUMBER | NULL |  |  |
| 33 | SECURITYHAIRCUT | NUMBER | NULL |  |  |
| 34 | CURRENCYISOCODE | CHAR(3) | NULL |  |  |
| 35 | FXRATEAPPLIEDEUR | NUMBER | NULL |  |  |
| 36 | SECURITYVALUATEDAMOUNTEUR | NUMBER | NULL |  |  |
| 37 | SECURITYVALUATEDAMOUNTEURPREHAIRCUT | NUMBER | NULL |  |  |
| 38 | REASONFORISINTEMPORARYEXCLUSION | NUMBER | NULL |  |  |
| 39 | TOTALSECURITYCOLLATERALAVAILABLEBEFORECOUNTRYLIMITSEUR | NUMBER | NULL |  |  |
| 40 | TOTALMAXIMUMSECURITYCOLLATERALVALUEAFTERCOUNTRYLIMITSEUR | NUMBER | NULL |  |  |
| 41 | EXCESSFORTHECOUNTRYEUR | NUMBER | NULL |  |  |
| 42 | LASTUPDATEDATETIME | DATE | NULL |  |  |
| 43 | EXTRACTDATE | DATE | NULL |  |  |
| 44 | REPORTDATE | DATE | NULL |  |  |

## CCP_ENX_DF02

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VERSION | NUMBER | NULL |  |  |
| 2 | CLEARINGMEMBER | NUMBER | NULL |  |  |
| 3 | COLLATERALACCOUNTID | NVARCHAR2(20) | NULL |  |  |
| 4 | TOTALOFALLINITIALMARGINSCALCULATED | NUMBER | NULL |  |  |
| 5 | TOTALALLOCATEDSECURITIESCOLLATERALVALUE | NUMBER | NULL |  |  |
| 6 | NCBGUARANTEE | NUMBER | NULL |  |  |
| 7 | CASHCLIENTBUFFER | NUMBER | NULL |  |  |
| 8 | SUBTOTALINITIALMARGINCASHCALL | NUMBER | NULL |  |  |
| 9 | NCBGUARANTEEFEE | NUMBER | NULL |  |  |
| 10 | SECURITIESMANAGEMENTFEE | NUMBER | NULL |  |  |
| 11 | SECURITIESMOVEMENTFEE | NUMBER | NULL |  |  |
| 12 | SECURITIESCOLLATERALCOUPONPAYMENT | NUMBER | NULL |  |  |
| 13 | CASHEURINTERESTRETURN | NUMBER | NULL |  |  |
| 14 | DEFAULTFUNDCALL | NUMBER | NULL |  |  |
| 15 | NCBGUARANTEEFEEFORDEFAULTFUND | NUMBER | NULL |  |  |
| 16 | EXCESSCASHEURCOLLATERALGUARANTEES | NUMBER | NULL |  |  |
| 17 | CASHCALLCOLLATERAL | NUMBER | NULL |  |  |
| 18 | LASTUPDATEDATETIME | DATE | NULL |  |  |
| 19 | EXTRACTDATE | DATE | NULL |  |  |
| 20 | MOVEMENTCREATED | DATE | NULL |  |  |

## CCP_ENX_DF22

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VERSION | NUMBER | NULL |  |  |
| 2 | CLEARINGMEMBER | NUMBER | NULL |  |  |
| 3 | COLLATERALACCOUNTID | NVARCHAR2(20) | NULL |  |  |
| 4 | CURRENCY | CHAR(3) | NULL |  |  |
| 5 | INITIALMARGINCASHCALL | NUMBER | NULL |  |  |
| 6 | DELIVERYINITIALMARGIN | NUMBER | NULL |  |  |
| 7 | PREMIUMINCURRENCY | NUMBER | NULL |  |  |
| 8 | VARIATIONMARGININCURRENCY | NUMBER | NULL |  |  |
| 9 | CASHSETTLEMENTAMOUNTINCURRENCY | NUMBER | NULL |  |  |
| 10 | EQUALISATIONPAYMENTSINCURRENCY | NUMBER | NULL |  |  |
| 11 | DERIVATIVESCORPORATEACTIONCASHADJUSTMENTINCURRENCY | NUMBER | NULL |  |  |
| 12 | NCBGUARANTEEFEE | NUMBER | NULL |  |  |
| 13 | SECURITIESMANAGEMENTFEE | NUMBER | NULL |  |  |
| 14 | SECURITIESMOVEMENTFEE | NUMBER | NULL |  |  |
| 15 | SECURITIESCOLLATERALCOUPONPAYMENTINCURRENCY | NUMBER | NULL |  |  |
| 16 | CASHINTERESTRETURNINITIALMARGININCURRENCY | NUMBER | NULL |  |  |
| 17 | DEFAULTFUNDCALL | NUMBER | NULL |  |  |
| 18 | NCBGUARANTEEFEEFORDEFAULTFUND | NUMBER | NULL |  |  |
| 19 | CASHINTERESTRETURNDEFAULTFUND | NUMBER | NULL |  |  |
| 20 | CASHCALLCOLLATERALINCURRENCY | NUMBER | NULL |  |  |
| 21 | LASTUPDATEDATETIME | DATE | NULL |  |  |
| 22 | EXTRACTDATE | DATE | NULL |  |  |
| 23 | MOVEMENTCREATED | DATE | NULL |  |  |
| 24 | REPORTDATE | DATE | NULL |  |  |

## CCP_ENX_DM02

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VERSION | NUMBER | NULL |  |  |
| 2 | CLEARINGMEMBER | NUMBER | NULL |  |  |
| 3 | SEGMENT | NUMBER | NULL |  |  |
| 4 | MARGINACCOUNTID | NVARCHAR2(20) | NULL |  |  |
| 5 | COLLATERALACCOUNTID | NVARCHAR2(20) | NULL |  |  |
| 6 | STATUSINDICATOR | NVARCHAR2(20) | NULL |  |  |
| 7 | MTMEUR | NUMBER | NULL |  |  |
| 8 | DIVERSIFIEDEXPECTEDSHORTFALL | NUMBER | NULL |  |  |
| 9 | DIVERSIFIEDSTRESSEDEXPECTEDSHORTFALL | NUMBER | NULL |  |  |
| 10 | UNDIVERSIFIEDEXPECTEDSHORTFALL | NUMBER | NULL |  |  |
| 11 | UNDIVERSIFIEDSTRESSEDEXPECTEDSHORTFALL | NUMBER | NULL |  |  |
| 12 | DECORRELATIONADDON | NUMBER | NULL |  |  |
| 13 | STRESSEDDECORRELATIONADDON | NUMBER | NULL |  |  |
| 14 | CONCENTRATIONADDON | NUMBER | NULL |  |  |
| 15 | LIQUIDITYADDON | NUMBER | NULL |  |  |
| 16 | WRONGWAYRISKADDON | NUMBER | NULL |  |  |
| 17 | SETTLEMENTADDON | NUMBER | NULL |  |  |
| 18 | INITIALMARGIN | NUMBER | NULL |  |  |
| 19 | DAILYSTRESSADDON | NUMBER | NULL |  |  |
| 20 | MONTHLYSTRESSADDON | NUMBER | NULL |  |  |
| 21 | TOTALMARGINS | NUMBER | NULL |  |  |
| 22 | LASTUPDATEDATETIME | DATE | NULL |  |  |
| 23 | EXTRACTDATE | DATE | NULL |  |  |
| 24 | REPORTDATE | DATE | NULL |  |  |

## CCP_ENX_DM06

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VERSION | NUMBER | NULL |  |  |
| 2 | CLEARINGMEMBER | NUMBER | NULL |  |  |
| 3 | MARGINACCOUNTID | NVARCHAR2(20) | NULL |  |  |
| 4 | COLLATERALACCOUNTID | NVARCHAR2(20) | NULL |  |  |
| 5 | MARKTOMARKETMARGINSEUR | NUMBER | NULL |  |  |
| 6 | INITIALMARGINS | NUMBER | NULL |  |  |
| 7 | CLOSETODELIVERYINITIALMARGINS | NUMBER | NULL |  |  |
| 8 | DELIVERYINITIALMARGINS | NUMBER | NULL |  |  |
| 9 | LIQUIDITYADDON | NUMBER | NULL |  |  |
| 10 | CONCENTRATIONADDON | NUMBER | NULL |  |  |
| 11 | SETTLEMENTADDON | NUMBER | NULL |  |  |
| 12 | DAILYSTRESSADDON | NUMBER | NULL |  |  |
| 13 | MONTHLYSTRESSADDON | NUMBER | NULL |  |  |
| 14 | TOTALMARGINS | NUMBER | NULL |  |  |
| 15 | LASTUPDATEDATETIME | DATE | NULL |  |  |
| 16 | EXTRACTDATE | DATE | NULL |  |  |
| 17 | REPORTDATE | DATE | NULL |  |  |

## CCP_ESG_KONTO

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_ESG_KONTOID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | KONTONUMMER | NVARCHAR2(40) | NOT NULL |  |  |
| 4 | WAEHRUNG | NVARCHAR2(6) | NOT NULL |  |  |
| 5 | SALDO_EUR | NUMBER(19,2) | NULL |  |  |
| 6 | KURS | NUMBER(19,6) | NULL |  |  |
| 7 | KTOTYP | NVARCHAR2(12) | NULL |  |  |
| 8 | BETREUER | NVARCHAR2(12) | NULL |  |  |
| 9 | SALDO_FW | NUMBER(19,2) | NULL |  |  |
| 10 | COBDATE | DATE | NULL |  |  |

## CCP_EUREX_DEF

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_EUREX_DEFID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MGNCLSIDCOD | NVARCHAR2(20) | NOT NULL |  |  |
| 3 | MGNCLSCOD | NVARCHAR2(20) | NOT NULL |  |  |

## CCP_EXPORT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_EXPORTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | ISIN | NVARCHAR2(40) | NULL |  |  |
| 5 | BEZEICHNUNG | NVARCHAR2(100) | NULL |  |  |
| 6 | NOMINALE | NUMBER(19,2) | NULL |  |  |
| 7 | LAGERSTELLE_NR | NVARCHAR2(40) | NULL |  |  |
| 8 | LAGERSTELLE | NVARCHAR2(200) | NULL |  |  |
| 9 | EINREICHUNGSWEG | NVARCHAR2(160) | NULL |  |  |
| 10 | BELEIHUNGSWERT | NUMBER(19,0) | NULL |  |  |
| 11 | WHG | NCHAR(6) | NULL |  |  |

## CCP_EZB_TENDER_REPORT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_EZB_TENDER_REPORTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | WERTPAPIERID | NVARCHAR2(40) | NULL |  |  |
| 5 | WKN | NVARCHAR2(40) | NULL |  |  |
| 6 | LANGBEZEICHNUNG | NVARCHAR2(200) | NULL |  |  |
| 7 | NOSTRO799504 | NUMBER(19,2) | NULL |  |  |
| 8 | NOSTRO799385 | NUMBER(19,2) | NULL |  |  |
| 9 | NETTING | NUMBER(19,2) | NULL |  |  |
| 10 | CMAX | NVARCHAR2(100) | NULL |  |  |
| 11 | SAMEDAY | NCHAR(2) | NULL |  |  |
| 12 | DOMESTIC | NCHAR(2) | NULL |  |  |
| 13 | STREIFBAND | NCHAR(2) | NULL |  |  |
| 14 | EURO | NCHAR(2) | NULL |  |  |
| 15 | VALUTA | DATE | NULL |  |  |

## CCP_HISTORICAL_INSTRUCTION

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_HISTORICAL_INSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | TEILNEHMER_NR | NVARCHAR2(40) | NULL |  |  |
| 5 | KUNDENREFERENZ | NVARCHAR2(100) | NULL |  |  |
| 6 | AUFTRAGSART | NVARCHAR2(40) | NULL |  |  |
| 7 | WKN | NVARCHAR2(40) | NULL |  |  |
| 8 | ABWICKLUNGSORT | NVARCHAR2(40) | NULL |  |  |
| 9 | LAST_KONTO | NVARCHAR2(40) | NULL |  |  |
| 10 | GUT_KONTO | NVARCHAR2(40) | NULL |  |  |
| 11 | WKN_KURZBEZEICHNUNG | NVARCHAR2(100) | NULL |  |  |
| 12 | NOMINALE | NUMBER(19,2) | NULL |  |  |
| 13 | AUFTRAGS_NR | NUMBER(19,0) | NULL |  |  |
| 14 | AUFTRAGSSTATUS | NVARCHAR2(100) | NULL |  |  |
| 15 | KOMMENTAR | NVARCHAR2(100) | NULL |  |  |
| 16 | DATUM_ERFASSUNG | DATE | NULL |  |  |
| 17 | ABWICKLUNGSDATUM | DATE | NULL |  |  |

## CCP_HKEX_GFRECALCRESULT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_HKEX_GFRECALCRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NULL |  |  |
| 4 | MEMBER | NVARCHAR2(60) | NULL |  |  |
| 5 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 6 | GFREQUIREMENT | NUMBER(19,2) | NULL |  |  |
| 7 | VALUEDATE | DATE | NULL |  |  |
| 8 | CURRENTGFBALANCE | NUMBER(19,2) | NULL |  |  |
| 9 | MINADDCOLLREQUIRED | NUMBER(19,2) | NULL |  |  |
| 10 | EXCESS | NUMBER(19,2) | NULL |  |  |

## CCP_HKEX_GUARANTEEFUND

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_HKEX_GUARANTEEFUNDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NULL |  |  |
| 4 | MEMBER | NVARCHAR2(60) | NULL |  |  |
| 5 | TYPE | NVARCHAR2(60) | NULL |  |  |
| 6 | DESCRIPTION | NVARCHAR2(60) | NULL |  |  |
| 7 | NOMINAL | NUMBER(19,2) | NULL |  |  |
| 8 | CLEANPRICE | NUMBER(19,2) | NULL |  |  |
| 9 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 10 | VALUE | NUMBER(19,2) | NULL |  |  |
| 11 | HAIRCUT | NUMBER(19,2) | NULL |  |  |
| 12 | ALLINVALUE | NUMBER(19,2) | NULL |  |  |
| 13 | FXRATE | NUMBER(19,2) | NULL |  |  |
| 14 | CONTRACTVALUE | NUMBER(19,2) | NULL |  |  |
| 15 | NEXTCOUPONDATE | DATE | NULL |  |  |

## CCP_HKEX_IMCALLAMT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_HKEX_IMCALLAMTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NULL |  |  |
| 4 | MEMBER | NVARCHAR2(60) | NULL |  |  |
| 5 | MEMBERCLIENTACCOUNT | NVARCHAR2(60) | NULL |  |  |
| 6 | AGGREGCOLLATERALSINHKD | NUMBER(19,2) | NULL |  |  |
| 7 | INITIALMARGIN | NUMBER(19,2) | NULL |  |  |
| 8 | IMCALLAMOUNT | NUMBER(19,2) | NULL |  |  |

## CCP_HKEX_MONEYSETTLE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_HKEX_MONEYSETTLEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NULL |  |  |
| 4 | MEMBERID | NVARCHAR2(60) | NULL |  |  |
| 5 | ORIGIN | NVARCHAR2(60) | NULL |  |  |
| 6 | CCPTRADEID | NVARCHAR2(60) | NULL |  |  |
| 7 | PAYMENTTYPE | NVARCHAR2(60) | NULL |  |  |
| 8 | PAYMENTSUBTYPE | NVARCHAR2(60) | NULL |  |  |
| 9 | CCPPAYREC | NVARCHAR2(60) | NULL |  |  |
| 10 | VALUEDATE | DATE | NULL |  |  |
| 11 | EXPECTEDSETTLEDATE | DATE | NULL |  |  |
| 12 | CCYPAIR | NVARCHAR2(14) | NULL |  |  |
| 13 | SETTLECURRENCY | NVARCHAR2(6) | NULL |  |  |
| 14 | TRANSFERAMOUNT | NUMBER(19,2) | NULL |  |  |
| 15 | SETTLEMETHOD | NVARCHAR2(60) | NULL |  |  |
| 16 | SPLITID | NVARCHAR2(60) | NULL |  |  |

## CCP_HKEX_MONTHLYFEES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_HKEX_MONTHLYFEESID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NULL |  |  |
| 4 | MEMBERID | NVARCHAR2(60) | NULL |  |  |
| 5 | ORIGIN | NVARCHAR2(60) | NULL |  |  |
| 6 | TRADEID | NVARCHAR2(60) | NULL |  |  |
| 7 | FEETYPE | NVARCHAR2(60) | NULL |  |  |
| 8 | FEEAPPLIEDDATE | DATE | NULL |  |  |
| 9 | CCPPAYREC | NVARCHAR2(60) | NULL |  |  |
| 10 | FEECURRENCY | NVARCHAR2(6) | NULL |  |  |
| 11 | FEEAMOUNT | NUMBER(19,2) | NULL |  |  |
| 12 | REMARK | NVARCHAR2(100) | NULL |  |  |
| 13 | REMARK2 | NVARCHAR2(100) | NULL |  |  |

## CCP_HKEX_VMBALANCE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_HKEX_VMBALANCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NULL |  |  |
| 4 | MEMBERCLIENTID | NVARCHAR2(60) | NULL |  |  |
| 5 | ORIGIN | NVARCHAR2(60) | NULL |  |  |
| 6 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 7 | AMOUNT | NUMBER(19,2) | NULL |  |  |

## CCP_ISIN_LOT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_ISIN_LOTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | ISIN | NVARCHAR2(40) | NULL |  |  |
| 4 | MIN_PIECE | NUMBER(19,0) | NULL |  |  |
| 5 | MIN_INCREMENT | NUMBER(19,0) | NULL |  |  |
| 6 | MTG_FACTOR_SET_DT | NUMBER(19,9) | NULL |  |  |
| 7 | MTG_PREV_FACTOR | NUMBER(19,9) | NULL |  |  |

## CCP_LMECCODAR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_LMECCODARID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NOT NULL |  |  |
| 4 | COLLATERALACCOUNT | NVARCHAR2(60) | NULL |  |  |
| 5 | ACCOUNT | NVARCHAR2(60) | NULL |  |  |
| 6 | COLLATERALGROUP | NVARCHAR2(60) | NULL |  |  |
| 7 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 8 | CUSTODIAN | NVARCHAR2(60) | NULL |  |  |
| 9 | CLOSINGPRICE | NUMBER(19,2) | NULL |  |  |
| 10 | QUANTITY | NUMBER(19,2) | NULL |  |  |
| 11 | WITHDRAWALDEPOSIT | NVARCHAR2(60) | NULL |  |  |
| 12 | VALUEDATE | DATE | NULL |  |  |
| 13 | TRANSACTIONSTATUS | NVARCHAR2(60) | NULL |  |  |
| 14 | EXPIRYDATE | DATE | NULL |  |  |
| 15 | ISIN | NVARCHAR2(60) | NULL |  |  |
| 16 | SUBTOTAL | NUMBER(19,2) | NULL |  |  |

## CCP_LMECCODSR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_LMECCODSRID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NOT NULL |  |  |
| 4 | ACCOUNT | NVARCHAR2(60) | NULL |  |  |
| 5 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 6 | COLLATERALACCOUNT | NVARCHAR2(60) | NULL |  |  |
| 7 | INITIALMARGINREQUIREMENTS | NUMBER(19,2) | NULL |  |  |
| 8 | VARIATIONMARGIN | NUMBER(19,2) | NULL |  |  |
| 9 | NLV | NUMBER(19,2) | NULL |  |  |
| 10 | ADDITIONALMARGIN | NUMBER(19,2) | NULL |  |  |
| 11 | CASHCOLLATERALFULL | NUMBER(19,2) | NULL |  |  |
| 12 | CASHCOLLATERALENCUMBERED | NUMBER(19,2) | NULL |  |  |
| 13 | NONCASHCOLLATERALFULL | NUMBER(19,2) | NULL |  |  |
| 14 | NONCASHCOLLATERALENCUMBERED | NUMBER(19,2) | NULL |  |  |
| 15 | SETTLEMENTREQUIREMENT | NUMBER(19,2) | NULL |  |  |
| 16 | EXCESSDEFICIT | NUMBER(19,2) | NULL |  |  |

## CCP_LMECFINAR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_LMECFINARID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NOT NULL |  |  |
| 4 | ACCOUNT | NVARCHAR2(60) | NULL |  |  |
| 5 | COLLATERALACCOUNT | NVARCHAR2(100) | NULL |  |  |
| 6 | VALUEDATE | DATE | NULL |  |  |
| 7 | UNDERLYING | NVARCHAR2(60) | NULL |  |  |
| 8 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 9 | TRANSACTIONTYPE | NVARCHAR2(100) | NULL |  |  |
| 10 | PROMPTDATE | DATE | NULL |  |  |
| 11 | NARRATIVE | NVARCHAR2(360) | NULL |  |  |
| 12 | STRIKE | NVARCHAR2(60) | NULL |  |  |
| 13 | PUT_CALL | NVARCHAR2(60) | NULL |  |  |
| 14 | CLEARINGREFERENCE | NVARCHAR2(60) | NULL |  |  |
| 15 | TRANSACTIONVALUE | NUMBER(19,2) | NULL |  |  |
| 16 | SUBTOTAL | NUMBER(19,2) | NULL |  |  |

## CCP_LMECMSUMR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_LMECMSUMRID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | ACCOUNT | NVARCHAR2(60) | NULL |  |  |
| 4 | REPORTDATE | DATE | NOT NULL |  |  |
| 5 | UNDERLYING | NVARCHAR2(60) | NOT NULL |  |  |
| 6 | INITIALMARGIN | NUMBER(19,2) | NULL |  |  |
| 7 | NLV | NUMBER(19,2) | NULL |  |  |
| 8 | CURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 9 | CONCENTADDITIONALMARGIN | NUMBER(19,2) | NULL |  |  |
| 10 | CREDITADDITIONALMARGIN | NUMBER(19,2) | NULL |  |  |
| 11 | DEFAULTADDITIONALMARGIN | NUMBER(19,2) | NULL |  |  |
| 12 | DISCRETADDITIONALMARGIN | NUMBER(19,2) | NULL |  |  |
| 13 | MARGINTOTALSPERUNDERLYING | NUMBER(19,2) | NULL |  |  |
| 14 | TOTALMARGINS | NUMBER(19,2) | NULL |  |  |

## CCP_LMECNCCBR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_LMECNCCBRID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COLLATERALACCOUNT | NVARCHAR2(100) | NULL |  |  |
| 4 | ACCOUNT | NVARCHAR2(60) | NULL |  |  |
| 5 | REPORTDATE | DATE | NOT NULL |  |  |
| 6 | COLLATERALGROUP | NVARCHAR2(60) | NULL |  |  |
| 7 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 8 | INSTRUMENTID | NVARCHAR2(40) | NULL |  |  |
| 9 | CUSTODIAN | NVARCHAR2(60) | NULL |  |  |
| 10 | CLOSINGPRICE | NUMBER(19,2) | NULL |  |  |
| 11 | NOMINALAMOUNT | NUMBER(19,2) | NULL |  |  |
| 12 | COVERVALUE | NUMBER(19,2) | NULL |  |  |
| 13 | UTILISEDCOLLATERAL | NUMBER(19,2) | NULL |  |  |
| 14 | FULLVALUECOLLATERAL | NUMBER(19,2) | NULL |  |  |
| 15 | EXPIRYDATE | DATE | NULL |  |  |
| 16 | HAIRCUTAPPLIED | NUMBER(19,2) | NULL |  |  |

## CCP_LMEUCBMCF

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_LMEUCBMCFID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NOT NULL |  |  |
| 4 | BUSINESS_DATE | DATE | NULL |  |  |
| 5 | FEE_TYPE | NVARCHAR2(60) | NULL |  |  |
| 6 | FEE_CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 7 | FEE_RATE | NUMBER(19,2) | NULL |  |  |
| 8 | FEE_TOTAL | NUMBER(19,2) | NULL |  |  |
| 9 | MEMBER | NVARCHAR2(60) | NULL |  |  |
| 10 | COLLATERAL_VALUE | NUMBER(19,2) | NULL |  |  |
| 11 | FX_RATE | NUMBER(19,2) | NULL |  |  |
| 12 | FX_RATE_CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 13 | VALUEDATE | DATE | NULL |  |  |
| 14 | ISMOVEMENTCREATED | NUMBER(1,0) | NULL |  |  |
| 15 | FEE_NAME | NVARCHAR2(100) | NULL |  |  |

## CCP_LMEUCBMDF

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_LMEUCBMDFID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NOT NULL |  |  |
| 4 | MEMBER | NVARCHAR2(60) | NULL |  |  |
| 5 | ACCOUNT | NVARCHAR2(60) | NULL |  |  |
| 6 | ACCOUNT_TYPE | NVARCHAR2(60) | NULL |  |  |
| 7 | DEFAULT_FUND_ACCOUNT | NVARCHAR2(100) | NULL |  |  |
| 8 | CURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 9 | REQUIRED_MDF_CONTRIBUTION | NUMBER(19,2) | NULL |  |  |
| 10 | CURR_DEF_ACCOUNT_BALANCE | NUMBER(19,2) | NULL |  |  |
| 11 | ADJUSTMENT | NUMBER(19,2) | NULL |  |  |
| 12 | VALUEDATE | DATE | NULL |  |  |

## CCP_MANAGEMENTREPHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_MANAGEMENTREPHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NOT NULL |  |  |
| 4 | DIRECTION | NVARCHAR2(6) | NOT NULL |  |  |
| 5 | BUSINESS | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | COLLATERALMARGINTYPE | NVARCHAR2(60) | NOT NULL |  |  |
| 7 | CCY | NVARCHAR2(6) | NOT NULL |  |  |
| 8 | CASHCCY | NUMBER(19,2) | NULL |  |  |
| 9 | CASHEUR | NUMBER(19,2) | NULL |  |  |
| 10 | NONCASHCCY | NUMBER(19,2) | NULL |  |  |
| 11 | NONCASHEUR | NUMBER(19,2) | NULL |  |  |

## CCP_MARGINRENDER

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_MARGINRENDERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | TICKET | NVARCHAR2(40) | NULL |  |  |
| 5 | CPTY | NVARCHAR2(40) | NULL |  |  |
| 6 | SUBS | NVARCHAR2(40) | NULL |  |  |
| 7 | FOR_WHOM | NVARCHAR2(40) | NULL |  |  |
| 8 | SEC_ID | NVARCHAR2(100) | NULL |  |  |
| 9 | SECURITY | NVARCHAR2(100) | NULL |  |  |
| 10 | QUANTITY_CASH | NUMBER(19,2) | NULL |  |  |
| 11 | STARTDATE | DATE | NULL |  |  |
| 12 | ENDDATE | DATE | NULL |  |  |
| 13 | MARGIN_SUBSID_CURR | NUMBER(19,2) | NULL |  |  |
| 14 | MARGIN | NUMBER(19,2) | NULL |  |  |
| 15 | REM | NUMBER(19,2) | NULL |  |  |
| 16 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 17 | TRANS_TYPE | NVARCHAR2(40) | NULL |  |  |
| 18 | NETDPRICE | NUMBER(19,2) | NULL |  |  |
| 19 | TRD_PRICE | NUMBER(19,2) | NULL |  |  |
| 20 | MKT_PRICE | NUMBER(19,2) | NULL |  |  |
| 21 | HAIRCUT | NUMBER(9,6) | NULL |  |  |
| 22 | VARIANCE | NUMBER(19,2) | NULL |  |  |
| 23 | REQUIRED_COLLATERAL | NUMBER(19,2) | NULL |  |  |
| 24 | NETTINGGROUP | NVARCHAR2(100) | NULL |  |  |
| 25 | ACCRUED_INT | NUMBER(19,2) | NULL |  |  |
| 26 | RATE_SPREAD | NVARCHAR2(40) | NULL |  |  |
| 27 | CASH_COLL | NVARCHAR2(40) | NULL |  |  |
| 28 | RATING_CUSTOM | NVARCHAR2(40) | NULL |  |  |
| 29 | MARGIN_CURR | NUMBER(19,2) | NULL |  |  |
| 30 | SETT_FAR | NUMBER(19,2) | NULL |  |  |
| 31 | SETT_NEAR | NUMBER(19,2) | NULL |  |  |
| 32 | PRINCIPAL | NUMBER(19,2) | NULL |  |  |
| 33 | PREVAILING_FX | NUMBER(19,2) | NULL |  |  |
| 34 | MARKET_VALUE | NUMBER(19,2) | NULL |  |  |
| 35 | P_AND_I | NUMBER(19,2) | NULL |  |  |
| 36 | POOL_FAC | NUMBER(19,8) | NULL |  |  |
| 37 | CPTY_NAME | NVARCHAR2(200) | NULL |  |  |

## CCP_MBCAA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_MBCAAID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | BUSINESS_DATE | DATE | NOT NULL |  |  |
| 4 | RUN_DATE | DATE | NOT NULL |  |  |
| 5 | CM_MNEMONIC | NVARCHAR2(20) | NOT NULL |  |  |
| 6 | CM_NAME | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | ACCOUNT | NVARCHAR2(20) | NOT NULL |  |  |
| 8 | CURRENCY_CODE | NVARCHAR2(6) | NOT NULL |  |  |
| 9 | POSTING_TYPE | NVARCHAR2(20) | NULL |  |  |
| 10 | ANALYSIS_CODE | NVARCHAR2(100) | NULL |  |  |
| 11 | AMOUNT | NUMBER(19,2) | NULL |  |  |
| 12 | ITD_EOD | NVARCHAR2(20) | NULL |  |  |

## CCP_MBCC

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_MBCCID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | BUSINESS_DATE | DATE | NOT NULL |  |  |
| 4 | RUN_DATE | DATE | NOT NULL |  |  |
| 5 | CM_MNEMONIC | NVARCHAR2(20) | NOT NULL |  |  |
| 6 | CM_NAME | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | ACCOUNT | NVARCHAR2(20) | NOT NULL |  |  |
| 8 | CURRENCY_CODE | NVARCHAR2(6) | NOT NULL |  |  |
| 9 | ASSET_CLASS | NVARCHAR2(20) | NULL |  |  |
| 10 | TOTAL_VALUE | NUMBER(19,2) | NULL |  |  |
| 11 | UTILISED | NUMBER(19,2) | NULL |  |  |
| 12 | EXCESS_DEFICIENCY | NUMBER(19,2) | NULL |  |  |

## CCP_MBCOB

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_MBCOBID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | BUSINESS_DATE | DATE | NOT NULL |  |  |
| 4 | RUN_DATE | DATE | NOT NULL |  |  |
| 5 | CM_MNEMONIC | NVARCHAR2(20) | NOT NULL |  |  |
| 6 | CM_NAME | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | ACCOUNT | NVARCHAR2(20) | NOT NULL |  |  |
| 8 | CURRENCY_CODE | NVARCHAR2(6) | NOT NULL |  |  |
| 9 | DEPOSITORY_NAME | NVARCHAR2(100) | NULL |  |  |
| 10 | ASSET_TYPE | NVARCHAR2(60) | NULL |  |  |
| 11 | ASSET_TYPE_DESCR | NVARCHAR2(100) | NULL |  |  |
| 12 | SECURITY_ID | NVARCHAR2(40) | NULL |  |  |
| 13 | SECURITY_DESCR | NVARCHAR2(160) | NULL |  |  |
| 14 | AMOUNT | NUMBER(19,2) | NULL |  |  |
| 15 | ASSET_PRICE | NUMBER(19,4) | NULL |  |  |
| 16 | HAIRCUT_PERCENT | NUMBER(19,2) | NULL |  |  |
| 17 | ACCRUED_INTEREST_PERCENT | NUMBER(19,8) | NULL |  |  |
| 18 | COVER_VALUE | NUMBER(19,2) | NULL |  |  |
| 19 | MATURITY | DATE | NULL |  |  |
| 20 | CUSTODIAN | NVARCHAR2(100) | NULL |  |  |

## CCP_MBSR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_MBSRID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | BUSINESS_DATE | DATE | NOT NULL |  |  |
| 4 | RUN_DATE | DATE | NOT NULL |  |  |
| 5 | CM_MNEMONIC | NVARCHAR2(20) | NOT NULL |  |  |
| 6 | CM_NAME | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | ACCOUNT | NVARCHAR2(20) | NOT NULL |  |  |
| 8 | CURRENCY_CODE | NVARCHAR2(6) | NOT NULL |  |  |
| 9 | REQ_TYPE | NVARCHAR2(40) | NULL |  |  |
| 10 | ANALYSIS_CODE | NVARCHAR2(200) | NULL |  |  |
| 11 | AMOUNT | NUMBER(19,2) | NULL |  |  |

## CCP_MFMS2

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_MFMS2ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | BUSINESS_DATE | DATE | NOT NULL |  |  |
| 4 | INVOICE_DATE | DATE | NOT NULL |  |  |
| 5 | PRODUCT_NAME | NVARCHAR2(60) | NOT NULL |  |  |
| 6 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 7 | AMOUNT | NUMBER(19,2) | NULL |  |  |
| 8 | ISMOVEMENTCREATED | NUMBER(1,0) | NULL |  |  |

## CCP_MLCOLLHOLD

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_MLCOLLHOLDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | STATEMENTDATE | DATE | NOT NULL |  |  |
| 4 | CUSTOMACCOUNTNO | NVARCHAR2(20) | NULL |  |  |
| 5 | FIRM | NVARCHAR2(20) | NULL |  |  |
| 6 | ACCOUNTNO | NVARCHAR2(20) | NULL |  |  |
| 7 | SETTLEMENTDATE | DATE | NULL |  |  |
| 8 | BUY | NUMBER(19,2) | NULL |  |  |
| 9 | SELL | NUMBER(19,2) | NULL |  |  |
| 10 | TRADEDESCRIPTIONLINE1 | NVARCHAR2(160) | NULL |  |  |
| 11 | TRADEDESCRIPTIONLINE2 | NVARCHAR2(160) | NULL |  |  |
| 12 | CUSIP | NVARCHAR2(20) | NULL |  |  |
| 13 | BONDMATURITYDATE | DATE | NULL |  |  |
| 14 | CLOSINGPRICE | NUMBER(19,2) | NULL |  |  |
| 15 | UNREALIZEDPL | NUMBER(19,2) | NULL |  |  |
| 16 | ATCCY | NVARCHAR2(6) | NULL |  |  |
| 17 | AT | NVARCHAR2(20) | NULL |  |  |
| 18 | STATEMENTDATEDV | DATE | NULL |  |  |
| 19 | RECID | NVARCHAR2(20) | NULL |  |  |
| 20 | TRANSACTIONTYPE | NVARCHAR2(20) | NULL |  |  |
| 21 | BS | NUMBER(19,2) | NULL |  |  |
| 22 | QUANTITY | NUMBER(19,2) | NULL |  |  |
| 23 | BONDMATURITYDATEDV | DATE | NULL |  |  |
| 24 | FIRMACCOUNTNO | NVARCHAR2(40) | NULL |  |  |
| 25 | ACCOUNTSHORTNAME | NVARCHAR2(60) | NULL |  |  |
| 26 | OFFICE | NVARCHAR2(20) | NULL |  |  |
| 27 | ACCOUNT | NVARCHAR2(20) | NULL |  |  |
| 28 | SUBACCOUNT | NVARCHAR2(20) | NULL |  |  |
| 29 | ACCOUNTNAME | NVARCHAR2(60) | NULL |  |  |
| 30 | CUSTOMACCOUNTNAME | NVARCHAR2(60) | NULL |  |  |
| 31 | MLTRACER | NVARCHAR2(60) | NULL |  |  |

## CCP_MLSECUFEE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_MLSECUFEEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | STATEMENTDATE | DATE | NOT NULL |  |  |
| 4 | TRADEDATE | DATE | NOT NULL |  |  |
| 5 | ACCOUNT | NVARCHAR2(60) | NULL |  |  |
| 6 | CUSTOMACCOUNTNAME | NVARCHAR2(60) | NULL |  |  |
| 7 | CCPNAME | NVARCHAR2(100) | NULL |  |  |
| 8 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 9 | IMCOVERED | NUMBER(19,2) | NULL |  |  |
| 10 | FEERATE | NUMBER(19,2) | NULL |  |  |
| 11 | SECUCHARGE | NUMBER(19,2) | NULL |  |  |
| 12 | COLLATERALTYPE | NVARCHAR2(60) | NULL |  |  |

## CCP_MTM_131

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_MTM_131ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | CLEARING_DATE | DATE | NOT NULL |  |  |
| 4 | CP_NUMBER | NVARCHAR2(20) | NOT NULL |  |  |
| 5 | SEGREGATION_TYPE | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | CURRENT_UU_FEE | NUMBER(19,2) | NULL |  |  |
| 7 | CURRENT_MTM_TOTAL | NUMBER(19,2) | NULL |  |  |
| 8 | PRIOR_MTM_TOTAL | NUMBER(19,2) | NULL |  |  |
| 9 | PRIOR_UU_FEE | NUMBER(19,2) | NULL |  |  |
| 10 | MTM_CHANGE_UU_FEE | NUMBER(19,2) | NULL |  |  |
| 11 | LONG_NOTIONAL | NUMBER(19,2) | NULL |  |  |
| 12 | SHORT_NOTIONAL | NUMBER(19,2) | NULL |  |  |
| 13 | CURRENCY | NVARCHAR2(6) | NOT NULL |  |  |

## CCP_REP00016

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00016ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | TRADESOURCEREFERENCE | NVARCHAR2(40) | NOT NULL |  |  |
| 5 | TRADEID | NVARCHAR2(40) | NOT NULL |  |  |
| 6 | ISDAYSHAPE | NVARCHAR2(4) | NOT NULL |  |  |
| 7 | ACCOUNTTYPE | NVARCHAR2(4) | NOT NULL |  |  |
| 8 | MEMBERID | NVARCHAR2(12) | NOT NULL |  |  |
| 9 | BONDCURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 10 | DEALERID | NVARCHAR2(40) | NOT NULL |  |  |
| 11 | MATURITYOFFIRSTCASHLEG | DATE | NULL |  |  |
| 12 | MATURITYOFSECONDCASHLEG | DATE | NULL |  |  |
| 13 | PAIDUE | NUMBER(19,2) | NULL |  |  |
| 14 | PAIRATE | NUMBER(19,3) | NULL |  |  |
| 15 | BONDNOMINAL | NUMBER(19,2) | NULL |  |  |
| 16 | TOTALCASHCALL | NUMBER(19,2) | NULL |  |  |
| 17 | VALUEOFFIRSTCASHLEG | NUMBER(19,2) | NULL |  |  |
| 18 | VALUEOFSECONDCASHLEG | NUMBER(19,2) | NULL |  |  |
| 19 | REQUIREDDELIVERYMARGIN | NUMBER(19,2) | NULL |  |  |
| 20 | VARIATIONMARGINCASHCALL | NUMBER(19,2) | NULL |  |  |
| 21 | REPORATEFORSECONDCASHLEG | NUMBER(19,6) | NULL |  |  |
| 22 | REQUIREDDELIVERYMARGINSM1 | NUMBER(19,2) | NULL |  |  |
| 23 | REQUIREDDELIVERYMARGINSM2 | NUMBER(19,2) | NULL |  |  |
| 24 | CALCULATEDDELIVERYMARGINSM1 | NUMBER(19,2) | NULL |  |  |
| 25 | CALCULATEDDELIVERYMARGINSM2 | NUMBER(19,2) | NULL |  |  |
| 26 | PREVIOUSVARIATIONMARGINBALANCE | NUMBER(19,2) | NULL |  |  |
| 27 | REQUIREDVARIATIONMARGINBALANCE | NUMBER(19,2) | NULL |  |  |
| 28 | REPORATEFORFIRSTCASHLEG | NUMBER(19,6) | NULL |  |  |
| 29 | BONDSHORTNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 30 | CURRENTWORKINGDAY | DATE | NOT NULL |  |  |
| 31 | RDNAME | NVARCHAR2(40) | NOT NULL |  |  |
| 32 | ISINCODE | NVARCHAR2(24) | NOT NULL |  |  |
| 33 | TRADESUBTYPE | NVARCHAR2(20) | NOT NULL |  |  |

## CCP_REP00016B

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00016BID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MBRMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | PARTY_A_SDMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | ACCOUNT | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | CURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 8 | CONSIDERATION | NUMBER(19,2) | NULL |  |  |
| 9 | COUPON | NUMBER(19,2) | NULL |  |  |
| 10 | DAILYCHANGEINNPV | NUMBER(19,2) | NULL |  |  |
| 11 | PRICEALIGNINT | NUMBER(19,2) | NULL |  |  |
| 12 | EXCHANGERATE | NUMBER(19,6) | NULL |  |  |
| 13 | INDEX_ | NVARCHAR2(40) | NULL |  |  |
| 14 | CLOSENPV | NUMBER(19,2) | NULL |  |  |
| 15 | PREVIOUSNPV | NUMBER(19,2) | NULL |  |  |
| 16 | PRICEALIGNINTRATE | NUMBER(19,7) | NULL |  |  |

## CCP_REP00019

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00019ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | SCMMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | SCMNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | ACCOUNT | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | CURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 8 | CASHCOVBALAMT | NUMBER(19,2) | NULL |  |  |
| 9 | CASHCOVBALTOT | NUMBER(19,2) | NULL |  |  |
| 10 | LIABSHORTAGE | NUMBER(19,2) | NULL |  |  |
| 11 | LIABSHORTOTHERCCY | NVARCHAR2(20) | NULL |  |  |
| 12 | LIABSHORTOTHERTOT | NUMBER(19,2) | NULL |  |  |
| 13 | TOTALNETSHORTAGE | NUMBER(19,2) | NULL |  |  |
| 14 | PROTECTPAYIND | NVARCHAR2(20) | NULL |  |  |
| 15 | SCMOVER_LIAB_SEQUENCENUMBER | NUMBER(18,0) | NULL |  |  |
| 16 | LINETEXT | NVARCHAR2(100) | NULL |  |  |
| 17 | LIABCOVTYPE | NVARCHAR2(100) | NULL |  |  |
| 18 | LIABCOVOTHERCCY | NVARCHAR2(6) | NULL |  |  |
| 19 | LIABCOVAMT | NUMBER(19,2) | NULL |  |  |
| 20 | LIABCOVTOT | NUMBER(19,2) | NULL |  |  |
| 21 | SCMOVER_UNUTL_SEQUENCENUMBER | NUMBER(18,0) | NULL |  |  |
| 22 | SCMOVER_UNUTL_COVERTYPE | NVARCHAR2(60) | NULL |  |  |
| 23 | COVERCCY | NVARCHAR2(6) | NULL |  |  |
| 24 | SCMOVER_UNUTL_COVERAMT | NUMBER(19,2) | NULL |  |  |
| 25 | CONVCOVERAMT | NUMBER(19,2) | NULL |  |  |

## CCP_REP00022A

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00022AID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | SCMNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | SCMMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | ACCOUNT | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | CURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 8 | PAGE | NUMBER(19,0) | NULL |  |  |
| 9 | LINENUMBER | NUMBER(19,0) | NULL |  |  |
| 10 | POSTINGDESCRIPTION | NVARCHAR2(100) | NULL |  |  |
| 11 | COMMODITY | NVARCHAR2(20) | NULL |  |  |
| 12 | EXCHANGE | NVARCHAR2(20) | NULL |  |  |
| 13 | REFERENCE | NVARCHAR2(100) | NULL |  |  |
| 14 | VALUEDATE | DATE | NULL |  |  |
| 15 | POSTINGDATE | DATE | NULL |  |  |
| 16 | POSTINGDEBIT | NUMBER(19,2) | NULL |  |  |
| 17 | POSTINGCREDIT | NUMBER(19,2) | NULL |  |  |
| 18 | FIRSTBALANCE | NUMBER(19,2) | NULL |  |  |
| 19 | SECONDBALANCE | NUMBER(19,2) | NULL |  |  |

## CCP_REP00029

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00029ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | SCMMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | SCMNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | ACCOUNT | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | CURRENCY | NVARCHAR2(100) | NULL |  |  |
| 8 | EXCHANGE | NVARCHAR2(100) | NULL |  |  |
| 9 | POSTINGDESCRIPTION | NVARCHAR2(100) | NULL |  |  |
| 10 | VALUE_ | NUMBER(19,2) | NULL |  |  |

## CCP_REP00030

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00030ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | SCMMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | SCMNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | ACCOUNT | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | CURRENCY | NVARCHAR2(100) | NOT NULL |  |  |
| 8 | EXCHANGERATE | NUMBER(19,6) | NULL |  |  |
| 9 | TOTALLIABILITY | NUMBER(19,2) | NULL |  |  |
| 10 | CASHCOVER | NUMBER(19,2) | NULL |  |  |
| 11 | CASHCALL | NUMBER(19,2) | NULL |  |  |
| 12 | NEWCURRENCY | NVARCHAR2(20) | NULL |  |  |
| 13 | CONVCASHCALL | NUMBER(19,2) | NULL |  |  |
| 14 | CASHSPARE | NVARCHAR2(100) | NOT NULL |  |  |
| 15 | AUTOREPAY | NVARCHAR2(20) | NOT NULL |  |  |
| 16 | CONVERTEDCALL | NUMBER(19,2) | NULL |  |  |

## CCP_REP00031

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00031ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | SCMMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | SCMNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | ACCOUNT | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | CURRENCY | NVARCHAR2(100) | NOT NULL |  |  |
| 8 | EXCHANGERATE | NUMBER(19,6) | NULL |  |  |
| 9 | EXPOSUREAMOUNT | NUMBER(19,2) | NULL |  |  |
| 10 | APPLIEDSECURITIESCOLLVAL | NUMBER(19,2) | NULL |  |  |
| 11 | EXCESSSECURITIESCOLLVAL | NUMBER(19,2) | NULL |  |  |
| 12 | LIABILITYSHORTAGE | NUMBER(19,2) | NULL |  |  |
| 13 | CASHCALLAMOUNT | NUMBER(19,2) | NULL |  |  |
| 14 | CASHRETURNAMOUNT | NUMBER(19,2) | NULL |  |  |

## CCP_REP00033B

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00033BID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | SCMMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | SCMNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | PPSACCOUNT | NVARCHAR2(80) | NULL |  |  |
| 7 | ACCOUNT | NVARCHAR2(100) | NOT NULL |  |  |
| 8 | CURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 9 | REFERENCE | NVARCHAR2(100) | NULL |  |  |
| 10 | VALUEDATE | DATE | NULL |  |  |
| 11 | PPSPAY | NUMBER(19,2) | NULL |  |  |
| 12 | PPSCALL | NUMBER(19,7) | NULL |  |  |
| 13 | TIMESENT | NVARCHAR2(20) | NULL |  |  |
| 14 | LDG | NVARCHAR2(40) | NULL |  |  |
| 15 | SEQNO | NUMBER(2,0) | NOT NULL |  |  |
| 16 | IMPORTFILEDATETIME | DATE | NULL |  |  |
| 17 | MOVEMENTCREATED | DATE | NULL |  |  |

## CCP_REP00036

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00036ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | SCMMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | ACCOUNT | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | CURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 7 | ISIN | NVARCHAR2(60) | NULL |  |  |
| 8 | UNITS | NUMBER(19,2) | NULL |  |  |
| 9 | HAIRCUT | NUMBER(19,7) | NULL |  |  |
| 10 | PRICE | NUMBER(19,7) | NULL |  |  |
| 11 | COVER | NUMBER(19,2) | NULL |  |  |
| 12 | FACTOR | NUMBER(19,2) | NULL |  |  |
| 13 | EXPIRYDATE | DATE | NOT NULL |  |  |
| 14 | CUSTODIAN | NVARCHAR2(100) | NULL |  |  |
| 15 | COLLGROUP | NVARCHAR2(20) | NULL |  |  |
| 16 | ACCOUNTDESCRIPTION | NVARCHAR2(60) | NULL |  |  |

## CCP_REP00091

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00091ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MBRMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | SDMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | ACCOUNT | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | CURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 8 | NPVPREVIOUSCOB | NUMBER(19,6) | NULL |  |  |
| 9 | CURRENTNPV | NUMBER(19,2) | NULL |  |  |
| 10 | VM_CHANGE | NUMBER(19,2) | NULL |  |  |
| 11 | TRADELEVELPAI | NUMBER(19,2) | NULL |  |  |
| 12 | VMTRADECLASSIFICATION | NVARCHAR2(20) | NULL |  |  |
| 13 | PPSHOLIDAY | NVARCHAR2(100) | NULL |  |  |
| 14 | PARTY_B_MBRSHORTNAME | NVARCHAR2(30) | NULL |  |  |

## CCP_REP000ML

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP000MLID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | STATEMENTDATE | DATE | NOT NULL |  |  |
| 4 | CUSTOMACCOUNTNO | NVARCHAR2(40) | NULL |  |  |
| 5 | FIRM | NVARCHAR2(10) | NOT NULL |  |  |
| 6 | ACCOUNTNO | NVARCHAR2(20) | NOT NULL |  |  |
| 7 | ATCCY | NVARCHAR2(6) | NOT NULL |  |  |
| 8 | AT | NVARCHAR2(4) | NOT NULL |  |  |
| 9 | BEGINNINGBALANCE | NUMBER(19,2) | NULL |  |  |
| 10 | COMMISSION | NUMBER(19,2) | NULL |  |  |
| 11 | CLEARINGFEE | NUMBER(19,2) | NULL |  |  |
| 12 | EXCHANGEFEE | NUMBER(19,2) | NULL |  |  |
| 13 | GIVEINFEE | NUMBER(19,2) | NULL |  |  |
| 14 | NFAFEE | NUMBER(19,2) | NULL |  |  |
| 15 | ELECTRONICEXECUTIONFEE | NUMBER(19,2) | NULL |  |  |
| 16 | TRANSACTIONTAX | NUMBER(19,2) | NULL |  |  |
| 17 | BROKERAGE | NUMBER(19,2) | NULL |  |  |
| 18 | PSTRANSACTIONFEE | NUMBER(19,2) | NULL |  |  |
| 19 | TOTALFEES | NUMBER(19,2) | NULL |  |  |
| 20 | GROSSPL | NUMBER(19,2) | NULL |  |  |
| 21 | OPTIONPREMIUM | NUMBER(19,2) | NULL |  |  |
| 22 | NETPL | NUMBER(19,2) | NULL |  |  |
| 23 | CASHAMOUNTS | NUMBER(19,2) | NULL |  |  |
| 24 | ENDINGBALANCE | NUMBER(19,2) | NULL |  |  |
| 25 | NETMEMOOPTIONPREMIUM | NUMBER(19,2) | NULL |  |  |
| 26 | OPENTRADEEQUITY | NUMBER(19,2) | NULL |  |  |
| 27 | TOTALEQUITY | NUMBER(19,2) | NULL |  |  |
| 28 | NETOPTIONVALUE | NUMBER(19,2) | NULL |  |  |
| 29 | SPANADJUSTEDEQUITY | NUMBER(19,2) | NULL |  |  |
| 30 | SETTLEDMKTVALUE | NUMBER(19,2) | NULL |  |  |
| 31 | ACCOUNTVALUEATMARKET | NUMBER(19,2) | NULL |  |  |
| 32 | INITIALMARGINREQ | NUMBER(19,2) | NULL |  |  |
| 33 | MAINTENANCEMARGINREQ | NUMBER(19,2) | NULL |  |  |
| 34 | TOTALACCOUNTREQ | NUMBER(19,2) | NULL |  |  |
| 35 | MARGINVALUE | NUMBER(19,2) | NULL |  |  |
| 36 | WITHDRAWABLEFUNDS | NUMBER(19,2) | NULL |  |  |
| 37 | EXCESSCASHEQUITY | NUMBER(19,2) | NULL |  |  |
| 38 | MARGINEXCESSDEFICIT | NUMBER(19,2) | NULL |  |  |
| 39 | BASECCY | NVARCHAR2(6) | NOT NULL |  |  |
| 40 | CONVERSIONRATETOBASECCY | NUMBER(19,9) | NULL |  |  |
| 41 | CONVERTEDACCOUNTVALUE | NUMBER(19,9) | NULL |  |  |
| 42 | MARGINEXDEFCONVERTED | NUMBER(19,9) | NULL |  |  |
| 43 | LMEOTE | NUMBER(19,2) | NULL |  |  |
| 44 | LMEDISCVARIATIONMARGIN | NUMBER(19,2) | NULL |  |  |
| 45 | OTHERAMOUNTS | NUMBER(19,2) | NULL |  |  |
| 46 | STATEMENTDATE1 | DATE | NULL |  |  |
| 47 | RECID | NVARCHAR2(10) | NULL |  |  |
| 48 | FIRMACCOUNTNO | NVARCHAR2(20) | NULL |  |  |
| 49 | OFFICE | NVARCHAR2(20) | NULL |  |  |
| 50 | ACCOUNT | NVARCHAR2(40) | NULL |  |  |
| 51 | ACCOUNTNAME | NVARCHAR2(100) | NULL |  |  |
| 52 | ACCOUNTSHORTNAME | NVARCHAR2(100) | NULL |  |  |
| 53 | CUSTOMACCOUNTNAME | NVARCHAR2(100) | NULL |  |  |
| 54 | RELATEDFIRMNO1 | NVARCHAR2(20) | NULL |  |  |
| 55 | RELATEDOFFICENO1 | NVARCHAR2(20) | NULL |  |  |
| 56 | RELATEDACCTNO1 | NVARCHAR2(20) | NULL |  |  |
| 57 | CDSINITIALCOUPON | NUMBER(19,2) | NULL |  |  |
| 58 | CDSTRADEVARIATION | NUMBER(19,2) | NULL |  |  |
| 59 | TOTALCDSUPFRONTFEE | NUMBER(19,2) | NULL |  |  |
| 60 | CDSNETAMOUNT | NUMBER(19,2) | NULL |  |  |
| 61 | IRSCOUPON | NUMBER(19,2) | NULL |  |  |
| 62 | PRICEALIGNEDINTEREST | NUMBER(19,2) | NULL |  |  |
| 63 | MKTVALOFPOSITION | NUMBER(19,2) | NULL |  |  |

## CCP_REP000UBS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP000UBSID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | ACCOUNT | NVARCHAR2(40) | NOT NULL |  |  |
| 5 | CCY | NVARCHAR2(6) | NULL |  |  |
| 6 | COVERTYPE | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | INITIALMARGIN | NUMBER(19,2) | NULL |  |  |
| 8 | COLLATERALVALUE | NUMBER(19,2) | NULL |  |  |
| 9 | OVERUNDERCOLL | NVARCHAR2(80) | NOT NULL |  |  |
| 10 | COLLATERALEXCESSDEFICIT | NUMBER(19,2) | NULL |  |  |

## CCP_REP00102A

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00102AID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MBRID | NVARCHAR2(10) | NOT NULL |  |  |
| 5 | MBRNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | CODEID | NVARCHAR2(6) | NOT NULL |  |  |
| 7 | REQRDAMTCCY | NVARCHAR2(6) | NULL |  |  |
| 8 | REQRDAMT | NUMBER(19,2) | NULL |  |  |
| 9 | AMTCCY | NVARCHAR2(6) | NULL |  |  |
| 10 | AMT | NUMBER(19,2) | NULL |  |  |
| 11 | CDTDBTIND | NVARCHAR2(40) | NULL |  |  |

## CCP_REP00102B

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00102BID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MBRID | NVARCHAR2(10) | NOT NULL |  |  |
| 5 | MBRNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | MRGNACCTID | NVARCHAR2(40) | NOT NULL |  |  |
| 7 | MRGNACCTTP | NVARCHAR2(20) | NOT NULL |  |  |
| 8 | MRGNTP | NVARCHAR2(200) | NOT NULL |  |  |
| 9 | MRGNAMTCCY | NVARCHAR2(6) | NULL |  |  |
| 10 | MRGNAMT | NUMBER(19,2) | NULL |  |  |
| 11 | SHRTLNGIND | NVARCHAR2(20) | NULL |  |  |
| 12 | NONCLRMMBID | NVARCHAR2(20) | NULL |  |  |

## CCP_REP00102C

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00102CID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MBRID | NVARCHAR2(10) | NOT NULL |  |  |
| 5 | MBRNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | BKTXCD | NVARCHAR2(20) | NOT NULL |  |  |
| 7 | BKTXCDISSR | NVARCHAR2(6) | NOT NULL |  |  |
| 8 | TXID | NVARCHAR2(40) | NOT NULL |  |  |
| 9 | AMTCCY | NVARCHAR2(6) | NULL |  |  |
| 10 | AMT | NUMBER(19,2) | NULL |  |  |
| 11 | CDTDBTIND | NVARCHAR2(40) | NULL |  |  |

## CCP_REP00103A

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00103AID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MBRID | NVARCHAR2(10) | NOT NULL |  |  |
| 5 | MBRNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | NTRYREF | NVARCHAR2(100) | NULL |  |  |
| 7 | VALUEDATE | DATE | NULL |  |  |
| 8 | TXID | NVARCHAR2(6) | NULL |  |  |
| 9 | AMTCCY | NVARCHAR2(6) | NULL |  |  |
| 10 | AMT | NUMBER(19,2) | NULL |  |  |
| 11 | CDTDBTIND | NVARCHAR2(40) | NULL |  |  |
| 12 | SEQNO | NUMBER(2,0) | NOT NULL |  |  |
| 13 | REPORTTYPE | NUMBER(2,0) | NOT NULL |  |  |
| 14 | MOVEMENTCREATED | DATE | NULL |  |  |

## CCP_REP00106E

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00106EID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MBRID | NVARCHAR2(10) | NOT NULL |  |  |
| 5 | MBRNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | MARKETID | NVARCHAR2(6) | NULL |  |  |
| 7 | COLTYP | NVARCHAR2(20) | NULL |  |  |
| 8 | SUBACCT | NVARCHAR2(40) | NULL |  |  |
| 9 | SEC | NVARCHAR2(20) | NULL |  |  |
| 10 | VALUEDATE | DATE | NULL |  |  |
| 11 | AMTCCY | NVARCHAR2(6) | NULL |  |  |
| 12 | AMT | NUMBER(19,2) | NULL |  |  |
| 13 | CDTDBTIND | NVARCHAR2(40) | NULL |  |  |
| 14 | REPORTTYPE | NUMBER(2,0) | NOT NULL |  |  |
| 15 | ISMOVEMENTCREATED | NUMBER(1,0) | NULL |  |  |

## CCP_REP00110A

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00110AID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MBRID | NVARCHAR2(10) | NOT NULL |  |  |
| 5 | MBRNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | COLLACCTID | NVARCHAR2(20) | NOT NULL |  |  |
| 7 | COLLACCTTP | NVARCHAR2(20) | NOT NULL |  |  |
| 8 | XPSRTP | NVARCHAR2(40) | NOT NULL |  |  |
| 9 | XPSDAMTPTYBCCY | NVARCHAR2(6) | NULL |  |  |
| 10 | XPSDAMTPTYB | NUMBER(19,2) | NULL |  |  |
| 11 | TTLVALOFCOLLCCY | NVARCHAR2(6) | NULL |  |  |
| 12 | TTLVALOFCOLL | NUMBER(19,2) | NULL |  |  |
| 13 | NETXCSSDFCITCCY | NVARCHAR2(6) | NULL |  |  |
| 14 | NETXCSSDFCIT | NUMBER(19,2) | NULL |  |  |
| 15 | COLLAMTCCY | NVARCHAR2(6) | NULL |  |  |
| 16 | COLLAMT | NUMBER(19,2) | NULL |  |  |
| 17 | COLLREF | NVARCHAR2(40) | NULL |  |  |

## CCP_REP00110ISIN

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00110ISINID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MBRID | NVARCHAR2(10) | NOT NULL |  |  |
| 5 | MBRNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | COLLACCTID | NVARCHAR2(20) | NOT NULL |  |  |
| 7 | COLLACCTTP | NVARCHAR2(20) | NOT NULL |  |  |
| 8 | ISIN | NVARCHAR2(24) | NOT NULL |  |  |
| 9 | TYPE | NVARCHAR2(20) | NULL |  |  |
| 10 | DEPTYPE | NVARCHAR2(20) | NULL |  |  |
| 11 | VALUEEURCCY | NVARCHAR2(6) | NULL |  |  |
| 12 | VALUEEUR | NUMBER(19,2) | NULL |  |  |
| 13 | AMTCCY | NVARCHAR2(6) | NULL |  |  |
| 14 | AMT | NUMBER(19,2) | NULL |  |  |
| 15 | RATE | NUMBER(19,6) | NULL |  |  |
| 16 | FXRATE | NUMBER(19,6) | NULL |  |  |
| 17 | HRCUT | NUMBER(19,6) | NULL |  |  |
| 18 | VALUEHAIRCUTCCY | NVARCHAR2(6) | NULL |  |  |
| 19 | VALUEHAIRCUT | NUMBER(19,2) | NULL |  |  |

## CCP_REP00305

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP00305ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | ITDREVALDATETIME | DATE | NOT NULL |  |  |
| 4 | MBRMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | SDMNEMONIC | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | ACCOUNT | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | CURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 8 | NPVADJUSTMENT | NUMBER(19,2) | NULL |  |  |

## CCP_REP0BNP1

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP0BNP1ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | ASOFDATE | DATE | NOT NULL |  |  |
| 4 | REPORTDATE | DATE | NOT NULL |  |  |
| 5 | CLEARINGBROKERNAME | NVARCHAR2(60) | NOT NULL |  |  |
| 6 | CLEARINGBROKERLEI | NVARCHAR2(60) | NOT NULL |  |  |
| 7 | ADVISORNAME | NVARCHAR2(60) | NULL |  |  |
| 8 | ADVISORLEI | NVARCHAR2(60) | NULL |  |  |
| 9 | CLIENTACCOUNTLEGALNAME | NVARCHAR2(68) | NOT NULL |  |  |
| 10 | CLIENTACCOUNTLEI | NVARCHAR2(60) | NOT NULL |  |  |
| 11 | CLIENTACCOUNTID | NVARCHAR2(60) | NULL |  |  |
| 12 | CLEARINGBROKERACCOUNTID | NVARCHAR2(40) | NOT NULL |  |  |
| 13 | SUBACCOUNTID | NVARCHAR2(40) | NULL |  |  |
| 14 | CLEARINGHOUSE | NVARCHAR2(60) | NOT NULL |  |  |
| 15 | CDS_TRADECURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 16 | VM_CHANGE_CB | NUMBER(19,2) | NULL |  |  |
| 17 | DAILY_PAI_AMOUNT | NUMBER(19,2) | NULL |  |  |

## CCP_REP0BNPAS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP0BNPASID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | ASOFDATE | DATE | NOT NULL |  |  |
| 4 | REPORTDATE | DATE | NOT NULL |  |  |
| 5 | CLEARINGBROKERNAME | NVARCHAR2(60) | NOT NULL |  |  |
| 6 | CLEARINGBROKERLEI | NVARCHAR2(60) | NOT NULL |  |  |
| 7 | ADVISORNAME | NVARCHAR2(60) | NULL |  |  |
| 8 | ADVISORLEI | NVARCHAR2(60) | NULL |  |  |
| 9 | CLIENTACCOUNTLEGALNAME | NVARCHAR2(68) | NOT NULL |  |  |
| 10 | CLIENTACCOUNTLEI | NVARCHAR2(60) | NOT NULL |  |  |
| 11 | CLIENTACCOUNTID | NVARCHAR2(60) | NULL |  |  |
| 12 | CLEARINGBROKERACCOUNTID | NVARCHAR2(40) | NOT NULL |  |  |
| 13 | SUBACCOUNTID | NVARCHAR2(40) | NULL |  |  |
| 14 | CLEARINGHOUSE | NVARCHAR2(60) | NOT NULL |  |  |
| 15 | ACCOUNT_LOCAL_CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 16 | TOTAL_IM_REQUIREMENT_CB | NUMBER(19,2) | NULL |  |  |
| 17 | MTM_DELTA_CB | NUMBER(19,2) | NULL |  |  |
| 18 | DAILY_PAI_AMOUNT | NUMBER(19,2) | NULL |  |  |
| 19 | TOTAL_IM_BALANCE_CASH_CB | NUMBER(19,2) | NULL |  |  |
| 20 | NET_TOTAL_INITIAL_MARGIN_CALL_CB | NUMBER(19,2) | NULL |  |  |

## CCP_REP0BNPE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP0BNPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | REPORTDATE | DATE | NOT NULL |  |  |
| 4 | TRADEREFERENCE | NVARCHAR2(80) | NOT NULL |  |  |
| 5 | CLIENTNAME | NVARCHAR2(60) | NOT NULL |  |  |
| 6 | CSANAME | NVARCHAR2(60) | NOT NULL |  |  |
| 7 | AGREEMENTCCY | NVARCHAR2(6) | NOT NULL |  |  |
| 8 | TRADETYPE | NVARCHAR2(60) | NULL |  |  |
| 9 | NOTIONALCCY | NVARCHAR2(6) | NULL |  |  |
| 10 | NOTIONAL | NUMBER(19,2) | NULL |  |  |
| 11 | TRADEDATE | DATE | NULL |  |  |
| 12 | EFFECTIVEDATE | DATE | NULL |  |  |
| 13 | MATURITYDATE | DATE | NULL |  |  |
| 14 | EXPOSURECCY | NVARCHAR2(6) | NULL |  |  |
| 15 | EXPOSUREAMOUNT | NUMBER(19,2) | NULL |  |  |
| 16 | EXPOSUREDATE | DATE | NULL |  |  |
| 17 | AGREEMENTCCYEXPOSUREAMOUNT | NUMBER(19,2) | NULL |  |  |
| 18 | LOCKUPMETHOD | NVARCHAR2(20) | NULL |  |  |
| 19 | LOCKUP | NUMBER(19,2) | NULL |  |  |
| 20 | LOCKUPCCY | NVARCHAR2(6) | NULL |  |  |
| 21 | LOCKUPAGREEMENTCURRENCY | NUMBER(19,2) | NULL |  |  |
| 22 | LOCKUPDUETO | NVARCHAR2(20) | NULL |  |  |
| 23 | COUNTERPARTYID | NVARCHAR2(20) | NULL |  |  |
| 24 | PRINCIPALID | NVARCHAR2(20) | NULL |  |  |

## CCP_REP0BNPH

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP0BNPHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | ASOFDATE | DATE | NOT NULL |  |  |
| 4 | REPORTDATE | DATE | NOT NULL |  |  |
| 5 | CLEARINGBROKERNAME | NVARCHAR2(60) | NOT NULL |  |  |
| 6 | CLEARINGBROKERLEI | NVARCHAR2(60) | NOT NULL |  |  |
| 7 | ADVISORNAME | NVARCHAR2(60) | NULL |  |  |
| 8 | ADVISORLEI | NVARCHAR2(60) | NULL |  |  |
| 9 | CLIENTACCOUNTLEGALNAME | NVARCHAR2(68) | NOT NULL |  |  |
| 10 | CLIENTACCOUNTLEI | NVARCHAR2(60) | NOT NULL |  |  |
| 11 | CLIENTACCOUNTID | NVARCHAR2(60) | NULL |  |  |
| 12 | CLEARINGBROKERACCOUNTID | NVARCHAR2(40) | NOT NULL |  |  |
| 13 | SUBACCOUNTID | NVARCHAR2(40) | NULL |  |  |
| 14 | CLEARINGHOUSE | NVARCHAR2(60) | NULL |  |  |
| 15 | ACCOUNTTYPE | NVARCHAR2(40) | NULL |  |  |
| 16 | COLLATERALCURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 17 | ACCOUNTBASECURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 18 | REPORTINGCURRENCY | NVARCHAR2(40) | NOT NULL |  |  |
| 19 | ACCOUNTCONVERSIONFXRATE | NUMBER(19,2) | NULL |  |  |
| 20 | CUSTODIANNAME | NVARCHAR2(60) | NULL |  |  |
| 21 | CUSTODIANLEI | NVARCHAR2(60) | NULL |  |  |
| 22 | COLLATERALDESIGNATION | NVARCHAR2(60) | NOT NULL |  |  |
| 23 | COLLATERALTYPE | NVARCHAR2(60) | NOT NULL |  |  |
| 24 | COLLATERALSECIDENTIFIERTYPE | NVARCHAR2(60) | NULL |  |  |
| 25 | COLLATERALSECIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 26 | SECONDARYCOLLSECIDENTIFIERTYPE | NVARCHAR2(60) | NULL |  |  |
| 27 | SECONDARYCOLLSECIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 28 | SECURITYDESCRIPTION | NVARCHAR2(60) | NULL |  |  |
| 29 | NOTIONALVALUE | NUMBER(19,2) | NULL |  |  |
| 30 | SETTLEMENTFLAG | CHAR(1) | NULL |  |  |
| 31 | COLLATERALSETTLEMENTDATE | DATE | NULL |  |  |
| 32 | COLLATERALPRICE | NUMBER(19,2) | NULL |  |  |
| 33 | COLLATERALMARKETVALUE | NUMBER(19,2) | NULL |  |  |
| 34 | FACTOR | NUMBER(19,2) | NULL |  |  |
| 35 | COLLATERALHAIRCUT | NUMBER(19,2) | NULL |  |  |
| 36 | POSTHAIRCUTCOLLATERALVALUE | NUMBER(19,2) | NULL |  |  |

## CCP_REP0WFML

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP0WFMLID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | ASOFDATE | DATE | NOT NULL |  |  |
| 4 | VALUE_DATE | DATE | NOT NULL |  |  |
| 5 | CPTY_ID | NVARCHAR2(60) | NOT NULL |  |  |
| 6 | COUNTERPARTY_NAME | NVARCHAR2(60) | NOT NULL |  |  |
| 7 | CCP_TYPE | NVARCHAR2(60) | NOT NULL |  |  |
| 8 | ACCOUNT_NUMBER | NVARCHAR2(60) | NOT NULL |  |  |
| 9 | CURRENCY_NAME | NVARCHAR2(10) | NOT NULL |  |  |
| 10 | PAI | NUMBER(19,2) | NULL |  |  |
| 11 | CLOSING_NPV | NUMBER(19,2) | NULL |  |  |
| 12 | NET_CASHFLOW | NUMBER(19,2) | NULL |  |  |
| 13 | CURRENT_IM | NUMBER(19,2) | NULL |  |  |

## CCP_REPBNPBILL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REPBNPBILLID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | INVOICE_NUMBER | NUMBER(19,0) | NOT NULL |  |  |
| 4 | FEE_DATE | DATE | NOT NULL |  |  |
| 5 | FEE_SOURCE_DISPLAY_NAME | NVARCHAR2(100) | NULL |  |  |
| 6 | FEE_CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 7 | FEE_AMOUNT | NUMBER(19,6) | NULL |  |  |
| 8 | FEE_TYPE_DISPLAY_NAME | NVARCHAR2(300) | NULL |  |  |
| 9 | INVOICE_CURRENCY1 | NVARCHAR2(6) | NULL |  |  |
| 10 | INVOICE_CURRENCY_RATE | NUMBER(19,6) | NULL |  |  |
| 11 | INVOICE_AMOUNT | NUMBER(19,6) | NULL |  |  |
| 12 | ISMOVEMENTCREATED | NUMBER(1,0) | NULL |  |  |
| 13 | VALUEDATE | DATE | NULL |  |  |

## CCP_REPCD042

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REPCD042ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | CLEARINGMEMBER | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 6 | POOLID | NVARCHAR2(40) | NOT NULL |  |  |
| 7 | CURR | NVARCHAR2(6) | NULL |  |  |
| 8 | REQUIREDMARGIN | NUMBER(19,2) | NULL |  |  |
| 9 | CASHCOLLAMNT | NUMBER(19,2) | NULL |  |  |
| 10 | ADJSECU | NUMBER(19,0) | NULL |  |  |
| 11 | ADJGUAR | NUMBER(19,0) | NULL |  |  |
| 12 | OVRUDRCURR | NUMBER(19,2) | NULL |  |  |
| 13 | ADJEXCHRATE | NUMBER(19,6) | NULL |  |  |
| 14 | OVRUDREUR | NUMBER(19,2) | NULL |  |  |

## CCP_REPDF15F

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REPDF15FID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MEMBER_ABI_CODE | NVARCHAR2(10) | NOT NULL |  |  |
| 5 | ACCT | NCHAR(2) | NOT NULL |  |  |
| 6 | SETTLEMENT_GROUP | NCHAR(8) | NOT NULL |  |  |
| 7 | POSITIONS_TYPE | NCHAR(2) | NOT NULL |  |  |
| 8 | INITIAL_MARGINS | NUMBER(19,2) | NULL |  |  |
| 9 | GENERAL_ABI_CODE | NCHAR(10) | NOT NULL |  |  |
| 10 | CURRENCY | NCHAR(6) | NOT NULL |  |  |

## CCP_REPDF28A

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REPDF28AID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | DEFAULT_FUND_CODE | NVARCHAR2(6) | NOT NULL |  |  |
| 5 | MEMBER_ABI_CODE | NVARCHAR2(10) | NOT NULL |  |  |
| 6 | DUE_AMOUNT | NUMBER(19,2) | NULL |  |  |
| 7 | GENERAL_ABI_CODE | NCHAR(10) | NOT NULL |  |  |
| 8 | CURRENCY | NCHAR(6) | NOT NULL |  |  |

## CCP_REPUBSFEE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REPUBSFEEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | ACCOUNT | NVARCHAR2(40) | NOT NULL |  |  |
| 5 | CCY | NVARCHAR2(6) | NULL |  |  |
| 6 | SUBJECT | NVARCHAR2(100) | NULL |  |  |
| 7 | AMOUNT | NUMBER(19,6) | NULL |  |  |
| 8 | VALUEDATE | DATE | NULL |  |  |
| 9 | ISMOVEMENTCREATED | NUMBER(1,0) | NULL |  |  |

## CCP_REPUBS_BC

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REPUBS_BCID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | ACCOUNT | NVARCHAR2(40) | NOT NULL |  |  |
| 5 | RUN_DATE | DATE | NOT NULL |  |  |
| 6 | CCY | NVARCHAR2(6) | NULL |  |  |
| 7 | CASH | NUMBER(19,2) | NULL |  |  |
| 8 | FORWARD_CASH | NUMBER(19,2) | NULL |  |  |
| 9 | FUTURE_VARIATION_MARGIN | NUMBER(19,2) | NULL |  |  |
| 10 | OPTION_VARIATION_MARGIN | NUMBER(19,2) | NULL |  |  |
| 11 | TOTAL_EQUITY | NUMBER(19,2) | NULL |  |  |
| 12 | TOTAL_EQUITY_INC_FWD_CASH | NUMBER(19,2) | NULL |  |  |
| 13 | LONG_OPTION_VALUATION | NUMBER(19,2) | NULL |  |  |
| 14 | SHORT_OPTION_VALUATION | NUMBER(19,2) | NULL |  |  |
| 15 | GROSS_INITIAL_MARGIN | NUMBER(19,2) | NULL |  |  |
| 16 | INITIAL_MARGIN | NUMBER(19,2) | NULL |  |  |
| 17 | COLLATERAL_VALUE | NUMBER(19,2) | NULL |  |  |
| 18 | NET_EQUITY | NUMBER(19,2) | NULL |  |  |
| 19 | NET_EQUITY_INC_FWD_CASH | NUMBER(19,2) | NULL |  |  |
| 20 | REALISED_PROFIT_LOSS | NUMBER(19,2) | NULL |  |  |
| 21 | DAILY_POSTED_COMMISSION | NUMBER(19,2) | NULL |  |  |
| 22 | DAILY_OPTION_PREMIUM | NUMBER(19,2) | NULL |  |  |

## CCP_REP_KELER

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_REP_KELERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | TYPE | NVARCHAR2(16) | NOT NULL |  |  |
| 4 | STATEMENTDATE | DATE | NOT NULL |  |  |
| 5 | T_DATE | DATE | NOT NULL |  |  |
| 6 | CCY | NVARCHAR2(6) | NULL |  |  |
| 7 | TAXNUMBER | NVARCHAR2(20) | NULL |  |  |
| 8 | ACCOUNTNO | NVARCHAR2(20) | NULL |  |  |
| 9 | CLIENTID | NVARCHAR2(20) | NULL |  |  |
| 10 | COLLATERALID | NVARCHAR2(20) | NULL |  |  |
| 11 | MEMBERNAME | NVARCHAR2(60) | NULL |  |  |
| 12 | LEGALTITLE | NVARCHAR2(40) | NULL |  |  |
| 13 | SEGREGATION | NVARCHAR2(40) | NULL |  |  |
| 14 | COLLATERALVALUE | NUMBER(19,6) | NULL |  |  |
| 15 | COLLATERALREQU | NUMBER(19,6) | NULL |  |  |
| 16 | SURPLUS | NUMBER(19,6) | NULL |  |  |

## CCP_RPTCB350

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_RPTCB350ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MEMBCLGIDCOD | NVARCHAR2(20) | NOT NULL |  |  |
| 5 | SERVGRP | NVARCHAR2(100) | NULL |  |  |
| 6 | SERVNAM | NVARCHAR2(100) | NULL |  |  |
| 7 | SETTLCURR | NVARCHAR2(6) | NULL |  |  |
| 8 | SERVRENDRDDAT | NVARCHAR2(20) | NULL |  |  |
| 9 | SETTLAMNT | NUMBER(19,6) | NULL |  |  |
| 10 | SERVVOL | NUMBER(19,6) | NULL |  |  |
| 11 | FEETOTAL | NUMBER(19,6) | NULL |  |  |
| 12 | ISMOVEMENTCREATED | NUMBER(1,0) | NULL |  |  |
| 13 | VALUEDATE | DATE | NULL |  |  |

## CCP_RPTCC050

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_RPTCC050ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | RPTPRNTRUNDAT | DATE | NOT NULL |  |  |
| 5 | MEMBCLGIDCOD | NVARCHAR2(20) | NOT NULL |  |  |
| 6 | MEMBEXCHIDCOD | NVARCHAR2(20) | NOT NULL |  |  |
| 7 | CURRTYPCOD | NVARCHAR2(6) | NOT NULL |  |  |
| 8 | ACCTTYPGRP | NVARCHAR2(10) | NOT NULL |  |  |
| 9 | SUMACCTMGNPREMIUMAMNT | NUMBER(19,2) | NULL |  |  |
| 10 | SUMACCTMGNLIQDLVAMNT | NUMBER(19,2) | NULL |  |  |
| 11 | SUMACCTMGNSPRDAMNT | NUMBER(19,2) | NULL |  |  |
| 12 | SUMACCTMGNADDLAMNT | NUMBER(19,2) | NULL |  |  |
| 13 | SUMMACCTUNADJMGNREQ | NUMBER(19,2) | NULL |  |  |
| 14 | MGNGRPCOD | NVARCHAR2(20) | NULL |  |  |
| 15 | MGNCLSCOD | NVARCHAR2(20) | NULL |  |  |
| 16 | MGNPREMIUMAMNT | NUMBER(19,2) | NULL |  |  |
| 17 | MGNLIQDLVAMNT | NUMBER(19,2) | NULL |  |  |
| 18 | MGNSPRDAMNT | NUMBER(19,2) | NULL |  |  |
| 19 | MGNADDLAMNT | NUMBER(19,2) | NULL |  |  |
| 20 | UNADJMGNREQ | NUMBER(19,2) | NULL |  |  |

## CCP_RPTCC203

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_RPTCC203ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | MEMBID | NVARCHAR2(20) | NOT NULL |  |  |
| 5 | RPTPRNTEFFDAT | DATE | NOT NULL |  |  |
| 6 | RPTPRNTRUNDAT | DATE | NOT NULL |  |  |
| 7 | GRPNAME | NVARCHAR2(10) | NOT NULL |  |  |
| 8 | ID | NUMBER(19,0) | NULL |  |  |
| 9 | NOTIONALVAL | NUMBER(19,2) | NULL |  |  |
| 10 | CURRTYPCOD | NVARCHAR2(6) | NOT NULL |  |  |
| 11 | DV01 | NUMBER(29,14) | NULL |  |  |
| 12 | NPV_NET | NUMBER(29,14) | NULL |  |  |
| 13 | MTM1 | NUMBER(29,14) | NULL |  |  |
| 14 | MTM0 | NUMBER(29,14) | NULL |  |  |
| 15 | VMGN | NUMBER(29,14) | NULL |  |  |
| 16 | PAI | NUMBER(29,14) | NULL |  |  |
| 17 | OISRATE | NUMBER(19,7) | NULL |  |  |
| 18 | MTM1_EXCF | NUMBER(29,14) | NULL |  |  |
| 19 | MTM0_EXCF | NUMBER(29,14) | NULL |  |  |
| 20 | SRCSYSTRADEID | NUMBER(19,0) | NULL |  |  |

## CCP_RPTCD020

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_RPTCD020ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | RPTPRNTEFFDAT | DATE | NOT NULL |  |  |
| 4 | RPTPRNTRUNDAT | DATE | NOT NULL |  |  |
| 5 | MEMBID | NVARCHAR2(20) | NOT NULL |  |  |
| 6 | MEMBLGLNAM | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | MEMBCLGIDCOD | NVARCHAR2(20) | NOT NULL |  |  |
| 8 | CSHACCTCOD | NVARCHAR2(40) | NULL |  |  |
| 9 | POOLID | NVARCHAR2(40) | NULL |  |  |
| 10 | OWNER | NVARCHAR2(40) | NULL |  |  |
| 11 | CURRTYPCOD | NVARCHAR2(6) | NULL |  |  |
| 12 | ISINCOD | NVARCHAR2(24) | NULL |  |  |
| 13 | TYPEOFMONEY | NVARCHAR2(60) | NULL |  |  |
| 14 | SECUID | NVARCHAR2(60) | NULL |  |  |
| 15 | CSDID | NVARCHAR2(60) | NULL |  |  |
| 16 | MEMBCSDACT | NVARCHAR2(60) | NULL |  |  |
| 17 | TRANDATE | DATE | NULL |  |  |
| 18 | SUMSECUBLKCOLLQTY | NUMBER(19,2) | NULL |  |  |
| 19 | SUMTRNBALAMNT | NUMBER(19,2) | NULL |  |  |
| 20 | TRNIDNO2 | NVARCHAR2(60) | NULL |  |  |
| 21 | TRNTYP | NVARCHAR2(60) | NULL |  |  |
| 22 | SECUBLKCOLLQTY | NUMBER(19,2) | NULL |  |  |
| 23 | TRNBALAMNT | NUMBER(19,2) | NULL |  |  |

## CCP_RPTCD230

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_RPTCD230ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | RPTPRNTEFFDAT | DATE | NOT NULL |  |  |
| 4 | RPTPRNTRUNDAT | DATE | NOT NULL |  |  |
| 5 | MEMBCLGIDCOD | NVARCHAR2(100) | NOT NULL |  |  |
| 6 | MEMBEXCHIDCOD | NVARCHAR2(20) | NOT NULL |  |  |
| 7 | POOLID | NVARCHAR2(40) | NOT NULL |  |  |
| 8 | CURRTYPCOD | NVARCHAR2(6) | NULL |  |  |
| 9 | INTDATE | DATE | NOT NULL |  |  |
| 10 | FEECSHBALAMNT | NUMBER(19,2) | NULL |  |  |
| 11 | INTERNCSHBALAMNT | NUMBER(19,2) | NULL |  |  |
| 12 | FEENAM | NVARCHAR2(40) | NULL |  |  |
| 13 | INTERNNAM | NVARCHAR2(40) | NULL |  |  |
| 14 | FEERATPCT | NUMBER(19,6) | NULL |  |  |
| 15 | INTERNRATPCT | NUMBER(19,6) | NULL |  |  |
| 16 | DLYFEEAMNT | NUMBER(19,2) | NULL |  |  |
| 17 | DLYINTERNAMNT | NUMBER(19,2) | NULL |  |  |
| 18 | DLYINTAMNT | NUMBER(19,2) | NULL |  |  |
| 19 | AGGAMNTTODATE | NUMBER(19,2) | NULL |  |  |
| 20 | ISMOVEMENTCREATED | NUMBER(1,0) | NULL |  |  |

## CCP_RPTCD710

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_RPTCD710ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | RPTPRNTEFFDAT | DATE | NOT NULL |  |  |
| 4 | RPTPRNTRUNDAT | DATE | NOT NULL |  |  |
| 5 | MEMBID | NVARCHAR2(20) | NOT NULL |  |  |
| 6 | MEMBLGLNAM | NVARCHAR2(100) | NOT NULL |  |  |
| 7 | MEMBCLGIDCOD | NVARCHAR2(20) | NOT NULL |  |  |
| 8 | MEMBEXCHIDCOD | NVARCHAR2(20) | NOT NULL |  |  |
| 9 | CSHACCTNO7 | NVARCHAR2(60) | NOT NULL |  |  |
| 10 | CSHLOCKEYCOD7 | NVARCHAR2(12) | NULL |  |  |
| 11 | CURRTYPCOD | NVARCHAR2(6) | NULL |  |  |
| 12 | CSHREFCOD7 | NVARCHAR2(60) | NULL |  |  |
| 13 | CSHSTLRUN7 | NVARCHAR2(20) | NULL |  |  |
| 14 | CLGHSEIND7 | NVARCHAR2(24) | NULL |  |  |
| 15 | TRANDATE | DATE | NULL |  |  |
| 16 | VALDATE | DATE | NULL |  |  |
| 17 | POOLID7 | NVARCHAR2(40) | NULL |  |  |
| 18 | TRNTYP7 | NVARCHAR2(6) | NULL |  |  |
| 19 | CSHSTATUS | NVARCHAR2(30) | NULL |  |  |
| 20 | TRNTYPTEXT7 | NVARCHAR2(60) | NULL |  |  |
| 21 | TRNDEBAMNT | NUMBER(19,2) | NULL |  |  |
| 22 | TRNCRDAMNT | NUMBER(19,2) | NULL |  |  |

## CCP_RPTEAS01PUBLI

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_RPTEAS01PUBLIID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | BASKET_ISIN | NVARCHAR2(40) | NULL |  |  |
| 5 | BASKET_DESCRIPTION | NVARCHAR2(100) | NULL |  |  |
| 6 | INSTRUMENT_ISIN | NVARCHAR2(40) | NULL |  |  |
| 7 | INSTRUMENT_DESCRIPTION | NVARCHAR2(100) | NULL |  |  |
| 8 | HAIRCUT | NUMBER(9,6) | NULL |  |  |
| 9 | SETTLEMENT_LOCATION | NVARCHAR2(100) | NULL |  |  |
| 10 | LIMIT | NVARCHAR2(100) | NULL |  |  |

## CCP_UBS_ETD

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CCP_UBS_ETDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | COBDATE | DATE | NOT NULL |  |  |
| 4 | ACCOUNT_NUMBER | NVARCHAR2(16) | NOT NULL |  |  |
| 5 | ACCOUNT_NAME | NVARCHAR2(40) | NULL |  |  |
| 6 | MARKET | NVARCHAR2(16) | NULL |  |  |
| 7 | PRODUCT | NVARCHAR2(40) | NULL |  |  |
| 8 | PRODUCT_NAME | NVARCHAR2(200) | NULL |  |  |
| 9 | TRADE_TYPE | NVARCHAR2(16) | NULL |  |  |
| 10 | CONTRACTS | NUMBER(19,2) | NULL |  |  |
| 11 | COLLATERAL_VALUE | NUMBER(19,2) | NULL |  |  |
| 12 | COUPON_RATE | NUMBER(19,4) | NULL |  |  |
| 13 | HAIRCUT | NUMBER(19,2) | NULL |  |  |

## CMOABSASSETCLASSES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CMOABSASSETCLASSNAME | NCLOB | NULL |  |  |

## CMOABSASSETCLASSESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CMOABSASSETCLASSNAME | NCLOB | NULL |  |  |

## COLLATBUCKETRATINGBANDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETRATINGBANDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | RATINGTYPE | NVARCHAR2(510) | NULL |  |  |
| 4 | DEBTSTRUCTURE | NVARCHAR2(510) | NULL |  |  |
| 5 | UPPEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 6 | LOWEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 7 | UPPERORDINAL | NUMBER(9,0) | NULL |  |  |
| 8 | LOWERORDINAL | NUMBER(9,0) | NULL |  |  |
| 9 | REFERENCEAGENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | RATINGAGENCYNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATBUCKETRATINGBANDSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETRATINGBANDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | RATINGTYPE | NVARCHAR2(510) | NULL |  |  |
| 4 | DEBTSTRUCTURE | NVARCHAR2(510) | NULL |  |  |
| 5 | UPPEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 6 | LOWEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 7 | UPPERORDINAL | NUMBER(9,0) | NULL |  |  |
| 8 | LOWERORDINAL | NUMBER(9,0) | NULL |  |  |
| 9 | REFERENCEAGENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | RATINGAGENCYNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETCURRENCIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 2 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 3 | CURRENCYCODE | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETCURRENCIESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 2 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 3 | CURRENCYCODE | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETINSTRTYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 2 | INSTRUMENTTYPEID | NUMBER(18,0) | NULL |  |  |
| 3 | INSTRUMENTTYPENAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETINSTRTYPESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 2 | INSTRUMENTTYPEID | NUMBER(18,0) | NULL |  |  |
| 3 | INSTRUMENTTYPENAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETISSUERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 2 | ISSUERID | NUMBER(18,0) | NULL |  |  |
| 3 | ISSUERNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETISSUERSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 2 | ISSUERID | NUMBER(18,0) | NULL |  |  |
| 3 | ISSUERNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETRAINSTR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 2 | RATINGAGENCYID | NUMBER(18,0) | NULL |  |  |
| 3 | RATINGAGENCYNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETRAINSTRBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 2 | RATINGAGENCYID | NUMBER(18,0) | NULL |  |  |
| 3 | RATINGAGENCYNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETRAISSUERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 2 | RATINGAGENCYID | NUMBER(18,0) | NULL |  |  |
| 3 | RATINGAGENCYNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETRAISSUERSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 2 | RATINGAGENCYID | NUMBER(18,0) | NULL |  |  |
| 3 | RATINGAGENCYNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | INSTRUMENTCLASS | NVARCHAR2(510) | NULL |  |  |
| 4 | MATURITYMETHOD | NVARCHAR2(510) | NULL |  |  |
| 5 | MATURITYBANDLOWEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 6 | MATURITYBANDLOWERORDINAL | NVARCHAR2(510) | NULL |  |  |
| 7 | MATURITYBANDLOWERTIMEPERIOD | NVARCHAR2(510) | NULL |  |  |
| 8 | MATURITYBANDUPPEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 9 | MATURITYBANDUPPERORDINAL | NVARCHAR2(510) | NULL |  |  |
| 10 | MATURITYBANDUPPERTIMEPERIOD | NVARCHAR2(510) | NULL |  |  |
| 11 | ALLRATINGSREQUIRED | NUMBER(1,0) | NULL |  |  |
| 12 | RATINGDISPUTEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 13 | LOADTIMESTAMP | DATE | NOT NULL | `(SYSDATE)` |  |
| 14 | EXCHANGENAME | NVARCHAR2(510) | NULL |  |  |
| 15 | STOCKINDEXNAME | NVARCHAR2(510) | NULL |  |  |
| 16 | ISSUEDATEBANDLOWEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 17 | ISSUEDATEBANDLOWERORDINAL | NVARCHAR2(510) | NULL |  |  |
| 18 | ISSUEDATEBANDLOWERTIMEPERIOD | NVARCHAR2(510) | NULL |  |  |
| 19 | ISSUEDATEBANDUPPEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 20 | ISSUEDATEBANDUPPERORDINAL | NVARCHAR2(510) | NULL |  |  |
| 21 | ISSUEDATEBANDUPPERTIMEPERIOD | NVARCHAR2(510) | NULL |  |  |

## COLLATERALBUCKETSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | INSTRUMENTCLASS | NVARCHAR2(510) | NULL |  |  |
| 4 | MATURITYMETHOD | NVARCHAR2(510) | NULL |  |  |
| 5 | MATURITYBANDLOWEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 6 | MATURITYBANDLOWERORDINAL | NVARCHAR2(510) | NULL |  |  |
| 7 | MATURITYBANDLOWERTIMEPERIOD | NVARCHAR2(510) | NULL |  |  |
| 8 | MATURITYBANDUPPEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 9 | MATURITYBANDUPPERORDINAL | NVARCHAR2(510) | NULL |  |  |
| 10 | MATURITYBANDUPPERTIMEPERIOD | NVARCHAR2(510) | NULL |  |  |
| 11 | ALLRATINGSREQUIRED | NUMBER(1,0) | NULL |  |  |
| 12 | RATINGDISPUTEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 13 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 14 | EXCHANGENAME | NVARCHAR2(510) | NULL |  |  |
| 15 | STOCKINDEXNAME | NVARCHAR2(510) | NULL |  |  |
| 16 | ISSUEDATEBANDLOWEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 17 | ISSUEDATEBANDLOWERORDINAL | NVARCHAR2(510) | NULL |  |  |
| 18 | ISSUEDATEBANDLOWERTIMEPERIOD | NVARCHAR2(510) | NULL |  |  |
| 19 | ISSUEDATEBANDUPPEROPERATOR | NVARCHAR2(510) | NULL |  |  |
| 20 | ISSUEDATEBANDUPPERORDINAL | NVARCHAR2(510) | NULL |  |  |
| 21 | ISSUEDATEBANDUPPERTIMEPERIOD | NVARCHAR2(510) | NULL |  |  |

## COLLATERALGROUPBUCKETS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALGROUPID | NUMBER(18,0) | NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 3 | COLLATERALBUCKETNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALGROUPBUCKETSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALGROUPID | NUMBER(18,0) | NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 3 | COLLATERALBUCKETNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALGROUPS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALGROUPID | NUMBER(18,0) | NULL |  |  |
| 2 | COLLATERALGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 4 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 5 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 6 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 8 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALGROUPSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALGROUPID | NUMBER(18,0) | NULL |  |  |
| 2 | COLLATERALGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 4 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 5 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 6 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 8 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALPOSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRIMARYINSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 3 | INSTRUMENTDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 4 | INSTRUMENTCURRENCYCODE | NVARCHAR2(2000) | NULL |  |  |
| 5 | INSTRUMENTTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | INSTRUMENTISSUERNAME | NVARCHAR2(2000) | NULL |  |  |
| 7 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 8 | MARKETVALUEAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 9 | MARKETVALUESYSTEM | NUMBER(21,6) | NULL |  |  |
| 10 | COLLATERALBUCKETNAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | ISSUERSECTORNAME | NVARCHAR2(2000) | NULL |  |  |
| 12 | ISSUERDOMICILENAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | ISSUERTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | INSTRUMENTAMOUNTISSUED | NUMBER(21,6) | NULL |  |  |
| 15 | INSTRUMENTAMOUNTOUTSTANDING | NUMBER(21,6) | NULL |  |  |
| 16 | POSITIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 17 | ISELIGIBLE | NUMBER(1,0) | NULL |  |  |
| 18 | DIRTYPRICE | NUMBER(21,6) | NULL |  |  |
| 19 | VALUATIONPERCENTAGE | NUMBER(21,6) | NULL |  |  |
| 20 | STATUS | NVARCHAR2(2000) | NULL |  |  |
| 21 | MOVEMENTTYPE | NVARCHAR2(2000) | NULL |  |  |
| 22 | FXRATE | NUMBER(21,6) | NULL |  |  |
| 23 | FXRATEDATE | DATE | NULL |  |  |
| 24 | SYSTEMFXRATE | NUMBER(21,6) | NULL |  |  |
| 25 | SYSTEMFXRATEDATE | DATE | NULL |  |  |
| 26 | PRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 27 | PRICESOURCENAME | NVARCHAR2(2000) | NULL |  |  |
| 28 | PRICEDATEADJUSTMENT | NVARCHAR2(2000) | NULL |  |  |
| 29 | CLEANPRICE | NUMBER(21,6) | NULL |  |  |
| 30 | PRICEQUOTE | NVARCHAR2(2000) | NULL |  |  |
| 31 | ISDIRTYPRICECALCULATED | NUMBER(1,0) | NULL |  |  |
| 32 | COUPONINTERESTACCRUEDTODATE | NUMBER(21,6) | NULL |  |  |
| 33 | PRICEDATE | DATE | NULL |  |  |
| 34 | POOLFACTOR | NUMBER(21,6) | NULL |  |  |
| 35 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 36 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 37 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 38 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 39 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 40 | RECORDDATE | DATE | NOT NULL |  |  |
| 41 | EXPIRYTIME | DATE | NOT NULL |  |  |
| 42 | PREHAIRCUTMARKETVALUEINAGRCCY | NUMBER(21,6) | NULL |  |  |
| 43 | PREHAIRCUTMARKETVALUEININSTCCY | NUMBER(21,6) | NULL |  |  |
| 44 | PREHAIRCUTMARKETVALUEINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 45 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 46 | COSTOFFUNDING | NUMBER(19,4) | NULL |  |  |
| 47 | MARKETVALUEINSTRUMENT | NUMBER(19,4) | NULL |  |  |
| 48 | FXRATESOURCEID | NUMBER(18,0) | NULL |  |  |
| 49 | FXRATESOURCENAME | NVARCHAR2(510) | NULL |  |  |
| 50 | SYSTEMFXRATESOURCEID | NUMBER(18,0) | NULL |  |  |
| 51 | SYSTEMFXRATESOURCENAME | NVARCHAR2(510) | NULL |  |  |
| 52 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 53 | ASSETPOOLNAME | NVARCHAR2(510) | NULL |  |  |

## COLLATERALPOSITIONSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRIMARYINSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 3 | INSTRUMENTDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 4 | INSTRUMENTCURRENCYCODE | NVARCHAR2(2000) | NULL |  |  |
| 5 | INSTRUMENTTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | INSTRUMENTISSUERNAME | NVARCHAR2(2000) | NULL |  |  |
| 7 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 8 | MARKETVALUEAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 9 | MARKETVALUESYSTEM | NUMBER(21,6) | NULL |  |  |
| 10 | COLLATERALBUCKETNAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | ISSUERSECTORNAME | NVARCHAR2(2000) | NULL |  |  |
| 12 | ISSUERDOMICILENAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | ISSUERTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | INSTRUMENTAMOUNTISSUED | NUMBER(21,6) | NULL |  |  |
| 15 | INSTRUMENTAMOUNTOUTSTANDING | NUMBER(21,6) | NULL |  |  |
| 16 | POSITIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 17 | ISELIGIBLE | NUMBER(1,0) | NULL |  |  |
| 18 | DIRTYPRICE | NUMBER(21,6) | NULL |  |  |
| 19 | VALUATIONPERCENTAGE | NUMBER(21,6) | NULL |  |  |
| 20 | STATUS | NVARCHAR2(2000) | NULL |  |  |
| 21 | MOVEMENTTYPE | NVARCHAR2(2000) | NULL |  |  |
| 22 | FXRATE | NUMBER(21,6) | NULL |  |  |
| 23 | FXRATEDATE | DATE | NULL |  |  |
| 24 | SYSTEMFXRATE | NUMBER(21,6) | NULL |  |  |
| 25 | SYSTEMFXRATEDATE | DATE | NULL |  |  |
| 26 | PRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 27 | PRICESOURCENAME | NVARCHAR2(2000) | NULL |  |  |
| 28 | PRICEDATEADJUSTMENT | NVARCHAR2(2000) | NULL |  |  |
| 29 | CLEANPRICE | NUMBER(21,6) | NULL |  |  |
| 30 | PRICEQUOTE | NVARCHAR2(2000) | NULL |  |  |
| 31 | ISDIRTYPRICECALCULATED | NUMBER(1,0) | NULL |  |  |
| 32 | COUPONINTERESTACCRUEDTODATE | NUMBER(21,6) | NULL |  |  |
| 33 | PRICEDATE | DATE | NULL |  |  |
| 34 | POOLFACTOR | NUMBER(21,6) | NULL |  |  |
| 35 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 36 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 37 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 38 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 39 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 40 | RECORDDATE | DATE | NOT NULL |  |  |
| 41 | EXPIRYTIME | DATE | NOT NULL |  |  |
| 42 | PREHAIRCUTMARKETVALUEINAGRCCY | NUMBER(21,6) | NULL |  |  |
| 43 | PREHAIRCUTMARKETVALUEININSTCCY | NUMBER(21,6) | NULL |  |  |
| 44 | PREHAIRCUTMARKETVALUEINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 45 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 46 | COSTOFFUNDING | NUMBER(19,4) | NULL |  |  |
| 47 | MARKETVALUEINSTRUMENT | NUMBER(19,4) | NULL |  |  |
| 48 | FXRATESOURCEID | NUMBER(18,0) | NULL |  |  |
| 49 | FXRATESOURCENAME | NVARCHAR2(510) | NULL |  |  |
| 50 | SYSTEMFXRATESOURCEID | NUMBER(18,0) | NULL |  |  |
| 51 | SYSTEMFXRATESOURCENAME | NVARCHAR2(510) | NULL |  |  |
| 52 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 53 | ASSETPOOLNAME | NVARCHAR2(510) | NULL |  |  |

## CONCENTRATIONBREACHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CONCENTRATIONBREACHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 3 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 4 | RULEDESCRIPTION | NVARCHAR2(4000) | NULL |  |  |
| 5 | REASON | NVARCHAR2(1000) | NULL |  |  |
| 6 | ECPOSTIONID | NUMBER(18,0) | NULL |  |  |

## CONCENTRATIONBREACHESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CONCENTRATIONBREACHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 3 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 4 | RULEDESCRIPTION | NVARCHAR2(4000) | NULL |  |  |
| 5 | REASON | NVARCHAR2(1000) | NULL |  |  |
| 6 | ECPOSTIONID | NUMBER(18,0) | NULL |  |  |

## CONCENTRATIONRULES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CONCENTRATIONRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | CRITERIA | NCLOB | NULL |  |  |
| 6 | APPLIESTO | NVARCHAR2(510) | NULL |  |  |

## CONCENTRATIONRULESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CONCENTRATIONRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | CRITERIA | NCLOB | NULL |  |  |
| 6 | APPLIESTO | NVARCHAR2(510) | NULL |  |  |

## CONTACTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CONTACTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CONTACTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 4 | ENTITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | EMAILADDRESS | NVARCHAR2(4000) | NULL |  |  |
| 6 | PHONENUMBER | NVARCHAR2(2000) | NULL |  |  |
| 7 | FAXNUMBER | NVARCHAR2(2000) | NULL |  |  |
| 8 | EMAILDISTRIBUTIONPREFERENCES | NVARCHAR2(2000) | NULL |  |  |
| 9 | CUSTOMSTATEMENTID | NUMBER(18,0) | NULL |  |  |
| 10 | CUSTOMSTATEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | MARGINCALLCUSTOMSTATEMENTID | NUMBER(18,0) | NULL |  |  |
| 12 | MARGINCALLCUSTOMSTATEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | MARGINNOTICEINCLUDEPERFERENCES | NVARCHAR2(2000) | NULL |  |  |
| 14 | LOADTIMESTAMP | DATE | NOT NULL | `(SYSDATE)` |  |

## CONTACTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CONTACTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CONTACTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 4 | ENTITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | EMAILADDRESS | NVARCHAR2(2000) | NULL |  |  |
| 6 | PHONENUMBER | NVARCHAR2(2000) | NULL |  |  |
| 7 | FAXNUMBER | NVARCHAR2(2000) | NULL |  |  |
| 8 | EMAILDISTRIBUTIONPREFERENCES | NVARCHAR2(2000) | NULL |  |  |
| 9 | CUSTOMSTATEMENTID | NUMBER(18,0) | NULL |  |  |
| 10 | CUSTOMSTATEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | MARGINCALLCUSTOMSTATEMENTID | NUMBER(18,0) | NULL |  |  |
| 12 | MARGINCALLCUSTOMSTATEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | MARGINNOTICEINCLUDEPERFERENCES | NVARCHAR2(2000) | NULL |  |  |
| 14 | LOADTIMESTAMP | DATE | NOT NULL |  |  |

## COUNTERPARTYMARGINDETAILS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COUNTERPARTYMARGINDETAILID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINCALLID | NUMBER(18,0) | NULL |  |  |
| 3 | GENERALCOMMENT | NVARCHAR2(2000) | NULL |  |  |
| 4 | VARIATIONDEMAND | NUMBER(21,6) | NULL |  |  |
| 5 | VARIATIONANTICDEMAND | NUMBER(21,6) | NULL |  |  |
| 6 | VARIATIONCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 7 | VARIATIONCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 8 | LOCKUPDEMAND | NUMBER(21,6) | NULL |  |  |
| 9 | LOCKUPANTICDEMAND | NUMBER(21,6) | NULL |  |  |
| 10 | LOCKUPCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 11 | LOCKUPCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 12 | LOCKUPMARGIN | NUMBER(21,6) | NULL |  |  |
| 13 | LOCKUPMARGINFAVOROF | NVARCHAR2(510) | NULL |  |  |
| 14 | ADDITIONALMARGIN | NUMBER(21,6) | NULL |  |  |
| 15 | ADDITIONALMARGINFAVOROF | NVARCHAR2(510) | NULL |  |  |
| 16 | NETEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 17 | NETEXPOSUREFAVOROF | NVARCHAR2(510) | NULL |  |  |
| 18 | UPDATEDTIMESTAMP | DATE | NULL |  |  |

## COUNTERPARTYMARGINDETAILSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COUNTERPARTYMARGINDETAILID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINCALLID | NUMBER(18,0) | NULL |  |  |
| 3 | GENERALCOMMENT | NVARCHAR2(2000) | NULL |  |  |
| 4 | VARIATIONDEMAND | NUMBER(21,6) | NULL |  |  |
| 5 | VARIATIONANTICDEMAND | NUMBER(21,6) | NULL |  |  |
| 6 | VARIATIONCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 7 | VARIATIONCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 8 | LOCKUPDEMAND | NUMBER(21,6) | NULL |  |  |
| 9 | LOCKUPANTICDEMAND | NUMBER(21,6) | NULL |  |  |
| 10 | LOCKUPCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 11 | LOCKUPCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 12 | LOCKUPMARGIN | NUMBER(21,6) | NULL |  |  |
| 13 | LOCKUPMARGINFAVOROF | NVARCHAR2(510) | NULL |  |  |
| 14 | ADDITIONALMARGIN | NUMBER(21,6) | NULL |  |  |
| 15 | ADDITIONALMARGINFAVOROF | NVARCHAR2(510) | NULL |  |  |
| 16 | NETEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 17 | NETEXPOSUREFAVOROF | NVARCHAR2(510) | NULL |  |  |
| 18 | UPDATEDTIMESTAMP | DATE | NULL |  |  |

## CREDITRATINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | DEBTSTRUCTURE | NVARCHAR2(2000) | NULL |  |  |
| 4 | ORDINAL | NUMBER(9,0) | NULL |  |  |
| 5 | RATING | NVARCHAR2(2000) | NOT NULL |  |  |

## CREDITRATINGSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | DEBTSTRUCTURE | NVARCHAR2(2000) | NULL |  |  |
| 4 | ORDINAL | NUMBER(9,0) | NULL |  |  |
| 5 | RATING | NVARCHAR2(2000) | NOT NULL |  |  |

## CREDITSCENARIOS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CALCULATIONDATE | DATE | NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 5 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 7 | COUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | PRINCIPALRATINGSHIFT | NVARCHAR2(40) | NULL |  |  |
| 9 | COUNTERPARTYRATINGSHIFT | NVARCHAR2(40) | NULL |  |  |
| 10 | LOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 11 | LOCKUPMARGINDUETO | NVARCHAR2(40) | NULL |  |  |
| 12 | NETTEDADDITIONALMARGIN | NUMBER(19,4) | NULL |  |  |
| 13 | NETTEDADDITIONALMARGINDUETO | NVARCHAR2(40) | NULL |  |  |
| 14 | DELIVERTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 15 | DELIVERTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 16 | RETURNTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 17 | RETURNTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 18 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 19 | AGREEMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 20 | NETEXPOSURE | NUMBER(19,4) | NULL |  |  |
| 21 | NETEXPOSUREFAVOROF | NVARCHAR2(40) | NULL |  |  |
| 22 | DEMANDCHANGE | NUMBER(19,4) | NULL |  |  |
| 23 | ANTICDEMANDCHANGE | NUMBER(19,4) | NULL |  |  |
| 24 | DEMANDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 25 | ANTICDEMANDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 26 | DEMANDAMOUNTINSYSCURRENCY | NUMBER(19,4) | NULL |  |  |
| 27 | ANTICDEMANDAMOUNTINSYSCURRENCY | NUMBER(19,4) | NULL |  |  |
| 28 | PRINCIPALRATINGSHIFTNUMERIC | NUMBER(9,0) | NULL |  |  |
| 29 | COUNTERPARTYRATINGSHIFTNUMERIC | NUMBER(9,0) | NULL |  |  |
| 30 | NETEXPOSUREINSYSTEMCURRENCY | NUMBER(19,4) | NULL |  |  |
| 31 | LOCKUPMARGINDELIVERTOPRIN | NUMBER(19,4) | NULL |  |  |
| 32 | LOCKUPMARGINDELIVERTOCPTY | NUMBER(19,4) | NULL |  |  |
| 33 | LOCKUPMARGINRETURNTOPRIN | NUMBER(19,4) | NULL |  |  |
| 34 | LOCKUPMARGINRETURNTOCPTY | NUMBER(19,4) | NULL |  |  |
| 35 | MINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 36 | ROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 37 | THRESHOLD | NUMBER(19,6) | NULL |  |  |
| 38 | LOCKUPMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 39 | LOCKUPROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |

## CREDITSCENARIOSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CALCULATIONDATE | DATE | NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 5 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 7 | COUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | PRINCIPALRATINGSHIFT | NVARCHAR2(40) | NULL |  |  |
| 9 | COUNTERPARTYRATINGSHIFT | NVARCHAR2(40) | NULL |  |  |
| 10 | LOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 11 | LOCKUPMARGINDUETO | NVARCHAR2(40) | NULL |  |  |
| 12 | NETTEDADDITIONALMARGIN | NUMBER(19,4) | NULL |  |  |
| 13 | NETTEDADDITIONALMARGINDUETO | NVARCHAR2(40) | NULL |  |  |
| 14 | DELIVERTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 15 | DELIVERTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 16 | RETURNTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 17 | RETURNTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 18 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 19 | AGREEMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 20 | NETEXPOSURE | NUMBER(19,4) | NULL |  |  |
| 21 | NETEXPOSUREFAVOROF | NVARCHAR2(40) | NULL |  |  |
| 22 | DEMANDCHANGE | NUMBER(19,4) | NULL |  |  |
| 23 | ANTICDEMANDCHANGE | NUMBER(19,4) | NULL |  |  |
| 24 | DEMANDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 25 | ANTICDEMANDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 26 | DEMANDAMOUNTINSYSCURRENCY | NUMBER(19,4) | NULL |  |  |
| 27 | ANTICDEMANDAMOUNTINSYSCURRENCY | NUMBER(19,4) | NULL |  |  |
| 28 | PRINCIPALRATINGSHIFTNUMERIC | NUMBER(9,0) | NULL |  |  |
| 29 | COUNTERPARTYRATINGSHIFTNUMERIC | NUMBER(9,0) | NULL |  |  |
| 30 | NETEXPOSUREINSYSTEMCURRENCY | NUMBER(19,4) | NULL |  |  |
| 31 | LOCKUPMARGINDELIVERTOPRIN | NUMBER(19,4) | NULL |  |  |
| 32 | LOCKUPMARGINDELIVERTOCPTY | NUMBER(19,4) | NULL |  |  |
| 33 | LOCKUPMARGINRETURNTOPRIN | NUMBER(19,4) | NULL |  |  |
| 34 | LOCKUPMARGINRETURNTOCPTY | NUMBER(19,4) | NULL |  |  |
| 35 | MINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 36 | ROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 37 | THRESHOLD | NUMBER(19,6) | NULL |  |  |
| 38 | LOCKUPMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 39 | LOCKUPROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |

## CURRENCIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 3 | CODE | NCHAR(6) | NULL |  |  |
| 4 | FXRATEALIAS | NVARCHAR2(510) | NULL |  |  |
| 5 | QUOTECONVENTION | NVARCHAR2(510) | NULL |  |  |
| 6 | MINTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |
| 7 | MAXTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |
| 8 | PERCENTTOLERANCE | NUMBER(14,5) | NULL |  |  |
| 9 | ISSYSTEMCURRENCY | NUMBER(1,0) | NULL |  |  |

## CURRENCIESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 3 | CODE | NCHAR(6) | NULL |  |  |
| 4 | FXRATEALIAS | NVARCHAR2(510) | NULL |  |  |
| 5 | QUOTECONVENTION | NVARCHAR2(510) | NULL |  |  |
| 6 | MINTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |
| 7 | MAXTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |
| 8 | PERCENTTOLERANCE | NUMBER(14,5) | NULL |  |  |
| 9 | ISSYSTEMCURRENCY | NUMBER(1,0) | NULL |  |  |

## DAILYACCRUALS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DAILYACCRUALDATE | DATE | NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 4 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 5 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | DAILYACCRUALHELD | NUMBER(19,4) | NULL |  |  |
| 7 | DAILYACCRUALPOSTED | NUMBER(19,4) | NULL |  |  |
| 8 | ACCRUEDINTERESTHELD | NUMBER(19,4) | NULL |  |  |
| 9 | ACCRUEDINTERESTPOSTED | NUMBER(19,4) | NULL |  |  |
| 10 | MOVEMENTAMOUNTHELD | NUMBER(19,4) | NULL |  |  |
| 11 | MOVEMENTAMOUNTPOSTED | NUMBER(19,4) | NULL |  |  |
| 12 | ENDINGBALANCEHELD | NUMBER(19,4) | NULL |  |  |
| 13 | ENDINGBALANCEPOSTED | NUMBER(19,4) | NULL |  |  |
| 14 | EFFECTIVEENDINGBALANCEHELD | NUMBER(19,4) | NULL |  |  |
| 15 | EFFECTIVEENDINGBALANCEPOSTED | NUMBER(19,4) | NULL |  |  |
| 16 | INDEXRATEHELD | NUMBER(9,6) | NULL |  |  |
| 17 | INDEXRATEPOSTED | NUMBER(9,6) | NULL |  |  |
| 18 | EFFECTIVEINDEXRATEHELD | NUMBER(9,6) | NULL |  |  |
| 19 | EFFECTIVEINDEXRATEPOSTED | NUMBER(9,6) | NULL |  |  |
| 20 | SPREADHELD | NUMBER(10,6) | NULL |  |  |
| 21 | SPREADPOSTED | NUMBER(10,6) | NULL |  |  |
| 22 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 23 | LOADTIMESTAMP | DATE | NOT NULL | `(SYSDATE)` |  |
| 24 | DAILYACCRUALHELDLASTBUSDAY | NUMBER(19,4) | NULL |  |  |
| 25 | DAILYACCRUALPOSTEDLASTBUSDAY | NUMBER(19,4) | NULL |  |  |
| 26 | ACCRINTERESTHELDLASTBUSDAY | NUMBER(19,4) | NULL |  |  |
| 27 | ACCRINTERESTPOSTEDLASTBUSDAY | NUMBER(19,4) | NULL |  |  |
| 28 | PERIODENDHELD | DATE | NULL |  |  |
| 29 | PERIODENDPOSTED | DATE | NULL |  |  |

## DAILYACCRUALSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DAILYACCRUALDATE | DATE | NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 4 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 5 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | DAILYACCRUALHELD | NUMBER(19,4) | NULL |  |  |
| 7 | DAILYACCRUALPOSTED | NUMBER(19,4) | NULL |  |  |
| 8 | ACCRUEDINTERESTHELD | NUMBER(19,4) | NULL |  |  |
| 9 | ACCRUEDINTERESTPOSTED | NUMBER(19,4) | NULL |  |  |
| 10 | MOVEMENTAMOUNTHELD | NUMBER(19,4) | NULL |  |  |
| 11 | MOVEMENTAMOUNTPOSTED | NUMBER(19,4) | NULL |  |  |
| 12 | ENDINGBALANCEHELD | NUMBER(19,4) | NULL |  |  |
| 13 | ENDINGBALANCEPOSTED | NUMBER(19,4) | NULL |  |  |
| 14 | EFFECTIVEENDINGBALANCEHELD | NUMBER(19,4) | NULL |  |  |
| 15 | EFFECTIVEENDINGBALANCEPOSTED | NUMBER(19,4) | NULL |  |  |
| 16 | INDEXRATEHELD | NUMBER(9,6) | NULL |  |  |
| 17 | INDEXRATEPOSTED | NUMBER(9,6) | NULL |  |  |
| 18 | EFFECTIVEINDEXRATEHELD | NUMBER(9,6) | NULL |  |  |
| 19 | EFFECTIVEINDEXRATEPOSTED | NUMBER(9,6) | NULL |  |  |
| 20 | SPREADHELD | NUMBER(10,6) | NULL |  |  |
| 21 | SPREADPOSTED | NUMBER(10,6) | NULL |  |  |
| 22 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 23 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 24 | DAILYACCRUALHELDLASTBUSDAY | NUMBER(19,4) | NULL |  |  |
| 25 | DAILYACCRUALPOSTEDLASTBUSDAY | NUMBER(19,4) | NULL |  |  |
| 26 | ACCRINTERESTHELDLASTBUSDAY | NUMBER(19,4) | NULL |  |  |
| 27 | ACCRINTERESTPOSTEDLASTBUSDAY | NUMBER(19,4) | NULL |  |  |
| 28 | PERIODENDHELD | DATE | NULL |  |  |
| 29 | PERIODENDPOSTED | DATE | NULL |  |  |

## DATATYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DATATYPEID | NUMBER(9,0) | NOT NULL |  |  |
| 2 | DATATYPENAME | NVARCHAR2(100) | NOT NULL |  |  |

## DATATYPESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DATATYPEID | NUMBER(9,0) | NOT NULL |  |  |
| 2 | DATATYPENAME | NVARCHAR2(100) | NOT NULL |  |  |

## DATETIMINGSIMPLE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DATETIMINGID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TIMINGDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |

## DATETIMINGSIMPLEBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DATETIMINGID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TIMINGDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |

## DEBTINSTRUMENTPRICES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 2 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | PRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 4 | PRICESOURCENAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | PRICEDATE | DATE | NULL |  |  |
| 6 | LOADDATE | DATE | NULL |  |  |
| 7 | ISBIDPRICECALCULATED | NUMBER(1,0) | NULL |  |  |
| 8 | BIDCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 9 | BIDDIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 10 | ISMIDPRICECALCULATED | NUMBER(1,0) | NULL |  |  |
| 11 | MIDCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 12 | MIDDIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 13 | ISASKPRICECALCULATED | NUMBER(1,0) | NULL |  |  |
| 14 | ASKCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 15 | ASKDIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 16 | POOLFACTOR | NUMBER(12,8) | NULL |  |  |
| 17 | COUPONINTERESTACCRUEDTODATE | NUMBER(12,8) | NULL |  |  |
| 18 | PRICEDATEADJUSTMENT | NVARCHAR2(2000) | NULL |  |  |
| 19 | ISMANUAL | NUMBER(1,0) | NULL |  |  |
| 20 | IMPORTID | NUMBER(18,0) | NULL |  |  |
| 21 | IMPORTNAME | NVARCHAR2(2000) | NULL |  |  |
| 22 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 23 | UPDATEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 24 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 25 | RECORDDATE | DATE | NOT NULL |  |  |
| 26 | EXPIRYTIME | DATE | NOT NULL |  |  |

## DEBTINSTRUMENTPRICESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 2 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | PRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 4 | PRICESOURCENAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | PRICEDATE | DATE | NULL |  |  |
| 6 | LOADDATE | DATE | NULL |  |  |
| 7 | ISBIDPRICECALCULATED | NUMBER(1,0) | NULL |  |  |
| 8 | BIDCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 9 | BIDDIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 10 | ISMIDPRICECALCULATED | NUMBER(1,0) | NULL |  |  |
| 11 | MIDCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 12 | MIDDIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 13 | ISASKPRICECALCULATED | NUMBER(1,0) | NULL |  |  |
| 14 | ASKCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 15 | ASKDIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 16 | POOLFACTOR | NUMBER(12,8) | NULL |  |  |
| 17 | COUPONINTERESTACCRUEDTODATE | NUMBER(12,8) | NULL |  |  |
| 18 | PRICEDATEADJUSTMENT | NVARCHAR2(2000) | NULL |  |  |
| 19 | ISMANUAL | NUMBER(1,0) | NULL |  |  |
| 20 | IMPORTID | NUMBER(18,0) | NULL |  |  |
| 21 | IMPORTNAME | NVARCHAR2(2000) | NULL |  |  |
| 22 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 23 | UPDATEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 24 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 25 | RECORDDATE | DATE | NOT NULL |  |  |
| 26 | EXPIRYTIME | DATE | NOT NULL |  |  |

## DISPUTEAGINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGMTID | NUMBER(18,0) | NULL |  |  |
| 2 | AGMTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGMTAGE | NUMBER(18,0) | NULL |  |  |
| 4 | AGMTDISPUTESTARTDATE | DATE | NULL |  |  |
| 5 | AGMTDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 6 | AGMTMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 7 | AGMTDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 8 | AGMTMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 9 | PRINAGE | NUMBER(18,0) | NULL |  |  |
| 10 | PRINDISPUTESTARTDATE | DATE | NULL |  |  |
| 11 | PRINDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 12 | PRINMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 13 | PRINDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 14 | PRINMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 15 | CPTYAGE | NUMBER(18,0) | NULL |  |  |
| 16 | CPTYDISPUTESTARTDATE | DATE | NULL |  |  |
| 17 | CPTYDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 18 | CPTYMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 19 | CPTYDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 20 | CPTYMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 21 | VARAGE | NUMBER(18,0) | NULL |  |  |
| 22 | VARDISPUTESTARTDATE | DATE | NULL |  |  |
| 23 | VARDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 24 | VARMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 25 | VARDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 26 | VARMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 27 | LUAGE | NUMBER(18,0) | NULL |  |  |
| 28 | LUDISPUTESTARTDATE | DATE | NULL |  |  |
| 29 | LUDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 30 | LUMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 31 | LUDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 32 | LUMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 33 | PRINLUAGE | NUMBER(18,0) | NULL |  |  |
| 34 | PRINLUDISPUTESTARTDATE | DATE | NULL |  |  |
| 35 | PRINLUDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 36 | PRINLUMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 37 | PRINLUDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 38 | PRINLUMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 39 | CPTYLUAGE | NUMBER(18,0) | NULL |  |  |
| 40 | CPTYLUDISPUTESTARTDATE | DATE | NULL |  |  |
| 41 | CPTYLUDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 42 | CPTYLUMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 43 | CPTYLUDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 44 | CPTYLUMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 45 | PRINVARAGE | NUMBER(18,0) | NULL |  |  |
| 46 | PRINVARDISPUTESTARTDATE | DATE | NULL |  |  |
| 47 | PRINVARDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 48 | PRINVARMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 49 | PRINVARDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 50 | PRINVARMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 51 | CPTYVARAGE | NUMBER(18,0) | NULL |  |  |
| 52 | CPTYVARDISPUTESTARTDATE | DATE | NULL |  |  |
| 53 | CPTYVARDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 54 | CPTYVARMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 55 | CPTYVARDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 56 | CPTYVARMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 57 | RECORDDATE | DATE | NULL |  |  |
| 58 | EXPIRYTIME | DATE | NULL |  |  |
| 59 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |

## DISPUTEAGINGSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGMTID | NUMBER(18,0) | NULL |  |  |
| 2 | AGMTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGMTAGE | NUMBER(18,0) | NULL |  |  |
| 4 | AGMTDISPUTESTARTDATE | DATE | NULL |  |  |
| 5 | AGMTDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 6 | AGMTMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 7 | AGMTDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 8 | AGMTMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 9 | PRINAGE | NUMBER(18,0) | NULL |  |  |
| 10 | PRINDISPUTESTARTDATE | DATE | NULL |  |  |
| 11 | PRINDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 12 | PRINMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 13 | PRINDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 14 | PRINMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 15 | CPTYAGE | NUMBER(18,0) | NULL |  |  |
| 16 | CPTYDISPUTESTARTDATE | DATE | NULL |  |  |
| 17 | CPTYDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 18 | CPTYMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 19 | CPTYDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 20 | CPTYMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 21 | VARAGE | NUMBER(18,0) | NULL |  |  |
| 22 | VARDISPUTESTARTDATE | DATE | NULL |  |  |
| 23 | VARDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 24 | VARMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 25 | VARDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 26 | VARMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 27 | LUAGE | NUMBER(18,0) | NULL |  |  |
| 28 | LUDISPUTESTARTDATE | DATE | NULL |  |  |
| 29 | LUDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 30 | LUMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 31 | LUDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 32 | LUMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 33 | PRINLUAGE | NUMBER(18,0) | NULL |  |  |
| 34 | PRINLUDISPUTESTARTDATE | DATE | NULL |  |  |
| 35 | PRINLUDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 36 | PRINLUMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 37 | PRINLUDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 38 | PRINLUMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 39 | CPTYLUAGE | NUMBER(18,0) | NULL |  |  |
| 40 | CPTYLUDISPUTESTARTDATE | DATE | NULL |  |  |
| 41 | CPTYLUDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 42 | CPTYLUMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 43 | CPTYLUDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 44 | CPTYLUMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 45 | PRINVARAGE | NUMBER(18,0) | NULL |  |  |
| 46 | PRINVARDISPUTESTARTDATE | DATE | NULL |  |  |
| 47 | PRINVARDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 48 | PRINVARMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 49 | PRINVARDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 50 | PRINVARMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 51 | CPTYVARAGE | NUMBER(18,0) | NULL |  |  |
| 52 | CPTYVARDISPUTESTARTDATE | DATE | NULL |  |  |
| 53 | CPTYVARDISPUTEAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 54 | CPTYVARMARGINCALLAMTINAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 55 | CPTYVARDISPUTEAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 56 | CPTYVARMARGINCALLAMTINSYSCCY | NUMBER(21,6) | NULL |  |  |
| 57 | RECORDDATE | DATE | NULL |  |  |
| 58 | EXPIRYTIME | DATE | NULL |  |  |
| 59 | LOADTIMESTAMP | DATE | NOT NULL |  |  |

## ECAGREEMENTRESULTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ECAGREEMENTRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | MANAGINGLOCATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | ECRECORDID | NUMBER(18,0) | NULL |  |  |
| 6 | ELIGIBILITYRESULT | NVARCHAR2(510) | NULL |  |  |
| 7 | CONCENTRATIONRESULT | NVARCHAR2(510) | NULL |  |  |
| 8 | POSITIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 9 | VALUATIONAGENT | NVARCHAR2(510) | NULL |  |  |

## ECAGREEMENTRESULTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ECAGREEMENTRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | MANAGINGLOCATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | ECRECORDID | NUMBER(18,0) | NULL |  |  |
| 6 | ELIGIBILITYRESULT | NVARCHAR2(510) | NULL |  |  |
| 7 | CONCENTRATIONRESULT | NVARCHAR2(510) | NULL |  |  |
| 8 | POSITIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 9 | VALUATIONAGENT | NVARCHAR2(510) | NULL |  |  |

## ECPOSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ECPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 3 | INSTRUMENTIDENTIFIER | NVARCHAR2(100) | NULL |  |  |
| 4 | INSTRUMENTIDENTIFIERTYPE | NVARCHAR2(510) | NULL |  |  |
| 5 | INSTRUMENTDESCRIPTION | NVARCHAR2(4000) | NULL |  |  |
| 6 | INSTRUMENTCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 7 | INSTRUMENTTYPE | NVARCHAR2(510) | NULL |  |  |
| 8 | ISSUERNAME | NVARCHAR2(500) | NULL |  |  |
| 9 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 10 | MARKETVALUESYSTEMCURRENCY | NUMBER(19,4) | NULL |  |  |
| 11 | MARKETVALUEAGREEMENTCURRENCY | NUMBER(19,4) | NULL |  |  |
| 12 | SYSTEMCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 13 | AGREEMENTCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 14 | BUCKETNAME | NVARCHAR2(510) | NULL |  |  |
| 15 | ISSUERINDUSTRYSECTORNAME | NVARCHAR2(200) | NULL |  |  |
| 16 | ISSUERDOMICILE | NVARCHAR2(200) | NULL |  |  |
| 17 | ISSUERTYPENAME | NVARCHAR2(100) | NULL |  |  |
| 18 | AMOUNTISSUED | NUMBER(19,4) | NULL |  |  |
| 19 | AMOUNTOUTSTANDING | NUMBER(19,4) | NULL |  |  |

## ECPOSITIONSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ECPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 3 | INSTRUMENTIDENTIFIER | NVARCHAR2(100) | NULL |  |  |
| 4 | INSTRUMENTIDENTIFIERTYPE | NVARCHAR2(510) | NULL |  |  |
| 5 | INSTRUMENTDESCRIPTION | NVARCHAR2(4000) | NULL |  |  |
| 6 | INSTRUMENTCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 7 | INSTRUMENTTYPE | NVARCHAR2(510) | NULL |  |  |
| 8 | ISSUERNAME | NVARCHAR2(500) | NULL |  |  |
| 9 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 10 | MARKETVALUESYSTEMCURRENCY | NUMBER(19,4) | NULL |  |  |
| 11 | MARKETVALUEAGREEMENTCURRENCY | NUMBER(19,4) | NULL |  |  |
| 12 | SYSTEMCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 13 | AGREEMENTCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 14 | BUCKETNAME | NVARCHAR2(510) | NULL |  |  |
| 15 | ISSUERINDUSTRYSECTORNAME | NVARCHAR2(200) | NULL |  |  |
| 16 | ISSUERDOMICILE | NVARCHAR2(200) | NULL |  |  |
| 17 | ISSUERTYPENAME | NVARCHAR2(100) | NULL |  |  |
| 18 | AMOUNTISSUED | NUMBER(19,4) | NULL |  |  |
| 19 | AMOUNTOUTSTANDING | NUMBER(19,4) | NULL |  |  |

## ECRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ECRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STARTDATETIME | DATE | NULL |  |  |
| 3 | ENDDATETIME | DATE | NULL |  |  |
| 4 | STATUS | NUMBER(9,0) | NULL |  |  |
| 5 | REQUESTEDBY | NVARCHAR2(510) | NULL |  |  |
| 6 | EXCEPTIONMESSAGESCOUNT | NUMBER(18,0) | NULL |  |  |
| 7 | AGREEMENTSCHECKED | NUMBER(18,0) | NULL |  |  |
| 8 | AGREEMENTSFAILED | NUMBER(18,0) | NULL |  |  |
| 9 | CORRELATIONID | NVARCHAR2(510) | NULL |  |  |
| 10 | REQUESTEDDATETIME | DATE | NULL |  |  |
| 11 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## ECRECORDSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ECRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STARTDATETIME | DATE | NULL |  |  |
| 3 | ENDDATETIME | DATE | NULL |  |  |
| 4 | STATUS | NUMBER(9,0) | NULL |  |  |
| 5 | REQUESTEDBY | NVARCHAR2(510) | NULL |  |  |
| 6 | EXCEPTIONMESSAGESCOUNT | NUMBER(18,0) | NULL |  |  |
| 7 | AGREEMENTSCHECKED | NUMBER(18,0) | NULL |  |  |
| 8 | AGREEMENTSFAILED | NUMBER(18,0) | NULL |  |  |
| 9 | CORRELATIONID | NVARCHAR2(510) | NULL |  |  |
| 10 | REQUESTEDDATETIME | DATE | NULL |  |  |
| 11 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## ELIGIBILITYBREACHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBILITYBREACHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 3 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 4 | REASON | NVARCHAR2(1000) | NULL |  |  |
| 5 | ECPOSITIONID | NUMBER(18,0) | NULL |  |  |

## ELIGIBILITYBREACHESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBILITYBREACHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 3 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 4 | REASON | NVARCHAR2(1000) | NULL |  |  |
| 5 | ECPOSITIONID | NUMBER(18,0) | NULL |  |  |

## ELIGIBILITYRULES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RULEID | NUMBER(18,0) | NULL |  |  |
| 2 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | BUCKETS | NCLOB | NULL |  |  |
| 6 | CRITERIA | NCLOB | NULL |  |  |
| 7 | APPLIESTO | NVARCHAR2(2000) | NULL |  |  |

## ELIGIBILITYRULESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RULEID | NUMBER(18,0) | NULL |  |  |
| 2 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | BUCKETS | NCLOB | NULL |  |  |
| 6 | CRITERIA | NCLOB | NULL |  |  |
| 7 | APPLIESTO | NVARCHAR2(2000) | NULL |  |  |

## ELIGIBLECOLLATERALS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBLECOLLATERALID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ELIGIBLECOLLATERALNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 6 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 7 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 8 | COLLATERALBUCKETNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | ELIGIBLECOLLATERALTYPE | NVARCHAR2(2000) | NOT NULL |  |  |
| 10 | PRINVALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 11 | CPTYVALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 12 | LOADTIMESTAMP | DATE | NOT NULL | `(SYSDATE)` |  |
| 13 | VARIATIONHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 14 | VARIATIONPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 15 | LOCKUPHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 16 | LOCKUPPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 17 | GUARANTEEHELDVALUATIONPCT | NUMBER(19,4) | NULL |  |  |
| 18 | GUARANTEEPOSTEDVALUATIONPCT | NUMBER(19,4) | NULL |  |  |
| 19 | SURPLUSHELDVALUATIONPCT | NUMBER(19,4) | NULL |  |  |
| 20 | SURPLUSPOSTEDVALUATIONPCT | NUMBER(19,4) | NULL |  |  |

## ELIGIBLECOLLATERALSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBLECOLLATERALID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ELIGIBLECOLLATERALNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 6 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 7 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 8 | COLLATERALBUCKETNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | ELIGIBLECOLLATERALTYPE | NVARCHAR2(2000) | NOT NULL |  |  |
| 10 | PRINVALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 11 | CPTYVALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 12 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 13 | VARIATIONHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 14 | VARIATIONPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 15 | LOCKUPHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 16 | LOCKUPPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 17 | GUARANTEEHELDVALUATIONPCT | NUMBER(19,4) | NULL |  |  |
| 18 | GUARANTEEPOSTEDVALUATIONPCT | NUMBER(19,4) | NULL |  |  |
| 19 | SURPLUSHELDVALUATIONPCT | NUMBER(19,4) | NULL |  |  |
| 20 | SURPLUSPOSTEDVALUATIONPCT | NUMBER(19,4) | NULL |  |  |

## ENTITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | ISPRINCIPAL | NUMBER(1,0) | NULL |  |  |
| 4 | ISCOUNTERPARTY | NUMBER(1,0) | NULL |  |  |
| 5 | ISCUSTODIAN | NUMBER(1,0) | NULL |  |  |
| 6 | ISISSUER | NUMBER(1,0) | NULL |  |  |
| 7 | ISCREDITSUPPORTPROVIDER | NUMBER(1,0) | NULL |  |  |
| 8 | LEGALNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | DOMICILEID | NUMBER(18,0) | NULL |  |  |
| 10 | DOMICILENAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | INDUSTRYSECTORID | NUMBER(18,0) | NULL |  |  |
| 12 | INDUSTRYSECTORNAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | SOURCEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 14 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 15 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 16 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 17 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 18 | ORGANIZATIONTYPEID | NUMBER(18,0) | NULL |  |  |
| 19 | ORGANIZATIONTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 20 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 21 | PARENTENTITYID | NUMBER(18,0) | NULL |  |  |
| 22 | PARENTENTITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 23 | CUSTODIANIDENTIFIER | NVARCHAR2(510) | NULL |  |  |
| 24 | ISCLEARINGCLIENT | NUMBER(1,0) | NULL |  |  |
| 25 | ISCLEARINGMEMBER | NUMBER(1,0) | NULL |  |  |
| 26 | ISCENTRALCOUNTERPARTY | NUMBER(1,0) | NULL |  |  |
| 27 | EXTENTITYMEMO | NVARCHAR2(500) | NULL |  |  |
| 28 | EXTENTITYCODE | NVARCHAR2(500) | NULL |  |  |
| 29 | EXTBRANCHCODE | NVARCHAR2(500) | NULL |  |  |
| 30 | EXTNDG | NVARCHAR2(500) | NULL |  |  |
| 31 | EXTHOLDINGCOMPCODE | NVARCHAR2(500) | NULL |  |  |
| 32 | EXTRISKWIEGHT | NUMBER(20,6) | NULL |  |  |
| 33 | EXTCUSTBANKACCT | NVARCHAR2(500) | NULL |  |  |
| 34 | EXTTYPECPTY | NVARCHAR2(500) | NULL |  |  |
| 35 | EXTISAVISSPECIALCTPY | NUMBER(1,0) | NULL |  |  |
| 36 | EXTISPAYMENTSPECIALCTPY | NUMBER(1,0) | NULL |  |  |
| 37 | MONITORSHORTPOSITIONS | NVARCHAR2(10) | NULL |  |  |
| 38 | EXTNEWNDG | NUMBER(20,6) | NULL |  |  |
| 39 | EXTRESENDDATE | DATE | NULL |  |  |
| 40 | EXTSNDG | VARCHAR2(20) | NULL |  |  |
| 41 | EXTGMCODE | VARCHAR2(20) | NULL |  |  |
| 42 | EXTPAYMENTINHIBITIONEXCEPT | NVARCHAR2(500) | NULL |  |  |
| 43 | EXTPAYMENTINHIBITIONFUTURE | NUMBER(1,0) | NULL |  |  |
| 44 | EXTNEXTPAYMENTINHIBITIONON | DATE | NULL |  |  |
| 45 | EXTEXEMPTION | NUMBER(1,0) | NULL |  |  |
| 46 | ENTITYGROUPS | CLOB | NULL |  |  |

## ENTITIESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | ISPRINCIPAL | NUMBER(1,0) | NULL |  |  |
| 4 | ISCOUNTERPARTY | NUMBER(1,0) | NULL |  |  |
| 5 | ISCUSTODIAN | NUMBER(1,0) | NULL |  |  |
| 6 | ISISSUER | NUMBER(1,0) | NULL |  |  |
| 7 | ISCREDITSUPPORTPROVIDER | NUMBER(1,0) | NULL |  |  |
| 8 | LEGALNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | DOMICILEID | NUMBER(18,0) | NULL |  |  |
| 10 | DOMICILENAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | INDUSTRYSECTORID | NUMBER(18,0) | NULL |  |  |
| 12 | INDUSTRYSECTORNAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | SOURCEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 14 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 15 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 16 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 17 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 18 | ORGANIZATIONTYPEID | NUMBER(18,0) | NULL |  |  |
| 19 | ORGANIZATIONTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 20 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 21 | PARENTENTITYID | NUMBER(18,0) | NULL |  |  |
| 22 | PARENTENTITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 23 | CUSTODIANIDENTIFIER | NVARCHAR2(510) | NULL |  |  |
| 24 | ISCLEARINGCLIENT | NUMBER(1,0) | NULL |  |  |
| 25 | ISCLEARINGMEMBER | NUMBER(1,0) | NULL |  |  |
| 26 | ISCENTRALCOUNTERPARTY | NUMBER(1,0) | NULL |  |  |
| 27 | EXTENTITYMEMO | NVARCHAR2(500) | NULL |  |  |
| 28 | EXTENTITYCODE | NVARCHAR2(500) | NULL |  |  |
| 29 | EXTBRANCHCODE | NVARCHAR2(500) | NULL |  |  |
| 30 | EXTNDG | NVARCHAR2(500) | NULL |  |  |
| 31 | EXTHOLDINGCOMPCODE | NVARCHAR2(500) | NULL |  |  |
| 32 | EXTRISKWIEGHT | NUMBER(20,6) | NULL |  |  |
| 33 | EXTCUSTBANKACCT | NVARCHAR2(500) | NULL |  |  |
| 34 | EXTTYPECPTY | NVARCHAR2(500) | NULL |  |  |
| 35 | EXTISAVISSPECIALCTPY | NUMBER(1,0) | NULL |  |  |
| 36 | EXTISPAYMENTSPECIALCTPY | NUMBER(1,0) | NULL |  |  |
| 37 | MONITORSHORTPOSITIONS | NVARCHAR2(10) | NULL |  |  |
| 38 | EXTNEWNDG | NUMBER(20,6) | NULL |  |  |
| 39 | EXTRESENDDATE | DATE | NULL |  |  |
| 40 | EXTSNDG | VARCHAR2(20) | NULL |  |  |
| 41 | EXTGMCODE | VARCHAR2(20) | NULL |  |  |
| 42 | EXTPAYMENTINHIBITIONEXCEPT | NVARCHAR2(500) | NULL |  |  |
| 43 | EXTPAYMENTINHIBITIONFUTURE | NUMBER(1,0) | NULL |  |  |
| 44 | EXTNEXTPAYMENTINHIBITIONON | DATE | NULL |  |  |
| 45 | EXTEXEMPTION | NUMBER(1,0) | NULL |  |  |
| 46 | ENTITYGROUPS | CLOB | NULL |  |  |

## ENTITYALIASES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | ALIASGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | ALIASGROUPNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 5 | ENTITYALIASID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | ENTITYALIASNAME | NVARCHAR2(510) | NOT NULL |  |  |

## ENTITYALIASESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | ALIASGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | ALIASGROUPNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 5 | ENTITYALIASID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | ENTITYALIASNAME | NVARCHAR2(510) | NOT NULL |  |  |

## ENTITYCREDITRATINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 2 | ENTITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGENCYID | NUMBER(18,0) | NULL |  |  |
| 4 | AGENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | RATING | NVARCHAR2(2000) | NULL |  |  |
| 6 | DEBTSTRUCTURE | NVARCHAR2(2000) | NULL |  |  |
| 7 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 8 | RECORDDATE | DATE | NOT NULL |  |  |
| 9 | EXPIRYTIME | DATE | NOT NULL |  |  |

## ENTITYCREDITRATINGSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 2 | ENTITYNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGENCYID | NUMBER(18,0) | NULL |  |  |
| 4 | AGENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | RATING | NVARCHAR2(2000) | NULL |  |  |
| 6 | DEBTSTRUCTURE | NVARCHAR2(2000) | NULL |  |  |
| 7 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | RECORDDATE | DATE | NOT NULL |  |  |
| 9 | EXPIRYTIME | DATE | NOT NULL |  |  |

## ENTITYGROUPALIASES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYGROUPALIASID | NUMBER(19,0) | NULL |  |  |
| 2 | ENTITYGROUPALIASNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | ENTITYGROUPALIASGROUPID | NUMBER(19,0) | NULL |  |  |
| 4 | ENTITYGROUPID | NUMBER(19,0) | NULL |  |  |
| 5 | CREATEDBYID | NUMBER(19,0) | NULL |  |  |
| 6 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | CREATEDBYTIMESTAMP | DATE | NULL |  |  |
| 8 | UPDATEDBYID | NUMBER(19,0) | NULL |  |  |
| 9 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 10 | UPDATEDBYTIMESTAMP | DATE | NULL |  |  |
| 11 | ALIASGROUPNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 12 | ENTITYGROUPNAME | NVARCHAR2(510) | NOT NULL |  |  |

## ENTITYGROUPALIASESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYGROUPALIASID | NUMBER(19,0) | NULL |  |  |
| 2 | ENTITYGROUPALIASNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | ENTITYGROUPALIASGROUPID | NUMBER(19,0) | NULL |  |  |
| 4 | ENTITYGROUPID | NUMBER(19,0) | NULL |  |  |
| 5 | CREATEDBYID | NUMBER(19,0) | NULL |  |  |
| 6 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | CREATEDBYTIMESTAMP | DATE | NULL |  |  |
| 8 | UPDATEDBYID | NUMBER(19,0) | NULL |  |  |
| 9 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 10 | UPDATEDBYTIMESTAMP | DATE | NULL |  |  |
| 11 | ALIASGROUPNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 12 | ENTITYGROUPNAME | NVARCHAR2(510) | NOT NULL |  |  |

## ENTITYGROUPS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYGROUPID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | ENTITYGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 4 | CREATEDBYID | NUMBER(19,0) | NULL |  |  |
| 5 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | CREATEDBYTIMESTAMP | DATE | NULL |  |  |
| 7 | UPDATEDBYID | NUMBER(19,0) | NULL |  |  |
| 8 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | UPDATEDBYTIMESTAMP | DATE | NULL |  |  |
| 10 | APPLIESTO | NVARCHAR2(510) | NULL |  |  |

## ENTITYGROUPSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYGROUPID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | ENTITYGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 4 | CREATEDBYID | NUMBER(19,0) | NULL |  |  |
| 5 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | CREATEDBYTIMESTAMP | DATE | NULL |  |  |
| 7 | UPDATEDBYID | NUMBER(19,0) | NULL |  |  |
| 8 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | UPDATEDBYTIMESTAMP | DATE | NULL |  |  |
| 10 | APPLIESTO | NVARCHAR2(510) | NULL |  |  |

## EQUITYINSTRUMENTPRICES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | PRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 4 | PRICESOURCENAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | PRICEDATE | DATE | NULL |  |  |
| 6 | LOADDATE | DATE | NULL |  |  |
| 7 | ISBIDASKSPREADCALCULATED | NUMBER(1,0) | NULL |  |  |
| 8 | BIDPRICE | NUMBER(17,8) | NULL |  |  |
| 9 | MIDPRICE | NUMBER(17,8) | NULL |  |  |
| 10 | ASKPRICE | NUMBER(17,8) | NULL |  |  |
| 11 | ISMANUAL | NUMBER(1,0) | NULL |  |  |
| 12 | IMPORTID | NUMBER(18,0) | NULL |  |  |
| 13 | IMPORTNAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 15 | UPDATEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 16 | LOADTIMESTAMP | DATE | NULL |  |  |
| 17 | RECORDDATE | DATE | NULL |  |  |
| 18 | EXPIRYTIME | DATE | NULL |  |  |
| 19 | BIDASKSPREAD | NUMBER(18,0) | NULL |  |  |

## EQUITYINSTRUMENTPRICESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | PRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 4 | PRICESOURCENAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | PRICEDATE | DATE | NULL |  |  |
| 6 | LOADDATE | DATE | NULL |  |  |
| 7 | ISBIDASKSPREADCALCULATED | NUMBER(1,0) | NULL |  |  |
| 8 | BIDPRICE | NUMBER(17,8) | NULL |  |  |
| 9 | MIDPRICE | NUMBER(17,8) | NULL |  |  |
| 10 | ASKPRICE | NUMBER(17,8) | NULL |  |  |
| 11 | ISMANUAL | NUMBER(1,0) | NULL |  |  |
| 12 | IMPORTID | NUMBER(18,0) | NULL |  |  |
| 13 | IMPORTNAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 15 | UPDATEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 16 | LOADTIMESTAMP | DATE | NULL |  |  |
| 17 | RECORDDATE | DATE | NULL |  |  |
| 18 | EXPIRYTIME | DATE | NULL |  |  |
| 19 | BIDASKSPREAD | NUMBER(18,0) | NULL |  |  |

## EXPOSUREOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEREFERENCE | NVARCHAR2(2000) | NOT NULL |  |  |
| 2 | TRADEIMPORTID | NUMBER(18,0) | NULL |  |  |
| 3 | TRADEIMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 4 | TRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 5 | ORIGINALAMOUNT | NUMBER(19,4) | NULL |  |  |
| 6 | UPDATEDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 7 | ORIGINALDATE | DATE | NULL |  |  |
| 8 | UPDATEDDATE | DATE | NULL |  |  |
| 9 | ORIGINALCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | ORIGINALCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 11 | UPDATEDCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | UPDATEDCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 13 | EXPIRATIONDATE | DATE | NULL |  |  |
| 14 | IMPORTID | NUMBER(18,0) | NULL |  |  |
| 15 | IMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 16 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 17 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 18 | UPDATEDBYNAME | NVARCHAR2(100) | NULL |  |  |
| 19 | UPDATEDEXPAMTINAGMTCCY | NUMBER(19,4) | NULL |  |  |
| 20 | UPDATEDEXPAMTINSYSCCY | NUMBER(19,4) | NULL |  |  |
| 21 | OVERRIDECOMMENT | NVARCHAR2(1000) | NULL |  |  |

## EXPOSUREOVERRIDESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEREFERENCE | NVARCHAR2(2000) | NOT NULL |  |  |
| 2 | TRADEIMPORTID | NUMBER(18,0) | NULL |  |  |
| 3 | TRADEIMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 4 | TRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 5 | ORIGINALAMOUNT | NUMBER(19,4) | NULL |  |  |
| 6 | UPDATEDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 7 | ORIGINALDATE | DATE | NULL |  |  |
| 8 | UPDATEDDATE | DATE | NULL |  |  |
| 9 | ORIGINALCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | ORIGINALCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 11 | UPDATEDCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | UPDATEDCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 13 | EXPIRATIONDATE | DATE | NULL |  |  |
| 14 | IMPORTID | NUMBER(18,0) | NULL |  |  |
| 15 | IMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 16 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 17 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 18 | UPDATEDBYNAME | NVARCHAR2(100) | NULL |  |  |
| 19 | UPDATEDEXPAMTINAGMTCCY | NUMBER(19,4) | NULL |  |  |
| 20 | UPDATEDEXPAMTINSYSCCY | NUMBER(19,4) | NULL |  |  |
| 21 | OVERRIDECOMMENT | NVARCHAR2(1000) | NULL |  |  |

## EXTERNALAPPROVALS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXTERNALAPPROVALID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | EXTERNALTYPES | NVARCHAR2(510) | NULL |  |  |
| 3 | EXTERNALNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | DISPLAY | NCLOB | NULL |  |  |
| 5 | ACTION | NVARCHAR2(510) | NULL |  |  |
| 6 | STATUS | NVARCHAR2(510) | NULL |  |  |
| 7 | EXTERNALID | NVARCHAR2(510) | NULL |  |  |
| 8 | CREATEDBY | NVARCHAR2(510) | NULL |  |  |
| 9 | CREATEDDATE | TIMESTAMP(4) | NULL |  |  |
| 10 | APPROVEDBY | NVARCHAR2(510) | NULL |  |  |
| 11 | APPROVEDDATE | TIMESTAMP(4) | NULL |  |  |
| 12 | REJECTEDBY | NVARCHAR2(510) | NULL |  |  |
| 13 | REJECTEDDATE | TIMESTAMP(4) | NULL |  |  |
| 14 | REASON | NVARCHAR2(510) | NULL |  |  |

## EXTERNALAPPROVALSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXTERNALAPPROVALID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | EXTERNALTYPES | NVARCHAR2(510) | NULL |  |  |
| 3 | EXTERNALNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | DISPLAY | NCLOB | NULL |  |  |
| 5 | ACTION | NVARCHAR2(510) | NULL |  |  |
| 6 | STATUS | NVARCHAR2(510) | NULL |  |  |
| 7 | EXTERNALID | NVARCHAR2(510) | NULL |  |  |
| 8 | CREATEDBY | NVARCHAR2(510) | NULL |  |  |
| 9 | CREATEDDATE | TIMESTAMP(4) | NULL |  |  |
| 10 | APPROVEDBY | NVARCHAR2(510) | NULL |  |  |
| 11 | APPROVEDDATE | TIMESTAMP(4) | NULL |  |  |
| 12 | REJECTEDBY | NVARCHAR2(510) | NULL |  |  |
| 13 | REJECTEDDATE | TIMESTAMP(4) | NULL |  |  |
| 14 | REASON | NVARCHAR2(510) | NULL |  |  |

## EXTRACTRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXTRACTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTRACTTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 3 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 4 | RECORDSEXTRACTED | NUMBER(9,0) | NULL |  |  |
| 5 | EXTRACTTIMESTAMP | DATE | NOT NULL |  |  |
| 6 | STARTDATE | DATE | NOT NULL |  |  |
| 7 | ENDDATE | DATE | NOT NULL |  |  |
| 8 | ERRORMESSAGE | NVARCHAR2(2000) | NULL |  |  |
| 9 | EXECUTIONID | NVARCHAR2(100) | NULL |  |  |

## FXRATES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 2 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | RATE | NUMBER(21,6) | NULL |  |  |
| 4 | RATEDATE | DATE | NULL |  |  |
| 5 | RECORDDATE | DATE | NULL |  |  |
| 6 | EXPIRYTIME | DATE | NULL |  |  |
| 7 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 8 | FXRATESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 9 | FXRATESOURCENAME | NVARCHAR2(200) | NULL |  |  |
| 10 | QUOTECONVENTION | NVARCHAR2(200) | NULL |  |  |
| 11 | PRIMARYRATE | NUMBER(21,6) | NULL |  |  |

## FXRATESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 2 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | RATE | NUMBER(21,6) | NULL |  |  |
| 4 | RATEDATE | DATE | NULL |  |  |
| 5 | RECORDDATE | DATE | NULL |  |  |
| 6 | EXPIRYTIME | DATE | NULL |  |  |
| 7 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | FXRATESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 9 | FXRATESOURCENAME | NVARCHAR2(200) | NULL |  |  |
| 10 | QUOTECONVENTION | NVARCHAR2(200) | NULL |  |  |
| 11 | PRIMARYRATE | NUMBER(21,6) | NULL |  |  |

## GLOBALCONCENTRATIONLIMITS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 2 | POSITIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 3 | CALCULATEDDATETIME | DATE | NULL |  |  |
| 4 | GLOBALLIMITMESSAGEID | NUMBER(18,0) | NULL |  |  |
| 5 | MESSAGECONTEXT | NVARCHAR2(510) | NULL |  |  |
| 6 | NUMERATOR | NUMBER(19,4) | NULL |  |  |
| 7 | DENOMINATOR | NUMBER(19,4) | NULL |  |  |
| 8 | PERCENTAGE | NUMBER(19,4) | NULL |  |  |
| 9 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 10 | AGREEMENTBUSINESSLINE | NVARCHAR2(510) | NULL |  |  |
| 11 | AGREEMENTMANAGINGLOCATION | NVARCHAR2(510) | NULL |  |  |
| 12 | AGREEMENTCOUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 13 | PRIMARYINSTRUMENTIDENTIFIER | NVARCHAR2(100) | NULL |  |  |
| 14 | INSTRUMENTDESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 15 | INSTRUMENTMATURITYDATE | DATE | NULL |  |  |
| 16 | MARKETVALUESYSTEMCURRENCY | NUMBER(19,4) | NULL |  |  |
| 17 | INSTRUMENTCURRENCYCODE | NVARCHAR2(6) | NULL |  |  |
| 18 | INSTRUMENTISSUERNAME | NVARCHAR2(510) | NULL |  |  |
| 19 | INSTRUMENTISSUERDOMICILE | NVARCHAR2(510) | NULL |  |  |
| 20 | INSTRUMENTCLASS | NVARCHAR2(510) | NULL |  |  |
| 21 | INSTRUMENTTYPENAME | NVARCHAR2(510) | NULL |  |  |
| 22 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 23 | LASTUPDATETIMESTAMP | DATE | NULL |  |  |

## GLOBALCONCENTRATIONLIMITSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 2 | POSITIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 3 | CALCULATEDDATETIME | DATE | NULL |  |  |
| 4 | GLOBALLIMITMESSAGEID | NUMBER(18,0) | NULL |  |  |
| 5 | MESSAGECONTEXT | NVARCHAR2(510) | NULL |  |  |
| 6 | NUMERATOR | NUMBER(19,4) | NULL |  |  |
| 7 | DENOMINATOR | NUMBER(19,4) | NULL |  |  |
| 8 | PERCENTAGE | NUMBER(19,4) | NULL |  |  |
| 9 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 10 | AGREEMENTBUSINESSLINE | NVARCHAR2(510) | NULL |  |  |
| 11 | AGREEMENTMANAGINGLOCATION | NVARCHAR2(510) | NULL |  |  |
| 12 | AGREEMENTCOUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 13 | PRIMARYINSTRUMENTIDENTIFIER | NVARCHAR2(100) | NULL |  |  |
| 14 | INSTRUMENTDESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 15 | INSTRUMENTMATURITYDATE | DATE | NULL |  |  |
| 16 | MARKETVALUESYSTEMCURRENCY | NUMBER(19,4) | NULL |  |  |
| 17 | INSTRUMENTCURRENCYCODE | NVARCHAR2(6) | NULL |  |  |
| 18 | INSTRUMENTISSUERNAME | NVARCHAR2(510) | NULL |  |  |
| 19 | INSTRUMENTISSUERDOMICILE | NVARCHAR2(510) | NULL |  |  |
| 20 | INSTRUMENTCLASS | NVARCHAR2(510) | NULL |  |  |
| 21 | INSTRUMENTTYPENAME | NVARCHAR2(510) | NULL |  |  |
| 22 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 23 | LASTUPDATETIMESTAMP | DATE | NULL |  |  |

## HOLIDAYCALENDERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | HOLIDAYCALENDARID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | HOLIDAYCALENDARNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 4 | HOLIDAYID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | HOLIDAYNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | HOLIDAYDATE | DATE | NULL |  |  |
| 7 | LOADTIMESTAMP | DATE | NOT NULL | `(SYSDATE)` |  |

## HOLIDAYCALENDERSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | HOLIDAYCALENDARID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | HOLIDAYCALENDARNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 4 | HOLIDAYID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | HOLIDAYNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | HOLIDAYDATE | DATE | NULL |  |  |
| 7 | LOADTIMESTAMP | DATE | NOT NULL |  |  |

## INSTRUCTIONINSTRUMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SETTLEMENTINSTRUCTIONNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | INSTRUMENTNAME | NVARCHAR2(510) | NULL |  |  |

## INSTRUCTIONINSTRUMENTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SETTLEMENTINSTRUCTIONNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | INSTRUMENTNAME | NVARCHAR2(510) | NULL |  |  |

## INSTRUCTIONINSTRUMENTTYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SETTLEMENTINSTRUCTIONNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | INSTRUMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | INSTRUMENTTYPENAME | NVARCHAR2(510) | NULL |  |  |
| 5 | DESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 6 | INSTRUMENTCLASS | NVARCHAR2(510) | NULL |  |  |
| 7 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |

## INSTRUCTIONINSTRUMENTTYPESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SETTLEMENTINSTRUCTIONNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | INSTRUMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | INSTRUMENTTYPENAME | NVARCHAR2(510) | NULL |  |  |
| 5 | DESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 6 | INSTRUMENTCLASS | NVARCHAR2(510) | NULL |  |  |
| 7 | LOADTIMESTAMP | DATE | NOT NULL |  |  |

## INSTRUMENTCREDITRATINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRIMARYIDENTIFIER | NVARCHAR2(2000) | NOT NULL |  |  |
| 3 | RATING | NVARCHAR2(100) | NOT NULL |  |  |
| 4 | ORDINAL | NUMBER(9,0) | NOT NULL |  |  |
| 5 | DEBTSTRUCTURE | NVARCHAR2(510) | NOT NULL |  |  |
| 6 | RATINGAGENCYNAME | NVARCHAR2(510) | NOT NULL |  |  |

## INSTRUMENTCREDITRATINGSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRIMARYIDENTIFIER | NVARCHAR2(2000) | NOT NULL |  |  |
| 3 | RATING | NVARCHAR2(100) | NOT NULL |  |  |
| 4 | ORDINAL | NUMBER(9,0) | NOT NULL |  |  |
| 5 | DEBTSTRUCTURE | NVARCHAR2(510) | NOT NULL |  |  |
| 6 | RATINGAGENCYNAME | NVARCHAR2(510) | NOT NULL |  |  |

## INSTRUMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRIMARYIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 3 | PRIMARYIDENTIFIERTYPE | NVARCHAR2(2000) | NULL |  |  |
| 4 | DESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 5 | ISIN | NVARCHAR2(2000) | NULL |  |  |
| 6 | SEDOL | NVARCHAR2(2000) | NULL |  |  |
| 7 | CUSIP | NVARCHAR2(2000) | NULL |  |  |
| 8 | INSTRUMENTCLASS | NVARCHAR2(2000) | NULL |  |  |
| 9 | TYPEID | NUMBER(18,0) | NULL |  |  |
| 10 | TYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | ISSUERID | NUMBER(18,0) | NULL |  |  |
| 14 | ISSUERNAME | NVARCHAR2(2000) | NULL |  |  |
| 15 | ISSUEDATE | DATE | NULL |  |  |
| 16 | MATURITYDATE | DATE | NULL |  |  |
| 17 | AMOUNTISSUED | NUMBER(21,6) | NULL |  |  |
| 18 | AMOUNTOUTSTANDING | NUMBER(21,6) | NULL |  |  |
| 19 | ASSETCOUNTRYID | NUMBER(18,0) | NULL |  |  |
| 20 | ASSETCOUNTRYNAME | NVARCHAR2(2000) | NULL |  |  |
| 21 | COLLATERALTYPEID | NUMBER(18,0) | NULL |  |  |
| 22 | COLLATERALTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 23 | DTCELIGIBLE | NUMBER(1,0) | NULL |  |  |
| 24 | ISSENIOR | NUMBER(1,0) | NULL |  |  |
| 25 | CREDITENHANCED | NUMBER(1,0) | NULL |  |  |
| 26 | ISSUERINDUSTRYGROUPID | NUMBER(18,0) | NULL |  |  |
| 27 | ISSUERINDUSTRYGROUPNAME | NVARCHAR2(2000) | NULL |  |  |
| 28 | COUPON | NUMBER(21,6) | NULL |  |  |
| 29 | COUPONTYPEID | NUMBER(18,0) | NULL |  |  |
| 30 | COUPONTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 31 | INDEXLINKED | NUMBER(1,0) | NULL |  |  |
| 32 | INSTRUMENTUNDERLYINGSECTORID | NUMBER(18,0) | NULL |  |  |
| 33 | INSTRUMENTUNDERLYINGSECTORNAME | NVARCHAR2(2000) | NULL |  |  |
| 34 | AGENCY | NUMBER(1,0) | NULL |  |  |
| 35 | BONDPURPOSEID | NUMBER(18,0) | NULL |  |  |
| 36 | BONDPURPOSENAME | NVARCHAR2(2000) | NULL |  |  |
| 37 | FUNDSOURCEID | NUMBER(18,0) | NULL |  |  |
| 38 | FUNDSOURCENAME | NVARCHAR2(2000) | NULL |  |  |
| 39 | MUNICIPALREGIONID | NUMBER(18,0) | NULL |  |  |
| 40 | MUNICIPALREGIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 41 | MUNICIPALSTATEID | NUMBER(18,0) | NULL |  |  |
| 42 | MUNICIPALSTATENAME | NVARCHAR2(2000) | NULL |  |  |
| 43 | PASSTHROUGH | NUMBER(1,0) | NULL |  |  |
| 44 | PERCENTSINGLEFAMILY | NUMBER(21,6) | NULL |  |  |
| 45 | LENDERCREDITQUALITY | NVARCHAR2(2000) | NULL |  |  |
| 46 | SEASONINGID | NUMBER(18,0) | NULL |  |  |
| 47 | SEASONINGNAME | NVARCHAR2(2000) | NULL |  |  |
| 48 | SECONDLIENPERCENTAGE | NUMBER(21,6) | NULL |  |  |
| 49 | WEIGHTEDAVERAGECOUPON | NUMBER(21,6) | NULL |  |  |
| 50 | WEIGHTEDAVERAGEFICO | NUMBER(21,6) | NULL |  |  |
| 51 | WEIGHTEDAVERAGELIFE | NUMBER(21,6) | NULL |  |  |
| 52 | WEIGHTEDAVERAGELOANSIZE | NUMBER(21,6) | NULL |  |  |
| 53 | WEIGHTEDAVERAGELTV | NUMBER(21,6) | NULL |  |  |
| 54 | ISSUERDOMICILEID | NUMBER(18,0) | NULL |  |  |
| 55 | ISSUERDOMICILENAME | NVARCHAR2(2000) | NULL |  |  |
| 56 | ISSUERINDUSTRYSECTORID | NUMBER(18,0) | NULL |  |  |
| 57 | ISSUERINDUSTRYSECTORNAME | NVARCHAR2(2000) | NULL |  |  |
| 58 | ISSUERTYPEID | NUMBER(18,0) | NULL |  |  |
| 59 | ISSUERTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 60 | SPWATCHID | NUMBER(18,0) | NULL |  |  |
| 61 | SPWATCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 62 | MOODYWATCHID | NUMBER(18,0) | NULL |  |  |
| 63 | MOODYWATCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 64 | FITCHWATCHID | NUMBER(18,0) | NULL |  |  |
| 65 | FITCHWATCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 66 | NUMBEROFRATINGS | NUMBER(9,0) | NULL |  |  |
| 67 | ISCONVERTIBLEBOND | NUMBER(1,0) | NULL |  |  |
| 68 | INTERNALIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 69 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 70 | NEXTCOUPONDATE | DATE | NULL |  |  |
| 71 | ISSINKABLEFUND | NUMBER(1,0) | NULL |  |  |
| 72 | ISCALLABLEBOND | NUMBER(1,0) | NULL |  |  |
| 73 | ISCOVEREDBOND | NUMBER(1,0) | NULL |  |  |
| 74 | ISPRIVATEPLACEMENT | NUMBER(1,0) | NULL |  |  |
| 75 | WEIGHTEDAVERAGEMATURITY | NUMBER(8,2) | NULL |  |  |
| 76 | ISPUTABLE | NUMBER(1,0) | NULL |  |  |
| 77 | ISBULLET | NUMBER(1,0) | NULL |  |  |
| 78 | ISCREDITLINKEDNOTES | NUMBER(1,0) | NULL |  |  |
| 79 | ISGUARANTEED | NUMBER(1,0) | NULL |  |  |
| 80 | ISSUINGLCNUMBER | NVARCHAR2(60) | NULL |  |  |
| 81 | CONFIRMINGBANKID | NUMBER(18,0) | NULL |  |  |
| 82 | CONFIRMINGLCNUMBER | NVARCHAR2(60) | NULL |  |  |
| 83 | ADVISINGBANKID | NUMBER(18,0) | NULL |  |  |
| 84 | ADVISINGLCNUMBER | NVARCHAR2(60) | NULL |  |  |
| 85 | CONFIRMINGBANKNAME | NVARCHAR2(2000) | NULL |  |  |
| 86 | ADVISINGBANKNAME | NVARCHAR2(2000) | NULL |  |  |
| 87 | LASTRATINGIMPORTTIMSTAMP | DATE | NULL |  |  |
| 88 | COSTOFFUNDING | NUMBER(19,2) | NULL |  |  |
| 89 | MINIMUMLOT | NUMBER(14,2) | NULL |  |  |
| 90 | LOTINCREMENT | NUMBER(14,2) | NULL |  |  |
| 91 | TICKER | NVARCHAR2(60) | NULL |  |  |
| 92 | EXCHANGEID | NUMBER(18,0) | NULL |  |  |
| 93 | MARKETCAPITALIZATION | NUMBER(16,2) | NULL |  |  |
| 94 | BETA | NUMBER(6,2) | NULL |  |  |
| 95 | SHARESOUTSTANDING | NUMBER(18,0) | NULL |  |  |
| 96 | SHARESISSUED | NUMBER(18,0) | NULL |  |  |
| 97 | UCITSCOMPLIANT | NUMBER(1,0) | NULL |  |  |
| 98 | AVERAGEVOLATILITY | NUMBER(10,4) | NULL |  |  |
| 99 | TRADINGVOLUME | NUMBER(18,0) | NULL |  |  |
| 100 | PERATIO | NUMBER(6,2) | NULL |  |  |
| 101 | INSTITUTIONALOWNERSHIPPCT | NUMBER(6,3) | NULL |  |  |
| 102 | ISOPTIONABLE | NUMBER(1,0) | NULL |  |  |
| 103 | DIVIDENDPAYABLE | NUMBER(11,2) | NULL |  |  |
| 104 | DIVIDENDCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 105 | NEXTDIVIDENDDATE | DATE | NULL |  |  |
| 106 | EXDATE | DATE | NULL |  |  |
| 107 | RECORDDATE | DATE | NULL |  |  |
| 108 | PAST52WEEKHIGH | NUMBER(17,8) | NULL |  |  |
| 109 | PAST52WEEKLOW | NUMBER(17,8) | NULL |  |  |
| 110 | PRICETERMS | NVARCHAR2(40) | NULL |  |  |
| 111 | CREATEDBY | NVARCHAR2(510) | NULL |  |  |
| 112 | CREATEDBYDATE | DATE | NULL |  |  |
| 113 | UPDATEDBY | NVARCHAR2(510) | NULL |  |  |
| 114 | UPDATEDBYDATE | DATE | NULL |  |  |
| 115 | EXCHANGENAME | NVARCHAR2(510) | NULL |  |  |
| 116 | EXTFLOATINGRATEN_INFORMATION | NUMBER(1,0) | NULL |  |  |
| 117 | EXTELIGIBILITY_OVERWRITE | NUMBER(1,0) | NULL |  |  |
| 118 | MORTGAGEFACTOR | NUMBER(25,10) | NULL |  |  |

## INSTRUMENTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRIMARYIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 3 | PRIMARYIDENTIFIERTYPE | NVARCHAR2(2000) | NULL |  |  |
| 4 | DESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 5 | ISIN | NVARCHAR2(2000) | NULL |  |  |
| 6 | SEDOL | NVARCHAR2(2000) | NULL |  |  |
| 7 | CUSIP | NVARCHAR2(2000) | NULL |  |  |
| 8 | INSTRUMENTCLASS | NVARCHAR2(2000) | NULL |  |  |
| 9 | TYPEID | NUMBER(18,0) | NULL |  |  |
| 10 | TYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | ISSUERID | NUMBER(18,0) | NULL |  |  |
| 14 | ISSUERNAME | NVARCHAR2(2000) | NULL |  |  |
| 15 | ISSUEDATE | DATE | NULL |  |  |
| 16 | MATURITYDATE | DATE | NULL |  |  |
| 17 | AMOUNTISSUED | NUMBER(21,6) | NULL |  |  |
| 18 | AMOUNTOUTSTANDING | NUMBER(21,6) | NULL |  |  |
| 19 | ASSETCOUNTRYID | NUMBER(18,0) | NULL |  |  |
| 20 | ASSETCOUNTRYNAME | NVARCHAR2(2000) | NULL |  |  |
| 21 | COLLATERALTYPEID | NUMBER(18,0) | NULL |  |  |
| 22 | COLLATERALTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 23 | DTCELIGIBLE | NUMBER(1,0) | NULL |  |  |
| 24 | ISSENIOR | NUMBER(1,0) | NULL |  |  |
| 25 | CREDITENHANCED | NUMBER(1,0) | NULL |  |  |
| 26 | ISSUERINDUSTRYGROUPID | NUMBER(18,0) | NULL |  |  |
| 27 | ISSUERINDUSTRYGROUPNAME | NVARCHAR2(2000) | NULL |  |  |
| 28 | COUPON | NUMBER(21,6) | NULL |  |  |
| 29 | COUPONTYPEID | NUMBER(18,0) | NULL |  |  |
| 30 | COUPONTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 31 | INDEXLINKED | NUMBER(1,0) | NULL |  |  |
| 32 | INSTRUMENTUNDERLYINGSECTORID | NUMBER(18,0) | NULL |  |  |
| 33 | INSTRUMENTUNDERLYINGSECTORNAME | NVARCHAR2(2000) | NULL |  |  |
| 34 | AGENCY | NUMBER(1,0) | NULL |  |  |
| 35 | BONDPURPOSEID | NUMBER(18,0) | NULL |  |  |
| 36 | BONDPURPOSENAME | NVARCHAR2(2000) | NULL |  |  |
| 37 | FUNDSOURCEID | NUMBER(18,0) | NULL |  |  |
| 38 | FUNDSOURCENAME | NVARCHAR2(2000) | NULL |  |  |
| 39 | MUNICIPALREGIONID | NUMBER(18,0) | NULL |  |  |
| 40 | MUNICIPALREGIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 41 | MUNICIPALSTATEID | NUMBER(18,0) | NULL |  |  |
| 42 | MUNICIPALSTATENAME | NVARCHAR2(2000) | NULL |  |  |
| 43 | PASSTHROUGH | NUMBER(1,0) | NULL |  |  |
| 44 | PERCENTSINGLEFAMILY | NUMBER(21,6) | NULL |  |  |
| 45 | LENDERCREDITQUALITY | NVARCHAR2(2000) | NULL |  |  |
| 46 | SEASONINGID | NUMBER(18,0) | NULL |  |  |
| 47 | SEASONINGNAME | NVARCHAR2(2000) | NULL |  |  |
| 48 | SECONDLIENPERCENTAGE | NUMBER(21,6) | NULL |  |  |
| 49 | WEIGHTEDAVERAGECOUPON | NUMBER(21,6) | NULL |  |  |
| 50 | WEIGHTEDAVERAGEFICO | NUMBER(21,6) | NULL |  |  |
| 51 | WEIGHTEDAVERAGELIFE | NUMBER(21,6) | NULL |  |  |
| 52 | WEIGHTEDAVERAGELOANSIZE | NUMBER(21,6) | NULL |  |  |
| 53 | WEIGHTEDAVERAGELTV | NUMBER(21,6) | NULL |  |  |
| 54 | ISSUERDOMICILEID | NUMBER(18,0) | NULL |  |  |
| 55 | ISSUERDOMICILENAME | NVARCHAR2(2000) | NULL |  |  |
| 56 | ISSUERINDUSTRYSECTORID | NUMBER(18,0) | NULL |  |  |
| 57 | ISSUERINDUSTRYSECTORNAME | NVARCHAR2(2000) | NULL |  |  |
| 58 | ISSUERTYPEID | NUMBER(18,0) | NULL |  |  |
| 59 | ISSUERTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 60 | SPWATCHID | NUMBER(18,0) | NULL |  |  |
| 61 | SPWATCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 62 | MOODYWATCHID | NUMBER(18,0) | NULL |  |  |
| 63 | MOODYWATCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 64 | FITCHWATCHID | NUMBER(18,0) | NULL |  |  |
| 65 | FITCHWATCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 66 | NUMBEROFRATINGS | NUMBER(9,0) | NULL |  |  |
| 67 | ISCONVERTIBLEBOND | NUMBER(1,0) | NULL |  |  |
| 68 | INTERNALIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 69 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 70 | NEXTCOUPONDATE | DATE | NULL |  |  |
| 71 | ISSINKABLEFUND | NUMBER(1,0) | NULL |  |  |
| 72 | ISCALLABLEBOND | NUMBER(1,0) | NULL |  |  |
| 73 | ISCOVEREDBOND | NUMBER(1,0) | NULL |  |  |
| 74 | ISPRIVATEPLACEMENT | NUMBER(1,0) | NULL |  |  |
| 75 | WEIGHTEDAVERAGEMATURITY | NUMBER(8,2) | NULL |  |  |
| 76 | ISPUTABLE | NUMBER(1,0) | NULL |  |  |
| 77 | ISBULLET | NUMBER(1,0) | NULL |  |  |
| 78 | ISCREDITLINKEDNOTES | NUMBER(1,0) | NULL |  |  |
| 79 | ISGUARANTEED | NUMBER(1,0) | NULL |  |  |
| 80 | ISSUINGLCNUMBER | NVARCHAR2(60) | NULL |  |  |
| 81 | CONFIRMINGBANKID | NUMBER(18,0) | NULL |  |  |
| 82 | CONFIRMINGLCNUMBER | NVARCHAR2(60) | NULL |  |  |
| 83 | ADVISINGBANKID | NUMBER(18,0) | NULL |  |  |
| 84 | ADVISINGLCNUMBER | NVARCHAR2(60) | NULL |  |  |
| 85 | CONFIRMINGBANKNAME | NVARCHAR2(2000) | NULL |  |  |
| 86 | ADVISINGBANKNAME | NVARCHAR2(2000) | NULL |  |  |
| 87 | LASTRATINGIMPORTTIMSTAMP | DATE | NULL |  |  |
| 88 | COSTOFFUNDING | NUMBER(19,2) | NULL |  |  |
| 89 | MINIMUMLOT | NUMBER(14,2) | NULL |  |  |
| 90 | LOTINCREMENT | NUMBER(14,2) | NULL |  |  |
| 91 | TICKER | NVARCHAR2(60) | NULL |  |  |
| 92 | EXCHANGEID | NUMBER(18,0) | NULL |  |  |
| 93 | MARKETCAPITALIZATION | NUMBER(16,2) | NULL |  |  |
| 94 | BETA | NUMBER(6,2) | NULL |  |  |
| 95 | SHARESOUTSTANDING | NUMBER(18,0) | NULL |  |  |
| 96 | SHARESISSUED | NUMBER(18,0) | NULL |  |  |
| 97 | UCITSCOMPLIANT | NUMBER(1,0) | NULL |  |  |
| 98 | AVERAGEVOLATILITY | NUMBER(10,4) | NULL |  |  |
| 99 | TRADINGVOLUME | NUMBER(18,0) | NULL |  |  |
| 100 | PERATIO | NUMBER(6,2) | NULL |  |  |
| 101 | INSTITUTIONALOWNERSHIPPCT | NUMBER(6,3) | NULL |  |  |
| 102 | ISOPTIONABLE | NUMBER(1,0) | NULL |  |  |
| 103 | DIVIDENDPAYABLE | NUMBER(11,2) | NULL |  |  |
| 104 | DIVIDENDCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 105 | NEXTDIVIDENDDATE | DATE | NULL |  |  |
| 106 | EXDATE | DATE | NULL |  |  |
| 107 | RECORDDATE | DATE | NULL |  |  |
| 108 | PAST52WEEKHIGH | NUMBER(17,8) | NULL |  |  |
| 109 | PAST52WEEKLOW | NUMBER(17,8) | NULL |  |  |
| 110 | PRICETERMS | NVARCHAR2(40) | NULL |  |  |
| 111 | CREATEDBY | NVARCHAR2(510) | NULL |  |  |
| 112 | CREATEDBYDATE | DATE | NULL |  |  |
| 113 | UPDATEDBY | NVARCHAR2(510) | NULL |  |  |
| 114 | UPDATEDBYDATE | DATE | NULL |  |  |
| 115 | EXCHANGENAME | NVARCHAR2(510) | NULL |  |  |
| 116 | EXTFLOATINGRATEN_INFORMATION | NUMBER(1,0) | NULL |  |  |
| 117 | EXTELIGIBILITY_OVERWRITE | NUMBER(1,0) | NULL |  |  |
| 118 | MORTGAGEFACTOR | NUMBER(25,10) | NULL |  |  |

## INSTRUMENTTYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTTYPEID | NUMBER(18,0) | NULL |  |  |
| 2 | INSTRUMENTTYPENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | INSTRUMENTCLASS | NVARCHAR2(2000) | NULL |  |  |
| 5 | CREATEDBY | NVARCHAR2(510) | NULL |  |  |
| 6 | CREATEDBYTIMESTAMP | DATE | NULL |  |  |
| 7 | UPDATEDBY | NVARCHAR2(510) | NULL |  |  |
| 8 | UPDATEDBYTIMESTAMP | DATE | NULL |  |  |
| 9 | EXTLDBVALUE | NVARCHAR2(500) | NULL |  |  |

## INSTRUMENTTYPESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTTYPEID | NUMBER(18,0) | NULL |  |  |
| 2 | INSTRUMENTTYPENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | INSTRUMENTCLASS | NVARCHAR2(2000) | NULL |  |  |
| 5 | CREATEDBY | NVARCHAR2(510) | NULL |  |  |
| 6 | CREATEDBYTIMESTAMP | DATE | NULL |  |  |
| 7 | UPDATEDBY | NVARCHAR2(510) | NULL |  |  |
| 8 | UPDATEDBYTIMESTAMP | DATE | NULL |  |  |
| 9 | EXTLDBVALUE | NVARCHAR2(500) | NULL |  |  |

## INTERESTACCRUALS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 4 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | PERIODEND | DATE | NULL |  |  |
| 6 | DUETO | NVARCHAR2(2000) | NULL |  |  |
| 7 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 8 | CALCULATIONDATE | DATE | NULL |  |  |
| 9 | RECORDDATE | DATE | NULL |  |  |
| 10 | EXPIRYTIME | DATE | NULL |  |  |
| 11 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 12 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 14 | NETTINGTYPE | NVARCHAR2(2000) | NULL |  |  |
| 15 | ACCRUEDINTERESTHELD | NUMBER(19,4) | NULL |  |  |
| 16 | ACCRUEDINTERESTPOSTED | NUMBER(19,4) | NULL |  |  |
| 17 | ACCRUEDINTERESTTOTAL | NUMBER(19,4) | NULL |  |  |
| 18 | PERIODSTARTHELD | DATE | NULL |  |  |
| 19 | PERIODSTARTPOSTED | DATE | NULL |  |  |
| 20 | ENDINGBALANCEHELD | NUMBER(19,4) | NULL |  |  |
| 21 | ENDINGBALANCEPOSTED | NUMBER(19,4) | NULL |  |  |
| 22 | NEXTPERIODEND | DATE | NULL |  |  |
| 23 | HELDPERIODEND | DATE | NULL |  |  |
| 24 | POSTEDPERIODEND | DATE | NULL |  |  |
| 25 | HELDINDEX | NVARCHAR2(510) | NULL |  |  |
| 26 | POSTEDINDEX | NVARCHAR2(510) | NULL |  |  |
| 27 | HELDSPREAD | NUMBER(19,4) | NULL |  |  |
| 28 | POSTEDSPREAD | NUMBER(19,4) | NULL |  |  |
| 29 | HELDDAYCOUNTCONVENTION | NVARCHAR2(510) | NULL |  |  |
| 30 | POSTEDDAYCOUNTCONVENTION | NVARCHAR2(510) | NULL |  |  |
| 31 | HELDCALCULATIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 32 | POSTEDCALCULATIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 33 | ACCRUEDINTERESTHELDDUETO | NVARCHAR2(2000) | NULL |  |  |
| 34 | ACCRUEDINTERESTPOSTEDDUETO | NVARCHAR2(2000) | NULL |  |  |

## INTERESTACCRUALSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 4 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | PERIODEND | DATE | NULL |  |  |
| 6 | DUETO | NVARCHAR2(2000) | NULL |  |  |
| 7 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 8 | CALCULATIONDATE | DATE | NULL |  |  |
| 9 | RECORDDATE | DATE | NULL |  |  |
| 10 | EXPIRYTIME | DATE | NULL |  |  |
| 11 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 12 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 14 | NETTINGTYPE | NVARCHAR2(2000) | NULL |  |  |
| 15 | ACCRUEDINTERESTHELD | NUMBER(19,4) | NULL |  |  |
| 16 | ACCRUEDINTERESTPOSTED | NUMBER(19,4) | NULL |  |  |
| 17 | ACCRUEDINTERESTTOTAL | NUMBER(19,4) | NULL |  |  |
| 18 | PERIODSTARTHELD | DATE | NULL |  |  |
| 19 | PERIODSTARTPOSTED | DATE | NULL |  |  |
| 20 | ENDINGBALANCEHELD | NUMBER(19,4) | NULL |  |  |
| 21 | ENDINGBALANCEPOSTED | NUMBER(19,4) | NULL |  |  |
| 22 | NEXTPERIODEND | DATE | NULL |  |  |
| 23 | HELDPERIODEND | DATE | NULL |  |  |
| 24 | POSTEDPERIODEND | DATE | NULL |  |  |
| 25 | HELDINDEX | NVARCHAR2(510) | NULL |  |  |
| 26 | POSTEDINDEX | NVARCHAR2(510) | NULL |  |  |
| 27 | HELDSPREAD | NUMBER(19,4) | NULL |  |  |
| 28 | POSTEDSPREAD | NUMBER(19,4) | NULL |  |  |
| 29 | HELDDAYCOUNTCONVENTION | NVARCHAR2(510) | NULL |  |  |
| 30 | POSTEDDAYCOUNTCONVENTION | NVARCHAR2(510) | NULL |  |  |
| 31 | HELDCALCULATIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 32 | POSTEDCALCULATIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 33 | ACCRUEDINTERESTHELDDUETO | NVARCHAR2(2000) | NULL |  |  |
| 34 | ACCRUEDINTERESTPOSTEDDUETO | NVARCHAR2(2000) | NULL |  |  |

## INTERESTPAYMENTPERIODS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTPAYMENTPERIODID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 5 | CURRENCYNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 7 | INSTRUMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | POSITIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 9 | COLLATERALMARGINTYPE | NVARCHAR2(510) | NULL |  |  |
| 10 | PERIODSTART | DATE | NULL |  |  |
| 11 | PERIODEND | DATE | NULL |  |  |
| 12 | NEXTPERIODEND | DATE | NULL |  |  |
| 13 | ACCRUEDINTEREST | NUMBER(21,6) | NULL |  |  |
| 14 | OPENINGBALANCE | NUMBER(21,6) | NULL |  |  |
| 15 | ENDINGBALANCE | NUMBER(21,6) | NULL |  |  |
| 16 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 17 | MARKETINDEXNAME | NVARCHAR2(510) | NULL |  |  |
| 18 | SPREAD | NUMBER(21,6) | NULL |  |  |
| 19 | DAYCOUNTCONVENTION | NVARCHAR2(510) | NULL |  |  |
| 20 | CALCULATIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 21 | MANAGINGLOCATION | NVARCHAR2(510) | NULL |  |  |
| 22 | BUSINESSLINE | NVARCHAR2(510) | NULL |  |  |

## INTERESTPAYMENTPERIODSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTPAYMENTPERIODID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 5 | CURRENCYNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 7 | INSTRUMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | POSITIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 9 | COLLATERALMARGINTYPE | NVARCHAR2(510) | NULL |  |  |
| 10 | PERIODSTART | DATE | NULL |  |  |
| 11 | PERIODEND | DATE | NULL |  |  |
| 12 | NEXTPERIODEND | DATE | NULL |  |  |
| 13 | ACCRUEDINTEREST | NUMBER(21,6) | NULL |  |  |
| 14 | OPENINGBALANCE | NUMBER(21,6) | NULL |  |  |
| 15 | ENDINGBALANCE | NUMBER(21,6) | NULL |  |  |
| 16 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 17 | MARKETINDEXNAME | NVARCHAR2(510) | NULL |  |  |
| 18 | SPREAD | NUMBER(21,6) | NULL |  |  |
| 19 | DAYCOUNTCONVENTION | NVARCHAR2(510) | NULL |  |  |
| 20 | CALCULATIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 21 | MANAGINGLOCATION | NVARCHAR2(510) | NULL |  |  |
| 22 | BUSINESSLINE | NVARCHAR2(510) | NULL |  |  |

## INTERESTPAYMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTPAYMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 4 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 5 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | PERIODEND | DATE | NULL |  |  |
| 7 | DUETO | NVARCHAR2(2000) | NULL |  |  |
| 8 | AGREEDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 9 | SETTLEMENTDATE | DATE | NULL |  |  |
| 10 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 11 | CALCULATIONDATE | DATE | NULL |  |  |
| 12 | TRANSITIONBYID | NUMBER(18,0) | NULL |  |  |
| 13 | TRANSITIONBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 15 | PAYMENTSTATE | NVARCHAR2(100) | NULL |  |  |
| 16 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 17 | WORKFLOWSTATEID | NUMBER(18,0) | NULL |  |  |
| 18 | WORKFLOWSTATENAME | NVARCHAR2(2000) | NULL |  |  |
| 19 | TRANSITIONENDTIMESTAMP | DATE | NULL |  |  |
| 20 | AGREEDPAYMENTTYPE | NVARCHAR2(100) | NULL |  |  |
| 21 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 22 | NETTINGTYPE | NVARCHAR2(2000) | NULL |  |  |
| 23 | ACCRUEDINTERESTHELD | NUMBER(19,4) | NULL |  |  |
| 24 | ACCRUEDINTERESTPOSTED | NUMBER(19,4) | NULL |  |  |
| 25 | ACCRUEDINTERESTTOTAL | NUMBER(19,4) | NULL |  |  |
| 26 | PERIODSTARTHELD | DATE | NULL |  |  |
| 27 | PERIODSTARTPOSTED | DATE | NULL |  |  |
| 28 | ENDINGBALANCEHELD | NUMBER(19,4) | NULL |  |  |
| 29 | ENDINGBALANCEPOSTED | NUMBER(19,4) | NULL |  |  |
| 30 | NEXTPERIODEND | DATE | NULL |  |  |
| 31 | HELDPERIODEND | DATE | NULL |  |  |
| 32 | POSTEDPERIODEND | DATE | NULL |  |  |
| 33 | HELDINDEX | NVARCHAR2(510) | NULL |  |  |
| 34 | POSTEDINDEX | NVARCHAR2(510) | NULL |  |  |
| 35 | HELDSPREAD | NUMBER(19,4) | NULL |  |  |
| 36 | POSTEDSPREAD | NUMBER(19,4) | NULL |  |  |
| 37 | HELDDAYCOUNTCONVENTION | NVARCHAR2(510) | NULL |  |  |
| 38 | POSTEDDAYCOUNTCONVENTION | NVARCHAR2(510) | NULL |  |  |
| 39 | HELDCALCULATIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 40 | POSTEDCALCULATIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 41 | UUID | NVARCHAR2(100) | NULL |  |  |
| 42 | ACCRUEDINTERESTHELDDUETO | NVARCHAR2(2000) | NULL |  |  |
| 43 | ACCRUEDINTERESTPOSTEDDUETO | NVARCHAR2(2000) | NULL |  |  |

## INTERESTPAYMENTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTPAYMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 4 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 5 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | PERIODEND | DATE | NULL |  |  |
| 7 | DUETO | NVARCHAR2(2000) | NULL |  |  |
| 8 | AGREEDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 9 | SETTLEMENTDATE | DATE | NULL |  |  |
| 10 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 11 | CALCULATIONDATE | DATE | NULL |  |  |
| 12 | TRANSITIONBYID | NUMBER(18,0) | NULL |  |  |
| 13 | TRANSITIONBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 15 | PAYMENTSTATE | NVARCHAR2(100) | NULL |  |  |
| 16 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 17 | WORKFLOWSTATEID | NUMBER(18,0) | NULL |  |  |
| 18 | WORKFLOWSTATENAME | NVARCHAR2(2000) | NULL |  |  |
| 19 | TRANSITIONENDTIMESTAMP | DATE | NULL |  |  |
| 20 | AGREEDPAYMENTTYPE | NVARCHAR2(100) | NULL |  |  |
| 21 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 22 | NETTINGTYPE | NVARCHAR2(2000) | NULL |  |  |
| 23 | ACCRUEDINTERESTHELD | NUMBER(19,4) | NULL |  |  |
| 24 | ACCRUEDINTERESTPOSTED | NUMBER(19,4) | NULL |  |  |
| 25 | ACCRUEDINTERESTTOTAL | NUMBER(19,4) | NULL |  |  |
| 26 | PERIODSTARTHELD | DATE | NULL |  |  |
| 27 | PERIODSTARTPOSTED | DATE | NULL |  |  |
| 28 | ENDINGBALANCEHELD | NUMBER(19,4) | NULL |  |  |
| 29 | ENDINGBALANCEPOSTED | NUMBER(19,4) | NULL |  |  |
| 30 | NEXTPERIODEND | DATE | NULL |  |  |
| 31 | HELDPERIODEND | DATE | NULL |  |  |
| 32 | POSTEDPERIODEND | DATE | NULL |  |  |
| 33 | HELDINDEX | NVARCHAR2(510) | NULL |  |  |
| 34 | POSTEDINDEX | NVARCHAR2(510) | NULL |  |  |
| 35 | HELDSPREAD | NUMBER(19,4) | NULL |  |  |
| 36 | POSTEDSPREAD | NUMBER(19,4) | NULL |  |  |
| 37 | HELDDAYCOUNTCONVENTION | NVARCHAR2(510) | NULL |  |  |
| 38 | POSTEDDAYCOUNTCONVENTION | NVARCHAR2(510) | NULL |  |  |
| 39 | HELDCALCULATIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 40 | POSTEDCALCULATIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 41 | UUID | NVARCHAR2(100) | NULL |  |  |
| 42 | ACCRUEDINTERESTHELDDUETO | NVARCHAR2(2000) | NULL |  |  |
| 43 | ACCRUEDINTERESTPOSTEDDUETO | NVARCHAR2(2000) | NULL |  |  |

## INTERESTPAYMENTTIMINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PAYMENTPERIODENDING | NVARCHAR2(510) | NULL |  |  |
| 3 | INTERESTPAYMENTTIMINGID | NUMBER(18,0) | NULL |  |  |

## INTERESTPAYMENTTIMINGSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PAYMENTPERIODENDING | NVARCHAR2(510) | NULL |  |  |
| 3 | INTERESTPAYMENTTIMINGID | NUMBER(18,0) | NULL |  |  |

## INTERESTTERMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 4 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 5 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | POSITIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 7 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 8 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 9 | MARKETINDEXNAME | NVARCHAR2(2000) | NULL |  |  |
| 10 | CALCULATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 11 | SPREAD | NUMBER(10,6) | NULL |  |  |
| 12 | COMPOUNDINGHOLIDAYCALENDARID | NUMBER(18,0) | NULL |  |  |
| 13 | COMPOUNDINGHOLIDAYCALENDARNAME | NVARCHAR2(2000) | NULL |  |  |

## INTERESTTERMSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 4 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 5 | CURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | POSITIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 7 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 8 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 9 | MARKETINDEXNAME | NVARCHAR2(2000) | NULL |  |  |
| 10 | CALCULATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 11 | SPREAD | NUMBER(10,6) | NULL |  |  |
| 12 | COMPOUNDINGHOLIDAYCALENDARID | NUMBER(18,0) | NULL |  |  |
| 13 | COMPOUNDINGHOLIDAYCALENDARNAME | NVARCHAR2(2000) | NULL |  |  |

## JOBEXECUTION

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXECUTIONID | NVARCHAR2(100) | NOT NULL |  |  |
| 2 | EXECUTIONSTARTTIMESTAMP | DATE | NULL |  |  |
| 3 | EXECUTIONENDTIMESTAMP | DATE | NULL |  |  |
| 4 | EXECUTIONSTATUS | NUMBER(18,0) | NULL |  |  |

## JOBEXECUTIONBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXECUTIONID | NVARCHAR2(100) | NOT NULL |  |  |
| 2 | EXECUTIONSTARTTIMESTAMP | DATE | NULL |  |  |
| 3 | EXECUTIONENDTIMESTAMP | DATE | NULL |  |  |
| 4 | EXECUTIONSTATUS | NUMBER(18,0) | NULL |  |  |

## LOCKUPMARGINOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEREFERENCE | NVARCHAR2(2000) | NOT NULL |  |  |
| 2 | TRADEIMPORTID | NUMBER(18,0) | NULL |  |  |
| 3 | TRADEIMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 4 | TRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 5 | ORIGINALAMOUNT | NUMBER(19,4) | NULL |  |  |
| 6 | UPDATEDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 7 | ORIGINALMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 8 | UPDATEDMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 9 | ORIGINALCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | ORIGINALCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 11 | UPDATEDCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | UPDATEDCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 13 | ORIGINALDUETO | NVARCHAR2(2000) | NULL |  |  |
| 14 | UPDATEDDUETO | NVARCHAR2(2000) | NULL |  |  |
| 15 | EXPIRATIONDATE | DATE | NULL |  |  |
| 16 | IMPORTID | NUMBER(18,0) | NULL |  |  |
| 17 | IMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 18 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 19 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 20 | UPDATEDBYNAME | NVARCHAR2(100) | NULL |  |  |
| 21 | UPDATEDAMOUNTAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 22 | UPDATEDAMOUNTSYSTEM | NUMBER(19,4) | NULL |  |  |
| 23 | OVERRIDECOMMENT | NVARCHAR2(1000) | NULL |  |  |

## LOCKUPMARGINOVERRIDESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEREFERENCE | NVARCHAR2(2000) | NOT NULL |  |  |
| 2 | TRADEIMPORTID | NUMBER(18,0) | NULL |  |  |
| 3 | TRADEIMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 4 | TRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 5 | ORIGINALAMOUNT | NUMBER(19,4) | NULL |  |  |
| 6 | UPDATEDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 7 | ORIGINALMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 8 | UPDATEDMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 9 | ORIGINALCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | ORIGINALCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 11 | UPDATEDCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | UPDATEDCURRENCYNAME | NVARCHAR2(6) | NULL |  |  |
| 13 | ORIGINALDUETO | NVARCHAR2(2000) | NULL |  |  |
| 14 | UPDATEDDUETO | NVARCHAR2(2000) | NULL |  |  |
| 15 | EXPIRATIONDATE | DATE | NULL |  |  |
| 16 | IMPORTID | NUMBER(18,0) | NULL |  |  |
| 17 | IMPORTNAME | NVARCHAR2(200) | NULL |  |  |
| 18 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 19 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 20 | UPDATEDBYNAME | NVARCHAR2(100) | NULL |  |  |
| 21 | UPDATEDAMOUNTAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 22 | UPDATEDAMOUNTSYSTEM | NUMBER(19,4) | NULL |  |  |
| 23 | OVERRIDECOMMENT | NVARCHAR2(1000) | NULL |  |  |

## MARGINCALLS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCALLID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CALCULATIONDATE | DATE | NULL |  |  |
| 3 | CALCULATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | AGREEMENTTYPE | NVARCHAR2(2000) | NULL |  |  |
| 7 | PRINCIPALMANAGINGLOCATION | NVARCHAR2(2000) | NULL |  |  |
| 8 | TOTALCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 9 | TOTALCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 10 | NETREQUIREMENT | NUMBER(21,6) | NULL |  |  |
| 11 | NETEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 12 | DELIVERTOPRINCIPAL | NUMBER(21,6) | NULL |  |  |
| 13 | DELIVERTOCOUNTERPARTY | NUMBER(21,6) | NULL |  |  |
| 14 | RETURNTOPRINCIPAL | NUMBER(21,6) | NULL |  |  |
| 15 | RETURNTOCOUNTERPARTY | NUMBER(21,6) | NULL |  |  |
| 16 | NETTEDADDITIONALMARGIN | NUMBER(21,6) | NULL |  |  |
| 17 | NETTEDADDITIONALMARGINDUETO | NVARCHAR2(2000) | NULL |  |  |
| 18 | THRESHOLD | NUMBER(21,6) | NULL |  |  |
| 19 | MINIMUMTRANSFERAMOUNT | NUMBER(21,6) | NULL |  |  |
| 20 | ROUNDINGMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 21 | MARGINTERMTYPE | NVARCHAR2(2000) | NULL |  |  |
| 22 | ROUNDINGAMOUNT | NUMBER(21,6) | NULL |  |  |
| 23 | STATUS | NVARCHAR2(2000) | NULL |  |  |
| 24 | EXCLUDESTRADEDAYS | NVARCHAR2(2000) | NULL |  |  |
| 25 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 26 | AGREEMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 27 | NETREQUIREMENTFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 28 | NETEXPOSUREFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 29 | CALLTYPE | NVARCHAR2(2000) | NULL |  |  |
| 30 | CALLAMOUNT | NUMBER(21,6) | NULL |  |  |
| 31 | CALLAMOUNTINSYSTEMCURRENCY | NUMBER(21,6) | NULL |  |  |
| 32 | CALLAMOUNTFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 33 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 34 | PRINCIPALNAME | NVARCHAR2(2000) | NULL |  |  |
| 35 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 36 | COUNTERPARTYNAME | NVARCHAR2(2000) | NULL |  |  |
| 37 | BUSINESSLINE | NVARCHAR2(2000) | NULL |  |  |
| 38 | ISFULLRETURNPRINCIPAL | NUMBER(1,0) | NULL |  |  |
| 39 | ISFULLRETURNCOUNTERPARTY | NUMBER(1,0) | NULL |  |  |
| 40 | LOCKUPCALCULATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 41 | LOCKUPMARGIN | NUMBER(21,6) | NULL |  |  |
| 42 | LOCKUPMARGINDUETO | NVARCHAR2(2000) | NULL |  |  |
| 43 | VARIATIONCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 44 | VARIATIONCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 45 | ASSOCIATEDCALLAMOUNT | NUMBER(21,6) | NULL |  |  |
| 46 | ASSOCIATEDCALLTYPE | NVARCHAR2(2000) | NULL |  |  |
| 47 | SOURCEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 48 | VALUATIONDATE | DATE | NULL |  |  |
| 49 | NOACTIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 50 | WAIVECATEGORIES | NVARCHAR2(2000) | NULL |  |  |
| 51 | TRANSITIONCOMMENT | NVARCHAR2(2000) | NULL |  |  |
| 52 | SENTTIMESTAMP | DATE | NULL |  |  |
| 53 | TRANSITIONSTATUS | NVARCHAR2(2000) | NULL |  |  |
| 54 | TRANSITIONERRORCONTEXT | NVARCHAR2(2000) | NULL |  |  |
| 55 | WORKFLOWSTATEID | NUMBER(18,0) | NULL |  |  |
| 56 | WORKFLOWSTATENAME | NVARCHAR2(2000) | NULL |  |  |
| 57 | MARGINCALCULATIONRESULTID | NUMBER(18,0) | NULL |  |  |
| 58 | NOTIFICATIONTIME | DATE | NULL |  |  |
| 59 | COUNTERPARTYMANAGINGLOCATION | NVARCHAR2(2000) | NULL |  |  |
| 60 | HASNEWCALCULATION | NUMBER(1,0) | NULL |  |  |
| 61 | AGREEDTOTAL | NUMBER(21,6) | NULL |  |  |
| 62 | AGREEDDELIVER | NUMBER(21,6) | NULL |  |  |
| 63 | AGREEDRETURN | NUMBER(21,6) | NULL |  |  |
| 64 | PRIORAGREEDDELIVERTOPRIN | NUMBER(21,6) | NULL |  |  |
| 65 | PRIORAGREEDDELIVERTOCPTY | NUMBER(21,6) | NULL |  |  |
| 66 | PRIORAGREEDRETURNTOPRIN | NUMBER(21,6) | NULL |  |  |
| 67 | PRIORAGREEDRETURNTOCPTY | NUMBER(21,6) | NULL |  |  |
| 68 | PRIORAGREEDLOCKUPDELIVERTOPRIN | NUMBER(21,6) | NULL |  |  |
| 69 | PRIORAGREEDLOCKUPDELIVERTOCPTY | NUMBER(21,6) | NULL |  |  |
| 70 | AGREEDLOCKUPDELIVER | NUMBER(21,6) | NULL |  |  |
| 71 | HELDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 72 | POSTEDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 73 | DISPUTEAMOUNT | NUMBER(21,6) | NULL |  |  |
| 74 | DISPUTEDATE | DATE | NULL |  |  |
| 75 | COUNTERPARTYCALLAMOUNT | NUMBER(21,6) | NULL |  |  |
| 76 | CPTYCALLAMOUNTINSYSTEMCCY | NUMBER(21,6) | NULL |  |  |
| 77 | TRANSITIONREQUESTEDBYID | NUMBER(18,0) | NULL |  |  |
| 78 | TRANSITIONREQUESTEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 79 | TRANSITIONENDTIMESTAMP | DATE | NULL |  |  |
| 80 | MOVEMENTSTOTALMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 81 | WORKFLOWID | NUMBER(18,0) | NULL |  |  |
| 82 | VALUATIONAGENT | NVARCHAR2(2000) | NULL |  |  |
| 83 | REVIEWEDBYID | NUMBER(18,0) | NULL |  |  |
| 84 | REVIEWEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 85 | REVIEWEDBYTIMESTAMP | DATE | NULL |  |  |
| 86 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 87 | ISCANCELLED | NUMBER(1,0) | NULL |  |  |
| 88 | ISCOMPLETE | NUMBER(1,0) | NULL |  |  |
| 89 | WAIVEDDATETIME | DATE | NULL |  |  |
| 90 | WORKFLOWSTATELONGNAME | NVARCHAR2(2000) | NULL |  |  |
| 91 | DISPUTEAMOUNTINSYSTEMCCY | NUMBER(21,6) | NULL |  |  |
| 92 | DISPUTECOMMENT | NVARCHAR2(2000) | NULL |  |  |
| 93 | DISPUTEREASONS | NVARCHAR2(2000) | NULL |  |  |
| 94 | CPTYLOCKUPMARGIN | NUMBER(21,6) | NULL |  |  |
| 95 | CPTYLOCKUPMARGINFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 96 | CPTYADDITIONALMARGIN | NUMBER(21,6) | NULL |  |  |
| 97 | CPTYADDITIONALMARGINFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 98 | CPTYNETEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 99 | CPTYNETEXPOSUREFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 100 | CPTYVARIATIONDEMAND | NUMBER(21,6) | NULL |  |  |
| 101 | CPTYVARIATIONCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 102 | CPTYVARIATIONCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 103 | CALCULATIONTIMESTAMP | DATE | NULL |  |  |
| 104 | INTRANSITDELIVERTOPRIN | NUMBER(21,6) | NULL |  |  |
| 105 | INTRANSITDELIVERTOCPTY | NUMBER(21,6) | NULL |  |  |
| 106 | INTRANSITRETURNTOPRIN | NUMBER(21,6) | NULL |  |  |
| 107 | INTRANSITRETURNTOCPTY | NUMBER(21,6) | NULL |  |  |
| 108 | SETTLEDVARIATIONPOSTED | NUMBER(21,6) | NULL |  |  |
| 109 | SETTLEDVARIATIONHELD | NUMBER(21,6) | NULL |  |  |
| 110 | ACCRUEDVARIATIONHELD | NUMBER(21,6) | NULL |  |  |
| 111 | ACCRUEDVARIATIONPOSTED | NUMBER(21,6) | NULL |  |  |
| 112 | INTRANSITLOCKUPDELIVERTOCPTY | NUMBER(21,6) | NULL |  |  |
| 113 | INTRANSITLOCKUPDELIVERTOPRIN | NUMBER(21,6) | NULL |  |  |
| 114 | SETTLEDLOCKUPHELD | NUMBER(21,6) | NULL |  |  |
| 115 | SETTLEDLOCKUPPOSTED | NUMBER(21,6) | NULL |  |  |
| 116 | ACCRUEDLOCKUPHELD | NUMBER(21,6) | NULL |  |  |
| 117 | ACCRUEDLOCKUPPOSTED | NUMBER(21,6) | NULL |  |  |
| 118 | LOCKUPDELIVERTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 119 | LOCKUPDELIVERTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 120 | LOCKUPRETURNTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 121 | LOCKUPRETURNTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 122 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 123 | TOTALINTRANSITDELIVERTOPRIN | NUMBER(21,6) | NULL |  |  |
| 124 | TOTALINTRANSITDELIVERTOCPTY | NUMBER(21,6) | NULL |  |  |
| 125 | TOTALINTRANSITRETURNTOPRIN | NUMBER(21,6) | NULL |  |  |
| 126 | TOTALINTRANSITRETURNTOCPTY | NUMBER(21,6) | NULL |  |  |
| 127 | TOTALPRINCOLLATERALOBLIGATION | NUMBER(21,6) | NULL |  |  |
| 128 | TOTALCPTYCOLLATERALOBLIGATION | NUMBER(21,6) | NULL |  |  |
| 129 | INTRANSITLOCKUPRETURNTOPRIN | NUMBER(21,6) | NULL |  |  |
| 130 | INTRANSITLOCKUPRETURNTOCPTY | NUMBER(21,6) | NULL |  |  |
| 131 | SYSTEMCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 132 | SYSTEMCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 133 | TOTALCOLLATERALSETTLEDHELD | NUMBER(21,6) | NULL |  |  |
| 134 | TOTALCOLLATERALSETTLEDPOSTED | NUMBER(21,6) | NULL |  |  |
| 135 | LOCKUPCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 136 | LOCKUPCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 137 | AGREEDLOCKUPRETURN | NUMBER(21,6) | NULL |  |  |
| 138 | PRIORAGREEDLOCKUPRETURNTOPRIN | NUMBER(21,6) | NULL |  |  |
| 139 | PRIORAGREEDLOCKUPRETURNTOCPTY | NUMBER(21,6) | NULL |  |  |
| 140 | LOCKUPMINIMUMTRANSFERAMOUNT | NUMBER(18,0) | NULL |  |  |
| 141 | LOCKUPROUNDINGAMOUNT | NUMBER(18,0) | NULL |  |  |
| 142 | LOCKUPROUNDINGMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 143 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 144 | AGREEMENTGROUPNAME | NVARCHAR2(2000) | NULL |  |  |
| 145 | CPTYVARIATIONANTICDEMAND | NUMBER(21,6) | NULL |  |  |
| 146 | CPTYLOCKUPDEMAND | NUMBER(21,6) | NULL |  |  |
| 147 | CPTYLOCKUPANTICDEMAND | NUMBER(21,6) | NULL |  |  |
| 148 | CPTYLOCKUPCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 149 | CPTYLOCKUPCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 150 | WAIVEDBYID | NUMBER(18,0) | NULL |  |  |
| 151 | WAIVEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 152 | WAIVEDTIMESTAMP | DATE | NULL |  |  |
| 153 | COLLATERALHELDPERCCP | NUMBER(19,4) | NULL |  |  |
| 154 | COLLATERALPOSTEDPERCCP | NUMBER(19,4) | NULL |  |  |
| 155 | IMPORTCONFIGURATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 156 | IMPORTWARNING | NVARCHAR2(1000) | NULL |  |  |
| 157 | LOCKUPMARGINAMOUNTPERCCP | NUMBER(19,4) | NULL |  |  |
| 158 | LOCKUPMARGINAMOUNTPERCCPDUETO | NVARCHAR2(510) | NULL |  |  |
| 159 | NETEXPOSUREAMOUNTPERCCP | NUMBER(19,4) | NULL |  |  |
| 160 | NETEXPOSUREAMOUNTPERCCPFAVOROF | NVARCHAR2(510) | NULL |  |  |
| 161 | CLEARINGCLIENTNAME | NVARCHAR2(510) | NULL |  |  |
| 162 | AGREEMENTCURRENCYFXRATE | NUMBER(21,6) | NULL |  |  |
| 163 | TIMEZONE | NVARCHAR2(510) | NULL |  |  |
| 164 | NOACTIONDETAIL | NVARCHAR2(510) | NULL |  |  |
| 165 | LOCKUPMARGINRETURN | NUMBER(19,4) | NULL |  |  |
| 166 | LOCKUPASSOCIATEDCALLTYPE | NVARCHAR2(510) | NULL |  |  |
| 167 | LOCKUPASSOCIATEDCALLAMOUNT | NUMBER(19,4) | NULL |  |  |
| 168 | GROUPCALLSHEETSENDSTATUS | NVARCHAR2(510) | NULL |  |  |
| 169 | GROUPCALLSHEETSENDERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 170 | CENTRALCOUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 171 | CENTRALCOUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 172 | LOCKUPTHRESHOLD | NUMBER(19,0) | NULL |  |  |
| 173 | SENTGROUPEDCOLLNOTICETIMESTAMP | DATE | NULL |  |  |
| 174 | COUNTERPARTYCALLTYPE | NVARCHAR2(510) | NULL |  |  |
| 175 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 176 | ISINTRADAY | NUMBER(1,0) | NULL |  |  |
| 177 | PREVIOUSAGREEMENTCCYID | NUMBER(18,0) | NULL |  |  |
| 178 | PREVIOUSCALLAMOUNT | NUMBER(19,2) | NULL |  |  |
| 179 | PREVIOUSCALLTYPE | NVARCHAR2(2000) | NULL |  |  |
| 180 | ISREPLACEMENT | NUMBER | NULL | `(0)` |  |
| 181 | ISNETTABLE | NUMBER | NULL |  |  |
| 182 | COMPARISONCALLTYPE | NVARCHAR2(60) | NULL |  |  |
| 183 | CPTYCALLAMOUNTDIFFERENCE | NUMBER(19,2) | NULL |  |  |
| 184 | COMPARISONCALLAMOUNT | NUMBER(19,2) | NULL |  |  |
| 185 | ASSOCIATEDPARTIALAGREEID | NUMBER(18,0) | NULL |  |  |
| 186 | REQUIREDAPPROVALLEVEL | NVARCHAR2(2000) | NULL |  |  |
| 187 | EXTERNALID | NVARCHAR2(100) | NULL |  |  |
| 188 | ISAUTOAPPROVABLE | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 189 | HASAUTOAPPROVALEXCEPTIONS | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 190 | HASAUTOAPPROVALOVERRIDES | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 191 | HASMESSAGINGERROR | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 192 | MESSAGINGCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 193 | IMRAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 194 | IARAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 195 | IMIATIMESTAMPUTC | DATE | NULL |  |  |
| 196 | IMRAWDUETO | NVARCHAR2(510) | NULL |  |  |
| 197 | IARAWDUETO | NVARCHAR2(510) | NULL |  |  |
| 198 | COUNTERPARTYTIMEZONE | NVARCHAR2(510) | NULL |  |  |
| 199 | UUID | NVARCHAR2(100) | NULL |  |  |

## MARGINCALLSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCALLID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CALCULATIONDATE | DATE | NULL |  |  |
| 3 | CALCULATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | AGREEMENTTYPE | NVARCHAR2(2000) | NULL |  |  |
| 7 | PRINCIPALMANAGINGLOCATION | NVARCHAR2(2000) | NULL |  |  |
| 8 | TOTALCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 9 | TOTALCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 10 | NETREQUIREMENT | NUMBER(21,6) | NULL |  |  |
| 11 | NETEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 12 | DELIVERTOPRINCIPAL | NUMBER(21,6) | NULL |  |  |
| 13 | DELIVERTOCOUNTERPARTY | NUMBER(21,6) | NULL |  |  |
| 14 | RETURNTOPRINCIPAL | NUMBER(21,6) | NULL |  |  |
| 15 | RETURNTOCOUNTERPARTY | NUMBER(21,6) | NULL |  |  |
| 16 | NETTEDADDITIONALMARGIN | NUMBER(21,6) | NULL |  |  |
| 17 | NETTEDADDITIONALMARGINDUETO | NVARCHAR2(2000) | NULL |  |  |
| 18 | THRESHOLD | NUMBER(21,6) | NULL |  |  |
| 19 | MINIMUMTRANSFERAMOUNT | NUMBER(21,6) | NULL |  |  |
| 20 | ROUNDINGMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 21 | MARGINTERMTYPE | NVARCHAR2(2000) | NULL |  |  |
| 22 | ROUNDINGAMOUNT | NUMBER(21,6) | NULL |  |  |
| 23 | STATUS | NVARCHAR2(2000) | NULL |  |  |
| 24 | EXCLUDESTRADEDAYS | NVARCHAR2(2000) | NULL |  |  |
| 25 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 26 | AGREEMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 27 | NETREQUIREMENTFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 28 | NETEXPOSUREFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 29 | CALLTYPE | NVARCHAR2(2000) | NULL |  |  |
| 30 | CALLAMOUNT | NUMBER(21,6) | NULL |  |  |
| 31 | CALLAMOUNTINSYSTEMCURRENCY | NUMBER(21,6) | NULL |  |  |
| 32 | CALLAMOUNTFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 33 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 34 | PRINCIPALNAME | NVARCHAR2(2000) | NULL |  |  |
| 35 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 36 | COUNTERPARTYNAME | NVARCHAR2(2000) | NULL |  |  |
| 37 | BUSINESSLINE | NVARCHAR2(2000) | NULL |  |  |
| 38 | ISFULLRETURNPRINCIPAL | NUMBER(1,0) | NULL |  |  |
| 39 | ISFULLRETURNCOUNTERPARTY | NUMBER(1,0) | NULL |  |  |
| 40 | LOCKUPCALCULATIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 41 | LOCKUPMARGIN | NUMBER(21,6) | NULL |  |  |
| 42 | LOCKUPMARGINDUETO | NVARCHAR2(2000) | NULL |  |  |
| 43 | VARIATIONCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 44 | VARIATIONCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 45 | ASSOCIATEDCALLAMOUNT | NUMBER(21,6) | NULL |  |  |
| 46 | ASSOCIATEDCALLTYPE | NVARCHAR2(2000) | NULL |  |  |
| 47 | SOURCEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 48 | VALUATIONDATE | DATE | NULL |  |  |
| 49 | NOACTIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 50 | WAIVECATEGORIES | NVARCHAR2(2000) | NULL |  |  |
| 51 | TRANSITIONCOMMENT | NVARCHAR2(2000) | NULL |  |  |
| 52 | SENTTIMESTAMP | DATE | NULL |  |  |
| 53 | TRANSITIONSTATUS | NVARCHAR2(2000) | NULL |  |  |
| 54 | TRANSITIONERRORCONTEXT | NVARCHAR2(2000) | NULL |  |  |
| 55 | WORKFLOWSTATEID | NUMBER(18,0) | NULL |  |  |
| 56 | WORKFLOWSTATENAME | NVARCHAR2(2000) | NULL |  |  |
| 57 | MARGINCALCULATIONRESULTID | NUMBER(18,0) | NULL |  |  |
| 58 | NOTIFICATIONTIME | DATE | NULL |  |  |
| 59 | COUNTERPARTYMANAGINGLOCATION | NVARCHAR2(2000) | NULL |  |  |
| 60 | HASNEWCALCULATION | NUMBER(1,0) | NULL |  |  |
| 61 | AGREEDTOTAL | NUMBER(21,6) | NULL |  |  |
| 62 | AGREEDDELIVER | NUMBER(21,6) | NULL |  |  |
| 63 | AGREEDRETURN | NUMBER(21,6) | NULL |  |  |
| 64 | PRIORAGREEDDELIVERTOPRIN | NUMBER(21,6) | NULL |  |  |
| 65 | PRIORAGREEDDELIVERTOCPTY | NUMBER(21,6) | NULL |  |  |
| 66 | PRIORAGREEDRETURNTOPRIN | NUMBER(21,6) | NULL |  |  |
| 67 | PRIORAGREEDRETURNTOCPTY | NUMBER(21,6) | NULL |  |  |
| 68 | PRIORAGREEDLOCKUPDELIVERTOPRIN | NUMBER(21,6) | NULL |  |  |
| 69 | PRIORAGREEDLOCKUPDELIVERTOCPTY | NUMBER(21,6) | NULL |  |  |
| 70 | AGREEDLOCKUPDELIVER | NUMBER(21,6) | NULL |  |  |
| 71 | HELDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 72 | POSTEDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 73 | DISPUTEAMOUNT | NUMBER(21,6) | NULL |  |  |
| 74 | DISPUTEDATE | DATE | NULL |  |  |
| 75 | COUNTERPARTYCALLAMOUNT | NUMBER(21,6) | NULL |  |  |
| 76 | CPTYCALLAMOUNTINSYSTEMCCY | NUMBER(21,6) | NULL |  |  |
| 77 | TRANSITIONREQUESTEDBYID | NUMBER(18,0) | NULL |  |  |
| 78 | TRANSITIONREQUESTEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 79 | TRANSITIONENDTIMESTAMP | DATE | NULL |  |  |
| 80 | MOVEMENTSTOTALMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 81 | WORKFLOWID | NUMBER(18,0) | NULL |  |  |
| 82 | VALUATIONAGENT | NVARCHAR2(2000) | NULL |  |  |
| 83 | REVIEWEDBYID | NUMBER(18,0) | NULL |  |  |
| 84 | REVIEWEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 85 | REVIEWEDBYTIMESTAMP | DATE | NULL |  |  |
| 86 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 87 | ISCANCELLED | NUMBER(1,0) | NULL |  |  |
| 88 | ISCOMPLETE | NUMBER(1,0) | NULL |  |  |
| 89 | WAIVEDDATETIME | DATE | NULL |  |  |
| 90 | WORKFLOWSTATELONGNAME | NVARCHAR2(2000) | NULL |  |  |
| 91 | DISPUTEAMOUNTINSYSTEMCCY | NUMBER(21,6) | NULL |  |  |
| 92 | DISPUTECOMMENT | NVARCHAR2(2000) | NULL |  |  |
| 93 | DISPUTEREASONS | NVARCHAR2(2000) | NULL |  |  |
| 94 | CPTYLOCKUPMARGIN | NUMBER(21,6) | NULL |  |  |
| 95 | CPTYLOCKUPMARGINFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 96 | CPTYADDITIONALMARGIN | NUMBER(21,6) | NULL |  |  |
| 97 | CPTYADDITIONALMARGINFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 98 | CPTYNETEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 99 | CPTYNETEXPOSUREFAVOROF | NVARCHAR2(2000) | NULL |  |  |
| 100 | CPTYVARIATIONDEMAND | NUMBER(21,6) | NULL |  |  |
| 101 | CPTYVARIATIONCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 102 | CPTYVARIATIONCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 103 | CALCULATIONTIMESTAMP | DATE | NULL |  |  |
| 104 | INTRANSITDELIVERTOPRIN | NUMBER(21,6) | NULL |  |  |
| 105 | INTRANSITDELIVERTOCPTY | NUMBER(21,6) | NULL |  |  |
| 106 | INTRANSITRETURNTOPRIN | NUMBER(21,6) | NULL |  |  |
| 107 | INTRANSITRETURNTOCPTY | NUMBER(21,6) | NULL |  |  |
| 108 | SETTLEDVARIATIONPOSTED | NUMBER(21,6) | NULL |  |  |
| 109 | SETTLEDVARIATIONHELD | NUMBER(21,6) | NULL |  |  |
| 110 | ACCRUEDVARIATIONHELD | NUMBER(21,6) | NULL |  |  |
| 111 | ACCRUEDVARIATIONPOSTED | NUMBER(21,6) | NULL |  |  |
| 112 | INTRANSITLOCKUPDELIVERTOCPTY | NUMBER(21,6) | NULL |  |  |
| 113 | INTRANSITLOCKUPDELIVERTOPRIN | NUMBER(21,6) | NULL |  |  |
| 114 | SETTLEDLOCKUPHELD | NUMBER(21,6) | NULL |  |  |
| 115 | SETTLEDLOCKUPPOSTED | NUMBER(21,6) | NULL |  |  |
| 116 | ACCRUEDLOCKUPHELD | NUMBER(21,6) | NULL |  |  |
| 117 | ACCRUEDLOCKUPPOSTED | NUMBER(21,6) | NULL |  |  |
| 118 | LOCKUPDELIVERTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 119 | LOCKUPDELIVERTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 120 | LOCKUPRETURNTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 121 | LOCKUPRETURNTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 122 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 123 | TOTALINTRANSITDELIVERTOPRIN | NUMBER(21,6) | NULL |  |  |
| 124 | TOTALINTRANSITDELIVERTOCPTY | NUMBER(21,6) | NULL |  |  |
| 125 | TOTALINTRANSITRETURNTOPRIN | NUMBER(21,6) | NULL |  |  |
| 126 | TOTALINTRANSITRETURNTOCPTY | NUMBER(21,6) | NULL |  |  |
| 127 | TOTALPRINCOLLATERALOBLIGATION | NUMBER(21,6) | NULL |  |  |
| 128 | TOTALCPTYCOLLATERALOBLIGATION | NUMBER(21,6) | NULL |  |  |
| 129 | INTRANSITLOCKUPRETURNTOPRIN | NUMBER(21,6) | NULL |  |  |
| 130 | INTRANSITLOCKUPRETURNTOCPTY | NUMBER(21,6) | NULL |  |  |
| 131 | SYSTEMCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 132 | SYSTEMCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 133 | TOTALCOLLATERALSETTLEDHELD | NUMBER(21,6) | NULL |  |  |
| 134 | TOTALCOLLATERALSETTLEDPOSTED | NUMBER(21,6) | NULL |  |  |
| 135 | LOCKUPCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 136 | LOCKUPCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 137 | AGREEDLOCKUPRETURN | NUMBER(21,6) | NULL |  |  |
| 138 | PRIORAGREEDLOCKUPRETURNTOPRIN | NUMBER(21,6) | NULL |  |  |
| 139 | PRIORAGREEDLOCKUPRETURNTOCPTY | NUMBER(21,6) | NULL |  |  |
| 140 | LOCKUPMINIMUMTRANSFERAMOUNT | NUMBER(18,0) | NULL |  |  |
| 141 | LOCKUPROUNDINGAMOUNT | NUMBER(18,0) | NULL |  |  |
| 142 | LOCKUPROUNDINGMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 143 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 144 | AGREEMENTGROUPNAME | NVARCHAR2(2000) | NULL |  |  |
| 145 | CPTYVARIATIONANTICDEMAND | NUMBER(21,6) | NULL |  |  |
| 146 | CPTYLOCKUPDEMAND | NUMBER(21,6) | NULL |  |  |
| 147 | CPTYLOCKUPANTICDEMAND | NUMBER(21,6) | NULL |  |  |
| 148 | CPTYLOCKUPCOLLATERALHELD | NUMBER(21,6) | NULL |  |  |
| 149 | CPTYLOCKUPCOLLATERALPOSTED | NUMBER(21,6) | NULL |  |  |
| 150 | WAIVEDBYID | NUMBER(18,0) | NULL |  |  |
| 151 | WAIVEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 152 | WAIVEDTIMESTAMP | DATE | NULL |  |  |
| 153 | COLLATERALHELDPERCCP | NUMBER(19,4) | NULL |  |  |
| 154 | COLLATERALPOSTEDPERCCP | NUMBER(19,4) | NULL |  |  |
| 155 | IMPORTCONFIGURATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 156 | IMPORTWARNING | NVARCHAR2(1000) | NULL |  |  |
| 157 | LOCKUPMARGINAMOUNTPERCCP | NUMBER(19,4) | NULL |  |  |
| 158 | LOCKUPMARGINAMOUNTPERCCPDUETO | NVARCHAR2(510) | NULL |  |  |
| 159 | NETEXPOSUREAMOUNTPERCCP | NUMBER(19,4) | NULL |  |  |
| 160 | NETEXPOSUREAMOUNTPERCCPFAVOROF | NVARCHAR2(510) | NULL |  |  |
| 161 | CLEARINGCLIENTNAME | NVARCHAR2(510) | NULL |  |  |
| 162 | AGREEMENTCURRENCYFXRATE | NUMBER(21,6) | NULL |  |  |
| 163 | TIMEZONE | NVARCHAR2(510) | NULL |  |  |
| 164 | NOACTIONDETAIL | NVARCHAR2(510) | NULL |  |  |
| 165 | LOCKUPMARGINRETURN | NUMBER(19,4) | NULL |  |  |
| 166 | LOCKUPASSOCIATEDCALLTYPE | NVARCHAR2(510) | NULL |  |  |
| 167 | LOCKUPASSOCIATEDCALLAMOUNT | NUMBER(19,4) | NULL |  |  |
| 168 | GROUPCALLSHEETSENDSTATUS | NVARCHAR2(510) | NULL |  |  |
| 169 | GROUPCALLSHEETSENDERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 170 | CENTRALCOUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 171 | CENTRALCOUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 172 | LOCKUPTHRESHOLD | NUMBER(19,0) | NULL |  |  |
| 173 | SENTGROUPEDCOLLNOTICETIMESTAMP | DATE | NULL |  |  |
| 174 | COUNTERPARTYCALLTYPE | NVARCHAR2(510) | NULL |  |  |
| 175 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 176 | ISINTRADAY | NUMBER(1,0) | NULL |  |  |
| 177 | PREVIOUSAGREEMENTCCYID | NUMBER(18,0) | NULL |  |  |
| 178 | PREVIOUSCALLAMOUNT | NUMBER(19,2) | NULL |  |  |
| 179 | PREVIOUSCALLTYPE | NVARCHAR2(2000) | NULL |  |  |
| 180 | ISREPLACEMENT | NUMBER | NULL |  |  |
| 181 | ISNETTABLE | NUMBER | NULL |  |  |
| 182 | COMPARISONCALLTYPE | NVARCHAR2(60) | NULL |  |  |
| 183 | CPTYCALLAMOUNTDIFFERENCE | NUMBER(19,2) | NULL |  |  |
| 184 | COMPARISONCALLAMOUNT | NUMBER(19,2) | NULL |  |  |
| 185 | ASSOCIATEDPARTIALAGREEID | NUMBER(18,0) | NULL |  |  |
| 186 | REQUIREDAPPROVALLEVEL | NVARCHAR2(2000) | NULL |  |  |
| 187 | EXTERNALID | NVARCHAR2(100) | NULL |  |  |
| 188 | ISAUTOAPPROVABLE | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 189 | HASAUTOAPPROVALEXCEPTIONS | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 190 | HASAUTOAPPROVALOVERRIDES | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 191 | HASMESSAGINGERROR | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 192 | MESSAGINGCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 193 | IMRAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 194 | IARAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 195 | IMIATIMESTAMPUTC | DATE | NULL |  |  |
| 196 | IMRAWDUETO | NVARCHAR2(510) | NULL |  |  |
| 197 | IARAWDUETO | NVARCHAR2(510) | NULL |  |  |
| 198 | COUNTERPARTYTIMEZONE | NVARCHAR2(510) | NULL |  |  |
| 199 | UUID | NVARCHAR2(100) | NULL |  |  |

## MARGINCALLTRANSHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCALLTRANSITIONHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINCALLID | NUMBER(18,0) | NULL |  |  |
| 3 | FROMWORKFLOWSTATENAME | NVARCHAR2(510) | NULL |  |  |
| 4 | TOWORKFLOWSTATENAME | NVARCHAR2(510) | NULL |  |  |
| 5 | TRANSITIONDATE | DATE | NULL |  |  |
| 6 | TRANSITIONBYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | TRANSITIONCOMMENT | NVARCHAR2(1000) | NULL |  |  |

## MARGINCALLTRANSHISTORYBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCALLTRANSITIONHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINCALLID | NUMBER(18,0) | NULL |  |  |
| 3 | FROMWORKFLOWSTATENAME | NVARCHAR2(510) | NULL |  |  |
| 4 | TOWORKFLOWSTATENAME | NVARCHAR2(510) | NULL |  |  |
| 5 | TRANSITIONDATE | DATE | NULL |  |  |
| 6 | TRANSITIONBYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | TRANSITIONCOMMENT | NVARCHAR2(1000) | NULL |  |  |

## MARGINHOLIDAYCALENDERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | HOLIDAYCALENDARID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | HOLIDAYCALENDARNAME | NVARCHAR2(2000) | NULL |  |  |

## MARGINHOLIDAYCALENDERSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | HOLIDAYCALENDARID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | HOLIDAYCALENDARNAME | NVARCHAR2(2000) | NULL |  |  |

## MARGINTERMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINTERMTYPE | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | OVERRIDECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 6 | OVERRIDECURRENCYCODE | NVARCHAR2(2000) | NULL |  |  |
| 7 | DELIVERYROUNDINGMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 8 | RETURNROUNDINGMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 9 | LOADTIMESTAMP | DATE | NOT NULL | `(SYSDATE)` |  |
| 10 | DEBTSTRUCTURE | NVARCHAR2(2000) | NULL |  |  |
| 11 | ISTHRESHOLDRATINGSBASED | NUMBER(1,0) | NULL |  |  |
| 12 | ISMTARATINGSBASED | NUMBER(1,0) | NULL |  |  |
| 13 | ISROUNDINGRATINGSBASED | NUMBER(1,0) | NULL |  |  |
| 14 | ISADDITIONALRATINGSBASED | NUMBER(1,0) | NULL |  |  |
| 15 | ISLOCKUPRATINGSBASED | NUMBER(1,0) | NULL |  |  |
| 16 | REFERENCEAGENCYID | NUMBER(18,0) | NULL |  |  |
| 17 | REFERENCEAGENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 18 | SELECTEDAGENCIES | NVARCHAR2(4000) | NULL |  |  |
| 19 | RATINGDISPUTEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 20 | THRESHOLDMETHOD | NVARCHAR2(100) | NULL |  |  |
| 21 | MINIMUMTRANSFERAMOUNTMETHOD | NVARCHAR2(100) | NULL |  |  |
| 22 | ROUNDINGAMOUNTMETHOD | NVARCHAR2(100) | NULL |  |  |
| 23 | RETURNMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 24 | RETURNROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 25 | THRESHOLD | NUMBER(19,6) | NULL |  |  |
| 26 | DELIVERMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 27 | DELIVERROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |

## MARGINTERMSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINTERMTYPE | NVARCHAR2(2000) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | OVERRIDECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 6 | OVERRIDECURRENCYCODE | NVARCHAR2(2000) | NULL |  |  |
| 7 | DELIVERYROUNDINGMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 8 | RETURNROUNDINGMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 9 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 10 | DEBTSTRUCTURE | NVARCHAR2(2000) | NULL |  |  |
| 11 | ISTHRESHOLDRATINGSBASED | NUMBER(1,0) | NULL |  |  |
| 12 | ISMTARATINGSBASED | NUMBER(1,0) | NULL |  |  |
| 13 | ISROUNDINGRATINGSBASED | NUMBER(1,0) | NULL |  |  |
| 14 | ISADDITIONALRATINGSBASED | NUMBER(1,0) | NULL |  |  |
| 15 | ISLOCKUPRATINGSBASED | NUMBER(1,0) | NULL |  |  |
| 16 | REFERENCEAGENCYID | NUMBER(18,0) | NULL |  |  |
| 17 | REFERENCEAGENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 18 | SELECTEDAGENCIES | NVARCHAR2(4000) | NULL |  |  |
| 19 | RATINGDISPUTEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 20 | THRESHOLDMETHOD | NVARCHAR2(100) | NULL |  |  |
| 21 | MINIMUMTRANSFERAMOUNTMETHOD | NVARCHAR2(100) | NULL |  |  |
| 22 | ROUNDINGAMOUNTMETHOD | NVARCHAR2(100) | NULL |  |  |
| 23 | RETURNMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 24 | RETURNROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 25 | THRESHOLD | NUMBER(19,6) | NULL |  |  |
| 26 | DELIVERMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 27 | DELIVERROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |

## MARKETINDEXES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARKETINDEXID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARKETINDEXNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | ALIASNAME | NVARCHAR2(2000) | NULL |  |  |
| 4 | DESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 5 | DAYCOUNTCONVENTION | NVARCHAR2(2000) | NULL |  |  |
| 6 | PERCENTTOLERANCE | NUMBER(14,5) | NULL |  |  |
| 7 | MINTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |
| 8 | MAXTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |

## MARKETINDEXESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARKETINDEXID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARKETINDEXNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | ALIASNAME | NVARCHAR2(2000) | NULL |  |  |
| 4 | DESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 5 | DAYCOUNTCONVENTION | NVARCHAR2(2000) | NULL |  |  |
| 6 | PERCENTTOLERANCE | NUMBER(14,5) | NULL |  |  |
| 7 | MINTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |
| 8 | MAXTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |

## MARKETINDEXRATES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 2 | MARKETINDEXNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | RATE | NUMBER(9,6) | NULL |  |  |
| 4 | RATEDATE | DATE | NULL |  |  |
| 5 | RECORDDATE | DATE | NULL |  |  |
| 6 | EXPIRYTIME | DATE | NULL |  |  |
| 7 | LOADTIMESTAMP | DATE | NOT NULL | `(SYSDATE)` |  |
| 8 | MARKETINDEXRATEID | NUMBER(18,0) | NULL |  |  |

## MARKETINDEXRATESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 2 | MARKETINDEXNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | RATE | NUMBER(9,6) | NULL |  |  |
| 4 | RATEDATE | DATE | NULL |  |  |
| 5 | RECORDDATE | DATE | NULL |  |  |
| 6 | EXPIRYTIME | DATE | NULL |  |  |
| 7 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | MARKETINDEXRATEID | NUMBER(18,0) | NULL |  |  |

## MOVEMENTHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ROOTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | PARENTMOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | NOTIONAL | NUMBER(19,4) | NOT NULL |  |  |
| 6 | SETTLEMENTDATE | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 10 | MOVEMENTSTATUS | NVARCHAR2(500) | NOT NULL |  |  |
| 11 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 12 | ASSETPOOLNAME | NVARCHAR2(510) | NULL |  |  |
| 13 | REQUIREDAPPROVALLEVEL | NVARCHAR2(2000) | NULL |  |  |
| 14 | ISPENDINGCANCELLATIONAPPROVAL | NVARCHAR2(20) | NULL |  |  |

## MOVEMENTHISTORYBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ROOTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | PARENTMOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | NOTIONAL | NUMBER(19,4) | NOT NULL |  |  |
| 6 | SETTLEMENTDATE | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 10 | MOVEMENTSTATUS | NVARCHAR2(500) | NOT NULL |  |  |
| 11 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 12 | ASSETPOOLNAME | NVARCHAR2(510) | NULL |  |  |
| 13 | REQUIREDAPPROVALLEVEL | NVARCHAR2(2000) | NULL |  |  |
| 14 | ISPENDINGCANCELLATIONAPPROVAL | NVARCHAR2(20) | NULL |  |  |

## MOVEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTTYPE | NVARCHAR2(2000) | NULL |  |  |
| 3 | SETTLEMENTDATE | DATE | NULL |  |  |
| 4 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 5 | ORIGINALMARKETVALUEAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 6 | ORIGINALMARKETVALUESYSTEM | NUMBER(21,6) | NULL |  |  |
| 7 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 8 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | MOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 10 | STATUS | NVARCHAR2(2000) | NULL |  |  |
| 11 | DIRTYPRICE | NUMBER(21,6) | NULL |  |  |
| 12 | VALUATIONPERCENTAGE | NUMBER(21,6) | NULL |  |  |
| 13 | INSTRUMENTDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 14 | INSTRUMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 15 | INSTRUMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 16 | ORIGINALMARKETVALUEINSTRUMENT | NUMBER(21,6) | NULL |  |  |
| 17 | CREATEDBYID | NUMBER(18,0) | NULL |  |  |
| 18 | CREATEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 19 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 20 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 21 | UPDATEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 22 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 23 | ISELIGIBLE | NUMBER(1,0) | NULL |  |  |
| 24 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 25 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 26 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 27 | AGREEMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 28 | RECEIVINGPARTY | NVARCHAR2(2000) | NULL |  |  |
| 29 | PRICEDATE | DATE | NULL |  |  |
| 30 | CREATEREASON | NVARCHAR2(2000) | NULL |  |  |
| 31 | REJECTREASON | NVARCHAR2(2000) | NULL |  |  |
| 32 | REVIEWEDBYID | NUMBER(18,0) | NULL |  |  |
| 33 | REVIEWEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 34 | REVIEWEDBYTIMESTAMP | DATE | NULL |  |  |
| 35 | PREHAIRCUTAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 36 | ORIGINATION | NVARCHAR2(500) | NOT NULL |  |  |
| 37 | SYSTEMCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 38 | SYSTEMCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 39 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 40 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 41 | ELIGIBLECOLLATERALNAME | NVARCHAR2(2000) | NULL |  |  |
| 42 | SENDINGCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 43 | SENDINGCUSTODIANNAME | NVARCHAR2(2000) | NULL |  |  |
| 44 | SENDINGCUSTODIANIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 45 | SENDINGACCOUNTNAME | NVARCHAR2(2000) | NULL |  |  |
| 46 | SENDINGACCOUNTNUMBER | NVARCHAR2(2000) | NULL |  |  |
| 47 | SENDINGBENEFICIARYNAME | NVARCHAR2(2000) | NULL |  |  |
| 48 | SENDINGBENEFICIARYNUMBER | NVARCHAR2(2000) | NULL |  |  |
| 49 | RECEIVINGCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 50 | RECEIVINGCUSTODIANNAME | NVARCHAR2(2000) | NULL |  |  |
| 51 | RECEIVINGCUSTODIANIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 52 | RECEIVINGACCOUNTNAME | NVARCHAR2(2000) | NULL |  |  |
| 53 | RECEIVINGACCOUNTNUMBER | NVARCHAR2(2000) | NULL |  |  |
| 54 | RECEIVINGBENEFICIARYNAME | NVARCHAR2(2000) | NULL |  |  |
| 55 | RECEIVINGBENEFICIARYNUMBER | NVARCHAR2(2000) | NULL |  |  |
| 56 | LIVEISELIGIBLE | NUMBER(1,0) | NULL |  |  |
| 57 | LIVEMARKETVALUEAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 58 | LIVEMARKETVALUESYSTEM | NUMBER(21,6) | NULL |  |  |
| 59 | LIVEMARKETVALUEINSTRUMENT | NUMBER(21,6) | NULL |  |  |
| 60 | LIVEDIRTYPRICE | NUMBER(21,6) | NULL |  |  |
| 61 | LIVEVALUATIONPERCENTAGE | NUMBER(21,6) | NULL |  |  |
| 62 | LIVEPREHAIRCUTAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 63 | PREVIOUSMOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 64 | LIVECLEANPRICE | NUMBER(19,4) | NULL |  |  |
| 65 | PREHAIRCUTINSTRUMENT | NUMBER(19,4) | NULL |  |  |
| 66 | PREHAIRCUTSYSTEM | NUMBER(19,4) | NULL |  |  |
| 67 | LIVEPREHAIRCUTINSTRUMENT | NUMBER(19,4) | NULL |  |  |
| 68 | LIVEPREHAIRCUTSYSTEM | NUMBER(19,4) | NULL |  |  |
| 69 | MARGINCALLID | NUMBER(18,0) | NULL |  |  |
| 70 | SUBSTITUTIONID | NUMBER(18,0) | NULL |  |  |
| 71 | INTERESTPAYMENTID | NUMBER(18,0) | NULL |  |  |
| 72 | PRICESOURCE | NVARCHAR2(510) | NULL |  |  |
| 73 | PRICEDATEADJUSTMENT | NVARCHAR2(510) | NULL |  |  |
| 74 | PREVIOUSMOVEMENTSTATUS | NVARCHAR2(510) | NULL |  |  |
| 75 | VALUATIONQUOTE | NVARCHAR2(510) | NULL |  |  |
| 76 | ROOTID | NUMBER(18,0) | NULL |  |  |
| 77 | PHYSICALSETTLEMENT | NUMBER(1,0) | NULL |  |  |
| 78 | PROFITANDLOSSTYPE | NVARCHAR2(200) | NULL |  |  |
| 79 | GROUPEDCOLLNOTICESENTDATETIME | DATE | NULL |  |  |
| 80 | NETTINGID | NVARCHAR2(500) | NULL |  |  |
| 81 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 82 | ASSETPOOLNAME | NVARCHAR2(510) | NULL |  |  |
| 83 | TRADEDATE | DATE | NULL |  |  |
| 84 | LEGACYREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 85 | RECEIVINGCOMMENTS | NVARCHAR2(510) | NULL |  |  |
| 86 | RECEIVINGREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 87 | SENDINGCOMMENTS | NVARCHAR2(510) | NULL |  |  |
| 88 | SENDINGREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 89 | RECEIVINGPLACEOFSETTLEMENTID | NUMBER(18,0) | NULL |  |  |
| 90 | RECEIVINGPLACEOFSETTLEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 91 | SENDINGPLACEOFSETTLEMENTID | NUMBER(18,0) | NULL |  |  |
| 92 | SENDINGPLACEOFSETTLEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 93 | RECEIVINGNAME | NVARCHAR2(510) | NULL |  |  |
| 94 | SENDINGNAME | NVARCHAR2(510) | NULL |  |  |
| 95 | REQUIREDAPPROVALLEVEL | NVARCHAR2(2000) | NULL |  |  |
| 96 | CANCELREASON | NVARCHAR2(1000) | NULL |  |  |
| 97 | ISPENDINGCANCELLATIONAPPROVAL | NVARCHAR2(20) | NULL |  |  |
| 98 | EXTERNALID | NVARCHAR2(300) | NULL |  |  |

## MOVEMENTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTTYPE | NVARCHAR2(2000) | NULL |  |  |
| 3 | SETTLEMENTDATE | DATE | NULL |  |  |
| 4 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 5 | ORIGINALMARKETVALUEAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 6 | ORIGINALMARKETVALUESYSTEM | NUMBER(21,6) | NULL |  |  |
| 7 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 8 | INSTRUMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | MOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 10 | STATUS | NVARCHAR2(2000) | NULL |  |  |
| 11 | DIRTYPRICE | NUMBER(21,6) | NULL |  |  |
| 12 | VALUATIONPERCENTAGE | NUMBER(21,6) | NULL |  |  |
| 13 | INSTRUMENTDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 14 | INSTRUMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 15 | INSTRUMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 16 | ORIGINALMARKETVALUEINSTRUMENT | NUMBER(21,6) | NULL |  |  |
| 17 | CREATEDBYID | NUMBER(18,0) | NULL |  |  |
| 18 | CREATEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 19 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 20 | UPDATEDBYID | NUMBER(18,0) | NULL |  |  |
| 21 | UPDATEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 22 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 23 | ISELIGIBLE | NUMBER(1,0) | NULL |  |  |
| 24 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 25 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 26 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 27 | AGREEMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 28 | RECEIVINGPARTY | NVARCHAR2(2000) | NULL |  |  |
| 29 | PRICEDATE | DATE | NULL |  |  |
| 30 | CREATEREASON | NVARCHAR2(2000) | NULL |  |  |
| 31 | REJECTREASON | NVARCHAR2(2000) | NULL |  |  |
| 32 | REVIEWEDBYID | NUMBER(18,0) | NULL |  |  |
| 33 | REVIEWEDBYNAME | NVARCHAR2(2000) | NULL |  |  |
| 34 | REVIEWEDBYTIMESTAMP | DATE | NULL |  |  |
| 35 | PREHAIRCUTAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 36 | ORIGINATION | NVARCHAR2(500) | NOT NULL |  |  |
| 37 | SYSTEMCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 38 | SYSTEMCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 39 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 40 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 41 | ELIGIBLECOLLATERALNAME | NVARCHAR2(2000) | NULL |  |  |
| 42 | SENDINGCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 43 | SENDINGCUSTODIANNAME | NVARCHAR2(2000) | NULL |  |  |
| 44 | SENDINGCUSTODIANIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 45 | SENDINGACCOUNTNAME | NVARCHAR2(2000) | NULL |  |  |
| 46 | SENDINGACCOUNTNUMBER | NVARCHAR2(2000) | NULL |  |  |
| 47 | SENDINGBENEFICIARYNAME | NVARCHAR2(2000) | NULL |  |  |
| 48 | SENDINGBENEFICIARYNUMBER | NVARCHAR2(2000) | NULL |  |  |
| 49 | RECEIVINGCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 50 | RECEIVINGCUSTODIANNAME | NVARCHAR2(2000) | NULL |  |  |
| 51 | RECEIVINGCUSTODIANIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 52 | RECEIVINGACCOUNTNAME | NVARCHAR2(2000) | NULL |  |  |
| 53 | RECEIVINGACCOUNTNUMBER | NVARCHAR2(2000) | NULL |  |  |
| 54 | RECEIVINGBENEFICIARYNAME | NVARCHAR2(2000) | NULL |  |  |
| 55 | RECEIVINGBENEFICIARYNUMBER | NVARCHAR2(2000) | NULL |  |  |
| 56 | LIVEISELIGIBLE | NUMBER(1,0) | NULL |  |  |
| 57 | LIVEMARKETVALUEAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 58 | LIVEMARKETVALUESYSTEM | NUMBER(21,6) | NULL |  |  |
| 59 | LIVEMARKETVALUEINSTRUMENT | NUMBER(21,6) | NULL |  |  |
| 60 | LIVEDIRTYPRICE | NUMBER(21,6) | NULL |  |  |
| 61 | LIVEVALUATIONPERCENTAGE | NUMBER(21,6) | NULL |  |  |
| 62 | LIVEPREHAIRCUTAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 63 | PREVIOUSMOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 64 | LIVECLEANPRICE | NUMBER(19,4) | NULL |  |  |
| 65 | PREHAIRCUTINSTRUMENT | NUMBER(19,4) | NULL |  |  |
| 66 | PREHAIRCUTSYSTEM | NUMBER(19,4) | NULL |  |  |
| 67 | LIVEPREHAIRCUTINSTRUMENT | NUMBER(19,4) | NULL |  |  |
| 68 | LIVEPREHAIRCUTSYSTEM | NUMBER(19,4) | NULL |  |  |
| 69 | MARGINCALLID | NUMBER(18,0) | NULL |  |  |
| 70 | SUBSTITUTIONID | NUMBER(18,0) | NULL |  |  |
| 71 | INTERESTPAYMENTID | NUMBER(18,0) | NULL |  |  |
| 72 | PRICESOURCE | NVARCHAR2(510) | NULL |  |  |
| 73 | PRICEDATEADJUSTMENT | NVARCHAR2(510) | NULL |  |  |
| 74 | PREVIOUSMOVEMENTSTATUS | NVARCHAR2(510) | NULL |  |  |
| 75 | VALUATIONQUOTE | NVARCHAR2(510) | NULL |  |  |
| 76 | ROOTID | NUMBER(18,0) | NULL |  |  |
| 77 | PHYSICALSETTLEMENT | NUMBER(1,0) | NULL |  |  |
| 78 | PROFITANDLOSSTYPE | NVARCHAR2(200) | NULL |  |  |
| 79 | GROUPEDCOLLNOTICESENTDATETIME | DATE | NULL |  |  |
| 80 | NETTINGID | NVARCHAR2(500) | NULL |  |  |
| 81 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 82 | ASSETPOOLNAME | NVARCHAR2(510) | NULL |  |  |
| 83 | TRADEDATE | DATE | NULL |  |  |
| 84 | LEGACYREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 85 | RECEIVINGCOMMENTS | NVARCHAR2(510) | NULL |  |  |
| 86 | RECEIVINGREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 87 | SENDINGCOMMENTS | NVARCHAR2(510) | NULL |  |  |
| 88 | SENDINGREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 89 | RECEIVINGPLACEOFSETTLEMENTID | NUMBER(18,0) | NULL |  |  |
| 90 | RECEIVINGPLACEOFSETTLEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 91 | SENDINGPLACEOFSETTLEMENTID | NUMBER(18,0) | NULL |  |  |
| 92 | SENDINGPLACEOFSETTLEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 93 | RECEIVINGNAME | NVARCHAR2(510) | NULL |  |  |
| 94 | SENDINGNAME | NVARCHAR2(510) | NULL |  |  |
| 95 | REQUIREDAPPROVALLEVEL | NVARCHAR2(2000) | NULL |  |  |
| 96 | CANCELREASON | NVARCHAR2(1000) | NULL |  |  |
| 97 | ISPENDINGCANCELLATIONAPPROVAL | NVARCHAR2(20) | NULL |  |  |
| 98 | EXTERNALID | NVARCHAR2(300) | NULL |  |  |

## NETAGREEMENTEXPOSURES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | SOURCEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 4 | NETEXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 5 | NETEXPOSURECCY | NVARCHAR2(2000) | NULL |  |  |
| 6 | STATUS | NVARCHAR2(2000) | NULL |  |  |
| 7 | CALCULATEDDATE | DATE | NULL |  |  |
| 8 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |

## NETAGREEMENTEXPOSURESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 3 | SOURCEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 4 | NETEXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 5 | NETEXPOSURECCY | NVARCHAR2(2000) | NULL |  |  |
| 6 | STATUS | NVARCHAR2(2000) | NULL |  |  |
| 7 | CALCULATEDDATE | DATE | NULL |  |  |
| 8 | LOADTIMESTAMP | DATE | NOT NULL |  |  |

## OTCCOMPARISONTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCCOMPARISONTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SOURCEAGREEMENT | NVARCHAR2(510) | NULL |  |  |
| 3 | SOURCETRADETYPE | NVARCHAR2(510) | NULL |  |  |
| 4 | SOURCEPRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 5 | SOURCECOUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 6 | PRIMARYTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 7 | SECONDARYTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 8 | DTCCTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 9 | COUNTERPARTYTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 10 | DEALREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 11 | TRADEDATE | DATE | NULL |  |  |
| 12 | MATURITYDATE | DATE | NULL |  |  |
| 13 | EFFECTIVEDATE | DATE | NULL |  |  |
| 14 | EXPOSUREAMOUNTDATE | DATE | NULL |  |  |
| 15 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 16 | EXCHANGEDNOTIONAL1AMOUNT | NUMBER(19,4) | NULL |  |  |
| 17 | EXCHANGEDNOTIONAL2AMOUNT | NUMBER(19,4) | NULL |  |  |
| 18 | UNDERLYINGINSTRUMENTIDENTIFIER | NVARCHAR2(510) | NULL |  |  |
| 19 | STRIKEPRICE | NUMBER(19,4) | NULL |  |  |
| 20 | UNDERLYING | NVARCHAR2(510) | NULL |  |  |
| 21 | EXPOSURETRADECOMMENT | NVARCHAR2(510) | NULL |  |  |
| 22 | TRADENAME | NVARCHAR2(510) | NULL |  |  |
| 23 | BOOK | NVARCHAR2(510) | NULL |  |  |
| 24 | DESK | NVARCHAR2(510) | NULL |  |  |
| 25 | CLIPSCODE | NVARCHAR2(510) | NULL |  |  |
| 26 | OPTIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 27 | SPREAD | NUMBER(19,4) | NULL |  |  |
| 28 | IMPORTCONFIGURATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 29 | QUANTITY | NUMBER(19,4) | NULL |  |  |
| 30 | BUYSELL | NVARCHAR2(510) | NULL |  |  |
| 31 | PUTCALL | NVARCHAR2(510) | NULL |  |  |
| 32 | SOURCEPRINCIPALBRANCH | NVARCHAR2(510) | NULL |  |  |
| 33 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(510) | NULL |  |  |
| 34 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 35 | CLEARINGSTATUS | NVARCHAR2(510) | NULL |  |  |
| 36 | COMMONTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 37 | RECORDDATE | DATE | NOT NULL |  |  |
| 38 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 39 | EXPOSUREAMOUNTCURRENCY | NVARCHAR2(510) | NULL |  |  |
| 40 | EXCHANGEDNOTIONAL1CURRENCY | NVARCHAR2(510) | NULL |  |  |
| 41 | EXCHANGEDNOTIONAL2CURRENCY | NVARCHAR2(510) | NULL |  |  |
| 42 | ADDITIONALMARGINCURRENCY | NVARCHAR2(510) | NULL |  |  |
| 43 | LOCKUPMARGINCCY | NVARCHAR2(510) | NULL |  |  |
| 44 | ADDITIONALMARGIN | NUMBER(19,4) | NULL |  |  |
| 45 | ADDITIONALMARGINAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 46 | ADDITIONALMARGINDUETO | NVARCHAR2(510) | NULL |  |  |
| 47 | ADDITIONALMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 48 | ADDITIONALMARGINSYSTEM | NUMBER(19,4) | NULL |  |  |
| 49 | CLEARINGHOUSEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 50 | EXPOSUREAMOUNTAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 51 | EXPOSUREAMOUNTSYSTEM | NUMBER(19,4) | NULL |  |  |
| 52 | IMPORTCONFIGURATIONID | NUMBER(19,4) | NULL |  |  |
| 53 | LOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 54 | LOCKUPMARGINAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 55 | LOCKUPMARGINDUETO | NVARCHAR2(510) | NULL |  |  |
| 56 | LOCKUPMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 57 | LOCKUPMARGINSYSTEM | NUMBER(19,4) | NULL |  |  |

## OTCCOMPARISONTRADESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCCOMPARISONTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SOURCEAGREEMENT | NVARCHAR2(510) | NULL |  |  |
| 3 | SOURCETRADETYPE | NVARCHAR2(510) | NULL |  |  |
| 4 | SOURCEPRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 5 | SOURCECOUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 6 | PRIMARYTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 7 | SECONDARYTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 8 | DTCCTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 9 | COUNTERPARTYTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 10 | DEALREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 11 | TRADEDATE | DATE | NULL |  |  |
| 12 | MATURITYDATE | DATE | NULL |  |  |
| 13 | EFFECTIVEDATE | DATE | NULL |  |  |
| 14 | EXPOSUREAMOUNTDATE | DATE | NULL |  |  |
| 15 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 16 | EXCHANGEDNOTIONAL1AMOUNT | NUMBER(19,4) | NULL |  |  |
| 17 | EXCHANGEDNOTIONAL2AMOUNT | NUMBER(19,4) | NULL |  |  |
| 18 | UNDERLYINGINSTRUMENTIDENTIFIER | NVARCHAR2(510) | NULL |  |  |
| 19 | STRIKEPRICE | NUMBER(19,4) | NULL |  |  |
| 20 | UNDERLYING | NVARCHAR2(510) | NULL |  |  |
| 21 | EXPOSURETRADECOMMENT | NVARCHAR2(510) | NULL |  |  |
| 22 | TRADENAME | NVARCHAR2(510) | NULL |  |  |
| 23 | BOOK | NVARCHAR2(510) | NULL |  |  |
| 24 | DESK | NVARCHAR2(510) | NULL |  |  |
| 25 | CLIPSCODE | NVARCHAR2(510) | NULL |  |  |
| 26 | OPTIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 27 | SPREAD | NUMBER(19,4) | NULL |  |  |
| 28 | IMPORTCONFIGURATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 29 | QUANTITY | NUMBER(19,4) | NULL |  |  |
| 30 | BUYSELL | NVARCHAR2(510) | NULL |  |  |
| 31 | PUTCALL | NVARCHAR2(510) | NULL |  |  |
| 32 | SOURCEPRINCIPALBRANCH | NVARCHAR2(510) | NULL |  |  |
| 33 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(510) | NULL |  |  |
| 34 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 35 | CLEARINGSTATUS | NVARCHAR2(510) | NULL |  |  |
| 36 | COMMONTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 37 | RECORDDATE | DATE | NOT NULL |  |  |
| 38 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 39 | EXPOSUREAMOUNTCURRENCY | NVARCHAR2(510) | NULL |  |  |
| 40 | EXCHANGEDNOTIONAL1CURRENCY | NVARCHAR2(510) | NULL |  |  |
| 41 | EXCHANGEDNOTIONAL2CURRENCY | NVARCHAR2(510) | NULL |  |  |
| 42 | ADDITIONALMARGINCURRENCY | NVARCHAR2(510) | NULL |  |  |
| 43 | LOCKUPMARGINCCY | NVARCHAR2(510) | NULL |  |  |
| 44 | ADDITIONALMARGIN | NUMBER(19,4) | NULL |  |  |
| 45 | ADDITIONALMARGINAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 46 | ADDITIONALMARGINDUETO | NVARCHAR2(510) | NULL |  |  |
| 47 | ADDITIONALMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 48 | ADDITIONALMARGINSYSTEM | NUMBER(19,4) | NULL |  |  |
| 49 | CLEARINGHOUSEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 50 | EXPOSUREAMOUNTAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 51 | EXPOSUREAMOUNTSYSTEM | NUMBER(19,4) | NULL |  |  |
| 52 | IMPORTCONFIGURATIONID | NUMBER(19,4) | NULL |  |  |
| 53 | LOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 54 | LOCKUPMARGINAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 55 | LOCKUPMARGINDUETO | NVARCHAR2(510) | NULL |  |  |
| 56 | LOCKUPMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 57 | LOCKUPMARGINSYSTEM | NUMBER(19,4) | NULL |  |  |

## OTCRECONTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COB | DATE | NOT NULL |  |  |
| 3 | SOURCEAGREEMENT | NVARCHAR2(510) | NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | SOURCETRADETYPE | NVARCHAR2(510) | NULL |  |  |
| 6 | FOTRADETYPE | NVARCHAR2(510) | NULL |  |  |
| 7 | TRADETYPEID | NUMBER(18,0) | NULL |  |  |
| 8 | SOURCEPRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 9 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 10 | SOURCECOUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 11 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 12 | PRIMARYTRADEREFERENCE | NVARCHAR2(200) | NOT NULL |  |  |
| 13 | SECONDARYTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 14 | DTCCTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 15 | TRADE_ID | NVARCHAR2(200) | NULL |  |  |
| 16 | TRADE_ID_EXT | NVARCHAR2(200) | NULL |  |  |
| 17 | COUNTERPARTYTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 18 | DEALREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 19 | TRADEDATE | DATE | NULL |  |  |
| 20 | MATURITYDATE | DATE | NULL |  |  |
| 21 | EFFECTIVEDATE | DATE | NULL |  |  |
| 22 | EXPOSUREAMOUNTDATE | DATE | NULL |  |  |
| 23 | EXPOSUREAMOUNTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 24 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 25 | EXCHANGEDNOTIONAL1CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 26 | EXCHANGEDNOTIONAL1 | NUMBER(19,4) | NULL |  |  |
| 27 | EXCHANGEDNOTIONAL2CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 28 | EXCHANGEDNOTIONAL2 | NUMBER(19,4) | NULL |  |  |
| 29 | UNDERLYINGINSTRUMENTIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 30 | STRIKEPRICE | NUMBER(19,4) | NULL |  |  |
| 31 | UNDERLYING | NVARCHAR2(510) | NULL |  |  |
| 32 | EXPOSURETRADECOMMENT | NVARCHAR2(510) | NULL |  |  |
| 33 | TRADERNAME | NVARCHAR2(200) | NULL |  |  |
| 34 | BOOK | NVARCHAR2(200) | NULL |  |  |
| 35 | DESK | NVARCHAR2(200) | NULL |  |  |
| 36 | CLIPSCODE | NVARCHAR2(510) | NULL |  |  |
| 37 | OPTIONTYPE | NUMBER(9,0) | NULL | `((0))` |  |
| 38 | SOURCEOPTIONTYPE | NVARCHAR2(50) | NULL |  |  |
| 39 | SPREAD | NUMBER(19,4) | NULL |  |  |
| 40 | QUANTITY | NUMBER(19,4) | NULL |  |  |
| 41 | BUYSELL | NUMBER(9,0) | NULL |  |  |
| 42 | SOURCEBUYSELL | NVARCHAR2(10) | NULL |  |  |
| 43 | PUTCALL | NUMBER(9,0) | NULL |  |  |
| 44 | SOURCEPUTCALL | NVARCHAR2(10) | NULL |  |  |
| 45 | PRINCIPALBRANCHID | NUMBER(18,0) | NULL |  |  |
| 46 | COUNTERPARTYBRANCHID | NUMBER(18,0) | NULL |  |  |
| 47 | SOURCEPRINCIPALBRANCH | NVARCHAR2(50) | NULL |  |  |
| 48 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(510) | NULL |  |  |
| 49 | FO_COUNTERPARTYBRANCH | NVARCHAR2(510) | NULL |  |  |
| 50 | NORMMATCHCODE | NVARCHAR2(50) | NULL |  |  |
| 51 | COMMONTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 52 | FO_SYSTEM | NVARCHAR2(20) | NULL |  |  |
| 53 | FO_AGREEMENTNO | NVARCHAR2(40) | NULL |  |  |
| 54 | FO_RELEVANT_ONLY | NVARCHAR2(20) | NULL |  |  |
| 55 | ALGO_NDG | NVARCHAR2(40) | NULL |  |  |
| 56 | ALGO_AGREEMENTNO | NVARCHAR2(40) | NULL |  |  |
| 57 | LISTTYPE | NVARCHAR2(2) | NULL |  |  |
| 58 | IMPORTSTATUS | NVARCHAR2(100) | NULL |  |  |
| 59 | IMPORTSTATUSCOMMENT | NVARCHAR2(510) | NULL |  |  |
| 60 | ASSIGNMENTSTATUS | NVARCHAR2(100) | NULL |  |  |
| 61 | ASSIGNMENTSTATUSCOMMENT | NVARCHAR2(510) | NULL |  |  |
| 62 | EXPOSUREAMOUNTCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 63 | EXCHANGEDNOTIONAL1CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 64 | EXCHANGEDNOTIONAL2CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 65 | CDF_ID | NVARCHAR2(200) | NULL |  |  |
| 66 | FO_SYSTEM_TXT | NVARCHAR2(80) | NULL |  |  |
| 67 | ALGO_AGREEMENTTYPE | NVARCHAR2(100) | NULL |  |  |
| 68 | CLEARINGSTATUS | NCHAR(2) | NULL |  |  |
| 69 | CSA_ID | NUMBER(18,0) | NULL |  |  |
| 70 | NMR_MSG | NVARCHAR2(510) | NULL |  |  |
| 71 | CSA_FLAG | NVARCHAR2(40) | NULL |  |  |

## OTCRECONTRADESCDF

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CDFTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COB | DATE | NOT NULL |  |  |
| 3 | TRADE_ID | NVARCHAR2(200) | NULL |  |  |
| 4 | TRADE_ID_EXT | NVARCHAR2(200) | NULL |  |  |
| 5 | FO_SYSTEM | NVARCHAR2(20) | NULL |  |  |
| 6 | TRADEDATE | DATE | NULL |  |  |
| 7 | MATURITYDATE | DATE | NULL |  |  |
| 8 | EFFECTIVEDATE | DATE | NULL |  |  |
| 9 | EXPOSUREAMOUNTDATE | DATE | NULL |  |  |
| 10 | EXPOSUREAMOUNTCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 11 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 12 | EXCHANGEDNOTIONAL1CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 13 | EXCHANGEDNOTIONAL1 | NUMBER(19,4) | NULL |  |  |
| 14 | EXCHANGEDNOTIONAL2CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 15 | EXCHANGEDNOTIONAL2 | NUMBER(19,4) | NULL |  |  |
| 16 | SOURCEPRINCIPALBRANCH | NVARCHAR2(50) | NULL |  |  |
| 17 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(510) | NULL |  |  |
| 18 | NORMMATCHCODE | NVARCHAR2(50) | NULL |  |  |
| 19 | FOTRADETYPE | NVARCHAR2(510) | NULL |  |  |
| 20 | CDF_AGREEMENTNO | NVARCHAR2(40) | NULL |  |  |
| 21 | CDF_NDG | NVARCHAR2(40) | NULL |  |  |
| 22 | CDF_NODEID | NVARCHAR2(40) | NULL |  |  |
| 23 | CDF_ID | NVARCHAR2(200) | NULL |  |  |
| 24 | CDF_COLL_STATUS | NVARCHAR2(20) | NULL |  |  |
| 25 | CSA_ID | NUMBER(18,0) | NULL |  |  |
| 26 | CDF_COLLATERAL_SET_ID | NUMBER(18,0) | NULL |  |  |

## OTCTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 3 | SECONDARYTRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 4 | COUNTERPARTYTRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 5 | DTCCTRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 6 | SOURCETRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 7 | EXCHANGEDNOTIONAL1AMOUNT | NUMBER(19,4) | NULL |  |  |
| 8 | EXCHANGEDNOTIONAL1CCY | NVARCHAR2(2000) | NULL |  |  |
| 9 | EXCHANGEDNOTIONAL2AMOUNT | NUMBER(19,4) | NULL |  |  |
| 10 | EXCHANGEDNOTIONAL2CCY | NVARCHAR2(2000) | NULL |  |  |
| 11 | QUANTITY | NUMBER(21,6) | NULL |  |  |
| 12 | TRADEDATE | DATE | NULL |  |  |
| 13 | EFFECTIVEDATE | DATE | NULL |  |  |
| 14 | MATURITYDATE | DATE | NULL |  |  |
| 15 | EXPOSUREDATE | DATE | NULL |  |  |
| 16 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 17 | EXPOSURECCY | NVARCHAR2(2000) | NULL |  |  |
| 18 | EXPOSUREAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 19 | STRIKEPRICE | NUMBER(21,6) | NULL |  |  |
| 20 | SPREAD | NUMBER(21,6) | NULL |  |  |
| 21 | BUYSELL | NVARCHAR2(2000) | NULL |  |  |
| 22 | PUTCALL | NVARCHAR2(2000) | NULL |  |  |
| 23 | OPTIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 24 | UNDERLYING | NVARCHAR2(2000) | NULL |  |  |
| 25 | UNDERLYINGINSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 26 | LOCKUPMARGINAMOUNT | NUMBER(19,4) | NULL |  |  |
| 27 | LOCKUPMARGINCCY | NVARCHAR2(2000) | NULL |  |  |
| 28 | LOCKUPMARGINDUETO | NVARCHAR2(2000) | NULL |  |  |
| 29 | LOCKUPMARGINMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 30 | LOCKUPMARGINAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 31 | ADDITIONALMARGINAMOUNT | NUMBER(19,4) | NULL |  |  |
| 32 | ADDITIONALMARGINCCY | NVARCHAR2(2000) | NULL |  |  |
| 33 | ADDITIONALMARGINDUETO | NVARCHAR2(2000) | NULL |  |  |
| 34 | ADDITIONALMARGINMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 35 | ADDITIONALMARGINAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 36 | SOURCEPRINCIPAL | NVARCHAR2(2000) | NULL |  |  |
| 37 | SOURCECOUNTERPARTY | NVARCHAR2(2000) | NULL |  |  |
| 38 | SOURCEAGREEMENT | NVARCHAR2(2000) | NULL |  |  |
| 39 | TRADERNAME | NVARCHAR2(2000) | NULL |  |  |
| 40 | BOOK | NVARCHAR2(2000) | NULL |  |  |
| 41 | DESK | NVARCHAR2(2000) | NULL |  |  |
| 42 | DEALREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 43 | CLIPSCODE | NVARCHAR2(2000) | NULL |  |  |
| 44 | EXPOSURETRADECOMMENT | NVARCHAR2(2000) | NULL |  |  |
| 45 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 46 | IMPORTCONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 47 | PRINCIPALBRANCHID | NUMBER(18,0) | NULL |  |  |
| 48 | PRINCIPALBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 49 | SOURCEPRINCIPALBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 50 | COUNTERPARTYBRANCHID | NUMBER(18,0) | NULL |  |  |
| 51 | COUNTERPARTYBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 52 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 53 | TRADETYPEID | NUMBER(18,0) | NULL |  |  |
| 54 | TRADETYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 55 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 56 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 57 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 58 | AGREEMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 59 | SYSTEMCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 60 | SYSTEMCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 61 | EXPOSURESYSTEM | NUMBER(21,6) | NULL |  |  |
| 62 | LOCKUPMARGINSYSTEM | NUMBER(21,6) | NULL |  |  |
| 63 | ADDITIONALMARGINSYSTEM | NUMBER(21,6) | NULL |  |  |
| 64 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 65 | RECORDDATE | DATE | NOT NULL |  |  |
| 66 | EXPIRYTIME | DATE | NOT NULL |  |  |
| 67 | CLEARINGHOUSEREFERENCE | NVARCHAR2(60) | NULL |  |  |
| 68 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 69 | CLEARINGSTATUS | NVARCHAR2(100) | NULL |  |  |
| 70 | COMMONTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 71 | EXTLIVE | NUMBER(1,0) | NULL |  |  |
| 72 | EXTSEGMENTMC | NVARCHAR2(200) | NULL |  |  |
| 73 | EXTFCPDATE | DATE | NULL |  |  |
| 74 | EXTFCPAMOUNTEUR | NUMBER(19,2) | NULL |  |  |

## OTCTRADESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 3 | SECONDARYTRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 4 | COUNTERPARTYTRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 5 | DTCCTRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 6 | SOURCETRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 7 | EXCHANGEDNOTIONAL1AMOUNT | NUMBER(19,4) | NULL |  |  |
| 8 | EXCHANGEDNOTIONAL1CCY | NVARCHAR2(2000) | NULL |  |  |
| 9 | EXCHANGEDNOTIONAL2AMOUNT | NUMBER(19,4) | NULL |  |  |
| 10 | EXCHANGEDNOTIONAL2CCY | NVARCHAR2(2000) | NULL |  |  |
| 11 | QUANTITY | NUMBER(21,6) | NULL |  |  |
| 12 | TRADEDATE | DATE | NULL |  |  |
| 13 | EFFECTIVEDATE | DATE | NULL |  |  |
| 14 | MATURITYDATE | DATE | NULL |  |  |
| 15 | EXPOSUREDATE | DATE | NULL |  |  |
| 16 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 17 | EXPOSURECCY | NVARCHAR2(2000) | NULL |  |  |
| 18 | EXPOSUREAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 19 | STRIKEPRICE | NUMBER(21,6) | NULL |  |  |
| 20 | SPREAD | NUMBER(21,6) | NULL |  |  |
| 21 | BUYSELL | NVARCHAR2(2000) | NULL |  |  |
| 22 | PUTCALL | NVARCHAR2(2000) | NULL |  |  |
| 23 | OPTIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 24 | UNDERLYING | NVARCHAR2(2000) | NULL |  |  |
| 25 | UNDERLYINGINSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 26 | LOCKUPMARGINAMOUNT | NUMBER(19,4) | NULL |  |  |
| 27 | LOCKUPMARGINCCY | NVARCHAR2(2000) | NULL |  |  |
| 28 | LOCKUPMARGINDUETO | NVARCHAR2(2000) | NULL |  |  |
| 29 | LOCKUPMARGINMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 30 | LOCKUPMARGINAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 31 | ADDITIONALMARGINAMOUNT | NUMBER(19,4) | NULL |  |  |
| 32 | ADDITIONALMARGINCCY | NVARCHAR2(2000) | NULL |  |  |
| 33 | ADDITIONALMARGINDUETO | NVARCHAR2(2000) | NULL |  |  |
| 34 | ADDITIONALMARGINMETHOD | NVARCHAR2(2000) | NULL |  |  |
| 35 | ADDITIONALMARGINAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 36 | SOURCEPRINCIPAL | NVARCHAR2(2000) | NULL |  |  |
| 37 | SOURCECOUNTERPARTY | NVARCHAR2(2000) | NULL |  |  |
| 38 | SOURCEAGREEMENT | NVARCHAR2(2000) | NULL |  |  |
| 39 | TRADERNAME | NVARCHAR2(2000) | NULL |  |  |
| 40 | BOOK | NVARCHAR2(2000) | NULL |  |  |
| 41 | DESK | NVARCHAR2(2000) | NULL |  |  |
| 42 | DEALREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 43 | CLIPSCODE | NVARCHAR2(2000) | NULL |  |  |
| 44 | EXPOSURETRADECOMMENT | NVARCHAR2(2000) | NULL |  |  |
| 45 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 46 | IMPORTCONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 47 | PRINCIPALBRANCHID | NUMBER(18,0) | NULL |  |  |
| 48 | PRINCIPALBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 49 | SOURCEPRINCIPALBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 50 | COUNTERPARTYBRANCHID | NUMBER(18,0) | NULL |  |  |
| 51 | COUNTERPARTYBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 52 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 53 | TRADETYPEID | NUMBER(18,0) | NULL |  |  |
| 54 | TRADETYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 55 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 56 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 57 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 58 | AGREEMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 59 | SYSTEMCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 60 | SYSTEMCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 61 | EXPOSURESYSTEM | NUMBER(21,6) | NULL |  |  |
| 62 | LOCKUPMARGINSYSTEM | NUMBER(21,6) | NULL |  |  |
| 63 | ADDITIONALMARGINSYSTEM | NUMBER(21,6) | NULL |  |  |
| 64 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 65 | RECORDDATE | DATE | NOT NULL |  |  |
| 66 | EXPIRYTIME | DATE | NOT NULL |  |  |
| 67 | CLEARINGHOUSEREFERENCE | NVARCHAR2(60) | NULL |  |  |
| 68 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 69 | CLEARINGSTATUS | NVARCHAR2(100) | NULL |  |  |
| 70 | COMMONTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 71 | EXTLIVE | NUMBER(1,0) | NULL |  |  |
| 72 | EXTSEGMENTMC | NVARCHAR2(200) | NULL |  |  |
| 73 | EXTFCPDATE | DATE | NULL |  |  |
| 74 | EXTFCPAMOUNTEUR | NUMBER(19,2) | NULL |  |  |

## PLACEOFSETTLEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PLACEOFSETTLEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PLACEOFSETTLEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 5 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 7 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 8 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | UPDATEDTIMESTAMP | DATE | NULL |  |  |

## PLACEOFSETTLEMENTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PLACEOFSETTLEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PLACEOFSETTLEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 5 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 7 | UPDATEDBY | NUMBER(18,0) | NULL |  |  |
| 8 | UPDATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | UPDATEDTIMESTAMP | DATE | NULL |  |  |

## PRICESOURCES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PRICESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRICESOURCENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 4 | ISDEFAULT | NUMBER(1,0) | NULL |  |  |

## PRICESOURCESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PRICESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRICESOURCENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 4 | ISDEFAULT | NUMBER(1,0) | NULL |  |  |

## PROFITANDLOSSES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PROFITANDLOSSID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COBDATE | DATE | NULL |  |  |
| 3 | SETTLEMENTDATE | DATE | NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | TRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 7 | EXCHANGETRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 8 | CONSIDERATION | NUMBER(19,4) | NULL |  |  |
| 9 | COUPON | NUMBER(19,4) | NULL |  |  |
| 10 | CCPFEES | NUMBER(19,4) | NULL |  |  |
| 11 | PRICEALIGNEDINTEREST | NUMBER(19,4) | NULL |  |  |
| 12 | CASHFLOW | NUMBER(19,4) | NULL |  |  |
| 13 | EXCHANGERATE | NUMBER(21,6) | NULL |  |  |
| 14 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 15 | MARKETINDEXNAME | NVARCHAR2(510) | NULL |  |  |
| 16 | PRICEALIGNEDINTERESTRATE | NUMBER(9,6) | NULL |  |  |
| 17 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 18 | TAX | NUMBER(19,4) | NULL |  |  |
| 19 | CONSIDERATIONAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 20 | COUPONAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 21 | CCPFEESAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 22 | PRICEALIGNEDINTERESTAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 23 | CASHFLOWAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 24 | HELDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 25 | POSTEDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 26 | IMPORTRECORDID | NUMBER(18,0) | NULL |  |  |
| 27 | IMPORTCONFIGURATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 28 | CLEARINGMEMBERFEES | NUMBER(19,4) | NULL |  |  |
| 29 | CLEARINGMEMBERFEESAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 30 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 31 | INSTRUMENTNAME | NVARCHAR2(510) | NULL |  |  |

## PROFITANDLOSSESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PROFITANDLOSSID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COBDATE | DATE | NULL |  |  |
| 3 | SETTLEMENTDATE | DATE | NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | TRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 7 | EXCHANGETRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 8 | CONSIDERATION | NUMBER(19,4) | NULL |  |  |
| 9 | COUPON | NUMBER(19,4) | NULL |  |  |
| 10 | CCPFEES | NUMBER(19,4) | NULL |  |  |
| 11 | PRICEALIGNEDINTEREST | NUMBER(19,4) | NULL |  |  |
| 12 | CASHFLOW | NUMBER(19,4) | NULL |  |  |
| 13 | EXCHANGERATE | NUMBER(21,6) | NULL |  |  |
| 14 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 15 | MARKETINDEXNAME | NVARCHAR2(510) | NULL |  |  |
| 16 | PRICEALIGNEDINTERESTRATE | NUMBER(9,6) | NULL |  |  |
| 17 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 18 | TAX | NUMBER(19,4) | NULL |  |  |
| 19 | CONSIDERATIONAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 20 | COUPONAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 21 | CCPFEESAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 22 | PRICEALIGNEDINTERESTAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 23 | CASHFLOWAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 24 | HELDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 25 | POSTEDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 26 | IMPORTRECORDID | NUMBER(18,0) | NULL |  |  |
| 27 | IMPORTCONFIGURATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 28 | CLEARINGMEMBERFEES | NUMBER(19,4) | NULL |  |  |
| 29 | CLEARINGMEMBERFEESAPPLYTO | NVARCHAR2(200) | NULL |  |  |
| 30 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 31 | INSTRUMENTNAME | NVARCHAR2(510) | NULL |  |  |

## PSETHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ORIGINATION | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | PLACEOFSETTLEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | PLACEOFSETTLMENTNAME | NVARCHAR2(510) | NULL |  |  |

## PSETHISTORYBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 2 | ORIGINATION | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | PLACEOFSETTLEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | PLACEOFSETTLMENTNAME | NVARCHAR2(510) | NULL |  |  |

## RATINGBASEDELIGRULES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 5 | INSTRUMENTCLASS | NVARCHAR2(510) | NULL |  |  |
| 6 | APPLIESTO | NVARCHAR2(510) | NULL |  |  |
| 7 | BUCKETS | NCLOB | NULL |  |  |
| 8 | ALLPARTYRATINGSREQ | NUMBER(1,0) | NULL |  |  |
| 9 | PARTYRATINGDISPUTEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 10 | PARTYDEBTSTRUCTURE | NVARCHAR2(510) | NULL |  |  |
| 11 | PARTYSELECTEDAGENCIES | NVARCHAR2(510) | NULL |  |  |
| 12 | PARTYREFERENCEAGENCY | NVARCHAR2(510) | NULL |  |  |
| 13 | ALLINSTRUMENTRATINGSREQ | NUMBER(1,0) | NULL |  |  |
| 14 | INSTRUMENTRATINGDISPUTEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 15 | INSTRUMENTDEBTSTRUCTURE | NVARCHAR2(510) | NULL |  |  |
| 16 | INSTRUMENTSELECTEDAGENCIES | NVARCHAR2(510) | NULL |  |  |
| 17 | INSTRUMENTREFERENCEAGENCY | NVARCHAR2(510) | NULL |  |  |
| 18 | ALLISSUERRATINGSREQ | NUMBER(1,0) | NULL |  |  |
| 19 | ISSUERRATINGDISPUTEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 20 | ISSUERDEBTSTRUCTURE | NVARCHAR2(510) | NULL |  |  |
| 21 | ISSUERSELECTEDAGENCIES | NVARCHAR2(510) | NULL |  |  |
| 22 | ISSUERREFERENCEAGENCY | NVARCHAR2(510) | NULL |  |  |
| 23 | RATINGBAND | NCLOB | NULL |  |  |

## RATINGBASEDELIGRULESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 5 | INSTRUMENTCLASS | NVARCHAR2(510) | NULL |  |  |
| 6 | APPLIESTO | NVARCHAR2(510) | NULL |  |  |
| 7 | BUCKETS | NCLOB | NULL |  |  |
| 8 | ALLPARTYRATINGSREQ | NUMBER(1,0) | NULL |  |  |
| 9 | PARTYRATINGDISPUTEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 10 | PARTYDEBTSTRUCTURE | NVARCHAR2(510) | NULL |  |  |
| 11 | PARTYSELECTEDAGENCIES | NVARCHAR2(510) | NULL |  |  |
| 12 | PARTYREFERENCEAGENCY | NVARCHAR2(510) | NULL |  |  |
| 13 | ALLINSTRUMENTRATINGSREQ | NUMBER(1,0) | NULL |  |  |
| 14 | INSTRUMENTRATINGDISPUTEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 15 | INSTRUMENTDEBTSTRUCTURE | NVARCHAR2(510) | NULL |  |  |
| 16 | INSTRUMENTSELECTEDAGENCIES | NVARCHAR2(510) | NULL |  |  |
| 17 | INSTRUMENTREFERENCEAGENCY | NVARCHAR2(510) | NULL |  |  |
| 18 | ALLISSUERRATINGSREQ | NUMBER(1,0) | NULL |  |  |
| 19 | ISSUERRATINGDISPUTEMETHOD | NVARCHAR2(510) | NULL |  |  |
| 20 | ISSUERDEBTSTRUCTURE | NVARCHAR2(510) | NULL |  |  |
| 21 | ISSUERSELECTEDAGENCIES | NVARCHAR2(510) | NULL |  |  |
| 22 | ISSUERREFERENCEAGENCY | NVARCHAR2(510) | NULL |  |  |
| 23 | RATINGBAND | NCLOB | NULL |  |  |

## RATINGSBASEDMARGINTERMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGBASEDMARGINTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINTERMID | NUMBER(18,0) | NULL |  |  |
| 3 | ORDINAL | NUMBER(21,6) | NULL |  |  |
| 4 | DELIVERMINIMUMTRANSFERAMOUNT | NUMBER(21,6) | NULL |  |  |
| 5 | DELIVERROUNDINGAMOUNT | NUMBER(21,6) | NULL |  |  |
| 6 | THRESHOLD | NUMBER(21,6) | NULL |  |  |
| 7 | ADDITIONALMARGIN | NUMBER(21,6) | NULL |  |  |
| 8 | LOCKUPMARGIN | NUMBER(21,6) | NULL |  |  |
| 9 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 10 | AGENCYID | NUMBER(18,0) | NULL |  |  |
| 11 | RETURNMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 12 | MINIMUMTRANSFERAMOUNTMETHOD | NVARCHAR2(510) | NULL |  |  |
| 13 | RETURNROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 14 | ROUNDINGAMOUNTMETHOD | NVARCHAR2(510) | NULL |  |  |
| 15 | ADDITIONALMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 16 | LOCKUPMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 17 | THRESHOLDMETHOD | NVARCHAR2(510) | NULL |  |  |
| 18 | CREDITRATINGID | NUMBER(18,0) | NULL |  |  |

## RATINGSBASEDMARGINTERMSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGBASEDMARGINTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINTERMID | NUMBER(18,0) | NULL |  |  |
| 3 | ORDINAL | NUMBER(21,6) | NULL |  |  |
| 4 | DELIVERMINIMUMTRANSFERAMOUNT | NUMBER(21,6) | NULL |  |  |
| 5 | DELIVERROUNDINGAMOUNT | NUMBER(21,6) | NULL |  |  |
| 6 | THRESHOLD | NUMBER(21,6) | NULL |  |  |
| 7 | ADDITIONALMARGIN | NUMBER(21,6) | NULL |  |  |
| 8 | LOCKUPMARGIN | NUMBER(21,6) | NULL |  |  |
| 9 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 10 | AGENCYID | NUMBER(18,0) | NULL |  |  |
| 11 | RETURNMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 12 | MINIMUMTRANSFERAMOUNTMETHOD | NVARCHAR2(510) | NULL |  |  |
| 13 | RETURNROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 14 | ROUNDINGAMOUNTMETHOD | NVARCHAR2(510) | NULL |  |  |
| 15 | ADDITIONALMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 16 | LOCKUPMARGINMETHOD | NVARCHAR2(510) | NULL |  |  |
| 17 | THRESHOLDMETHOD | NVARCHAR2(510) | NULL |  |  |
| 18 | CREDITRATINGID | NUMBER(18,0) | NULL |  |  |

## REPOTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REPOTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 3 | TRADETYPEID | NUMBER(18,0) | NULL |  |  |
| 4 | TRADETYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 6 | TRADECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 7 | TRADECURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 8 | INSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 9 | INSTRUMENTDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 10 | INSTRUMENTMATURITYDATE | DATE | NULL |  |  |
| 11 | INSTRUMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | INSTRUMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | COUPONACCRUALINTEREST | NUMBER(21,6) | NULL |  |  |
| 14 | TRADESTARTDATE | DATE | NULL |  |  |
| 15 | TRADEENDDATE | DATE | NULL |  |  |
| 16 | REPORATEDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 17 | TRADEVALUE | NUMBER(21,6) | NULL |  |  |
| 18 | HAIRCUTVALUE | NUMBER(21,6) | NULL |  |  |
| 19 | MARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 20 | EXPOSUREDATE | DATE | NULL |  |  |
| 21 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 22 | EXPOSURECCY | NVARCHAR2(2000) | NULL |  |  |
| 23 | EXPOSUREAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 24 | EXCLUDED | NUMBER(1,0) | NULL |  |  |
| 25 | SOURCEAGREEMENT | NVARCHAR2(2000) | NULL |  |  |
| 26 | SOURCEPRINCIPAL | NVARCHAR2(2000) | NULL |  |  |
| 27 | SOURCECOUNTERPARTY | NVARCHAR2(2000) | NULL |  |  |
| 28 | SOURCETRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 29 | BASEMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 30 | LOWERMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 31 | UPPERMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 32 | INDEXRATIO | NUMBER(21,6) | NULL |  |  |
| 33 | MARKETCLOSINGYIELD | NUMBER(21,6) | NULL |  |  |
| 34 | SECONDARYTRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 35 | TRADEEXECUTIONDATE | DATE | NULL |  |  |
| 36 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 37 | IMPORTCONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 38 | PRINCIPALBRANCHID | NUMBER(18,0) | NULL |  |  |
| 39 | PRINCIPALBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 40 | SOURCEPRINCIPALBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 41 | COUNTERPARTYBRANCHID | NUMBER(18,0) | NULL |  |  |
| 42 | COUNTERPARTYBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 43 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 44 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 45 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 46 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 47 | AGREEMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 48 | SYSTEMCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 49 | SYSTEMCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 50 | EXPOSURESYSTEM | NUMBER(21,6) | NULL |  |  |
| 51 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 52 | RECORDDATE | DATE | NOT NULL |  |  |
| 53 | EXPIRYTIME | DATE | NOT NULL |  |  |
| 54 | CLEARINGHOUSEREFERENCE | NVARCHAR2(60) | NULL |  |  |
| 55 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 56 | CLEARINGSTATUS | NVARCHAR2(100) | NULL |  |  |
| 57 | CLEANPRICE | NUMBER(21,8) | NULL |  |  |
| 58 | DIRTYPRICE | NUMBER(21,8) | NULL |  |  |
| 59 | FACTOR | NUMBER(21,8) | NULL |  |  |
| 60 | HAIRCUT | NUMBER(21,8) | NULL |  |  |
| 61 | INSTRUMENTCOUPON | NUMBER(21,8) | NULL |  |  |
| 62 | REPORATE | NUMBER(21,8) | NULL |  |  |
| 63 | TRADEDCLEANPRICE | NUMBER(21,8) | NULL |  |  |
| 64 | TRADEDDIRTYPRICE | NUMBER(21,8) | NULL |  |  |

## REPOTRADESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REPOTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 3 | TRADETYPEID | NUMBER(18,0) | NULL |  |  |
| 4 | TRADETYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 6 | TRADECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 7 | TRADECURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 8 | INSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 9 | INSTRUMENTDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 10 | INSTRUMENTMATURITYDATE | DATE | NULL |  |  |
| 11 | INSTRUMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | INSTRUMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 13 | COUPONACCRUALINTEREST | NUMBER(21,6) | NULL |  |  |
| 14 | TRADESTARTDATE | DATE | NULL |  |  |
| 15 | TRADEENDDATE | DATE | NULL |  |  |
| 16 | REPORATEDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 17 | TRADEVALUE | NUMBER(21,6) | NULL |  |  |
| 18 | HAIRCUTVALUE | NUMBER(21,6) | NULL |  |  |
| 19 | MARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 20 | EXPOSUREDATE | DATE | NULL |  |  |
| 21 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 22 | EXPOSURECCY | NVARCHAR2(2000) | NULL |  |  |
| 23 | EXPOSUREAGREEMENT | NUMBER(21,6) | NULL |  |  |
| 24 | EXCLUDED | NUMBER(1,0) | NULL |  |  |
| 25 | SOURCEAGREEMENT | NVARCHAR2(2000) | NULL |  |  |
| 26 | SOURCEPRINCIPAL | NVARCHAR2(2000) | NULL |  |  |
| 27 | SOURCECOUNTERPARTY | NVARCHAR2(2000) | NULL |  |  |
| 28 | SOURCETRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 29 | BASEMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 30 | LOWERMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 31 | UPPERMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 32 | INDEXRATIO | NUMBER(21,6) | NULL |  |  |
| 33 | MARKETCLOSINGYIELD | NUMBER(21,6) | NULL |  |  |
| 34 | SECONDARYTRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 35 | TRADEEXECUTIONDATE | DATE | NULL |  |  |
| 36 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 37 | IMPORTCONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 38 | PRINCIPALBRANCHID | NUMBER(18,0) | NULL |  |  |
| 39 | PRINCIPALBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 40 | SOURCEPRINCIPALBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 41 | COUNTERPARTYBRANCHID | NUMBER(18,0) | NULL |  |  |
| 42 | COUNTERPARTYBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 43 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 44 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 45 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 46 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 47 | AGREEMENTCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 48 | SYSTEMCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 49 | SYSTEMCURRENCYNAME | NVARCHAR2(2000) | NULL |  |  |
| 50 | EXPOSURESYSTEM | NUMBER(21,6) | NULL |  |  |
| 51 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 52 | RECORDDATE | DATE | NOT NULL |  |  |
| 53 | EXPIRYTIME | DATE | NOT NULL |  |  |
| 54 | CLEARINGHOUSEREFERENCE | NVARCHAR2(60) | NULL |  |  |
| 55 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 56 | CLEARINGSTATUS | NVARCHAR2(100) | NULL |  |  |
| 57 | CLEANPRICE | NUMBER(21,8) | NULL |  |  |
| 58 | DIRTYPRICE | NUMBER(21,8) | NULL |  |  |
| 59 | FACTOR | NUMBER(21,8) | NULL |  |  |
| 60 | HAIRCUT | NUMBER(21,8) | NULL |  |  |
| 61 | INSTRUMENTCOUPON | NUMBER(21,8) | NULL |  |  |
| 62 | REPORATE | NUMBER(21,8) | NULL |  |  |
| 63 | TRADEDCLEANPRICE | NUMBER(21,8) | NULL |  |  |
| 64 | TRADEDDIRTYPRICE | NUMBER(21,8) | NULL |  |  |

## SCHEMAINFO

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VERSIONNAME | NUMBER(9,0) | NULL |  |  |

## SCHEMAINFOBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VERSIONNAME | NUMBER(9,0) | NULL |  |  |

## SETTLEMENTINSTRUCTIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 3 | ENTITYNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | INSTRUCTIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 5 | CUSTODIANID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CUSTODIANNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | ACCOUNTNUMBER | NVARCHAR2(510) | NULL |  |  |
| 8 | ACCOUNTNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | BENEFICIARYNUMBER | NVARCHAR2(510) | NULL |  |  |
| 10 | BENEFICIARYNAME | NVARCHAR2(510) | NULL |  |  |
| 11 | ISOTC | NUMBER(1,0) | NULL |  |  |
| 12 | ISREPO | NUMBER(1,0) | NULL |  |  |
| 13 | ISSECLENDING | NUMBER(1,0) | NULL |  |  |
| 14 | SETTLEMENTINSTRUCTIONNAME | NVARCHAR2(510) | NULL |  |  |
| 15 | CASHINSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 16 | CASHINSTRUMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 17 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 18 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 19 | PARTY | NVARCHAR2(510) | NULL |  |  |
| 20 | APPLIESTO | NVARCHAR2(2000) | NULL |  |  |
| 21 | APPLIESTOMARGIN | NVARCHAR2(2000) | NULL |  |  |
| 22 | ISCENTRALCLEARING | NUMBER(1,0) | NULL |  |  |
| 23 | ISCLIENTCLEARING | NUMBER(1,0) | NULL |  |  |
| 24 | SICOMMENTS | NVARCHAR2(510) | NULL |  |  |
| 25 | SIREFERENCES | NVARCHAR2(510) | NULL |  |  |
| 26 | SETTLEMENTOFFSET | NVARCHAR2(510) | NULL |  |  |
| 27 | MOVEMENTDIRECTION | NVARCHAR2(510) | NULL |  |  |
| 28 | MOVEMENTTYPE | NVARCHAR2(510) | NULL |  |  |
| 29 | PLACEOFSETTLEMENTID | NUMBER(18,0) | NULL |  |  |
| 30 | PLACEOFSETTLEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 31 | ISDEFAULT | NUMBER(1,0) | NOT NULL | `(0)` |  |

## SETTLEMENTINSTRUCTIONSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 3 | ENTITYNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | INSTRUCTIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 5 | CUSTODIANID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CUSTODIANNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | ACCOUNTNUMBER | NVARCHAR2(510) | NULL |  |  |
| 8 | ACCOUNTNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | BENEFICIARYNUMBER | NVARCHAR2(510) | NULL |  |  |
| 10 | BENEFICIARYNAME | NVARCHAR2(510) | NULL |  |  |
| 11 | ISOTC | NUMBER(1,0) | NULL |  |  |
| 12 | ISREPO | NUMBER(1,0) | NULL |  |  |
| 13 | ISSECLENDING | NUMBER(1,0) | NULL |  |  |
| 14 | SETTLEMENTINSTRUCTIONNAME | NVARCHAR2(510) | NULL |  |  |
| 15 | CASHINSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 16 | CASHINSTRUMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 17 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 18 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 19 | PARTY | NVARCHAR2(510) | NULL |  |  |
| 20 | APPLIESTO | NVARCHAR2(2000) | NULL |  |  |
| 21 | APPLIESTOMARGIN | NVARCHAR2(2000) | NULL |  |  |
| 22 | ISCENTRALCLEARING | NUMBER(1,0) | NULL |  |  |
| 23 | ISCLIENTCLEARING | NUMBER(1,0) | NULL |  |  |
| 24 | SICOMMENTS | NVARCHAR2(510) | NULL |  |  |
| 25 | SIREFERENCES | NVARCHAR2(510) | NULL |  |  |
| 26 | SETTLEMENTOFFSET | NVARCHAR2(510) | NULL |  |  |
| 27 | MOVEMENTDIRECTION | NVARCHAR2(510) | NULL |  |  |
| 28 | MOVEMENTTYPE | NVARCHAR2(510) | NULL |  |  |
| 29 | PLACEOFSETTLEMENTID | NUMBER(18,0) | NULL |  |  |
| 30 | PLACEOFSETTLEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 31 | ISDEFAULT | NUMBER(1,0) | NOT NULL |  |  |

## SPECIFICTRADECOVERAGE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SPECIFICTRADECOVERAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 5 | IMPORTCONFIGURATIONNAME | NVARCHAR2(200) | NULL |  |  |
| 6 | TRADECOVERAGETYPE | NVARCHAR2(510) | NULL |  |  |
| 7 | REFERENCEVALUE | NVARCHAR2(200) | NULL |  |  |
| 8 | TRADEFIELD | NVARCHAR2(510) | NULL |  |  |
| 9 | EXTENSIONFIELDNAME | NVARCHAR2(50) | NULL |  |  |
| 10 | TRADEFIELDNAME | NVARCHAR2(510) | NULL |  |  |
| 11 | EXTENSIONFIELDDEFINITIONID | NUMBER(18,0) | NULL |  |  |

## SPECIFICTRADECOVERAGEBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SPECIFICTRADECOVERAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 5 | IMPORTCONFIGURATIONNAME | NVARCHAR2(200) | NULL |  |  |
| 6 | TRADECOVERAGETYPE | NVARCHAR2(510) | NULL |  |  |
| 7 | REFERENCEVALUE | NVARCHAR2(200) | NULL |  |  |
| 8 | TRADEFIELD | NVARCHAR2(510) | NULL |  |  |
| 9 | EXTENSIONFIELDNAME | NVARCHAR2(50) | NULL |  |  |
| 10 | TRADEFIELDNAME | NVARCHAR2(510) | NULL |  |  |
| 11 | EXTENSIONFIELDDEFINITIONID | NUMBER(18,0) | NULL |  |  |

## STATUS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | STATUSID | NUMBER(9,0) | NOT NULL |  |  |
| 2 | STATUSNAME | NVARCHAR2(100) | NOT NULL |  |  |

## STATUSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | STATUSID | NUMBER(9,0) | NOT NULL |  |  |
| 2 | STATUSNAME | NVARCHAR2(100) | NOT NULL |  |  |

## STOCKINDEXES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STOCKINDEXNAME | NCLOB | NULL |  |  |

## STOCKINDEXESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STOCKINDEXNAME | NCLOB | NULL |  |  |

## SUBSTITUTIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SUBSTITUTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWSTATEID | NUMBER(18,0) | NULL |  |  |
| 3 | WORKFLOWSTATENAME | NVARCHAR2(510) | NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | MOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 7 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 8 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 10 | TRANSITIONEDBY | NUMBER(18,0) | NULL |  |  |
| 11 | TRANSITIONEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 12 | TRANSITIONREQUESTEDTIMESTAMP | DATE | NULL |  |  |
| 13 | TRANSITIONENDTIMESTAMP | DATE | NULL |  |  |
| 14 | REVIEWEDBY | NUMBER(18,0) | NULL |  |  |
| 15 | REVIEWEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 16 | REVIEWEDBYTIMESTAMP | DATE | NULL |  |  |
| 17 | POSITIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 18 | SUBSTITUTIONSTATUS | NVARCHAR2(510) | NULL |  |  |
| 19 | TRANSITIONERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 20 | TRANSITIONSTATUS | NVARCHAR2(510) | NULL |  |  |
| 21 | SENTTIMESTAMP | DATE | NULL |  |  |
| 22 | SENTSTATUS | NVARCHAR2(510) | NULL |  |  |
| 23 | TRANSITIONCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 24 | REQUIREDAPPROVALLEVEL | NVARCHAR2(2000) | NULL |  |  |

## SUBSTITUTIONSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SUBSTITUTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWSTATEID | NUMBER(18,0) | NULL |  |  |
| 3 | WORKFLOWSTATENAME | NVARCHAR2(510) | NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | MOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 7 | CREATEDBY | NUMBER(18,0) | NULL |  |  |
| 8 | CREATEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 10 | TRANSITIONEDBY | NUMBER(18,0) | NULL |  |  |
| 11 | TRANSITIONEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 12 | TRANSITIONREQUESTEDTIMESTAMP | DATE | NULL |  |  |
| 13 | TRANSITIONENDTIMESTAMP | DATE | NULL |  |  |
| 14 | REVIEWEDBY | NUMBER(18,0) | NULL |  |  |
| 15 | REVIEWEDBYNAME | NVARCHAR2(510) | NULL |  |  |
| 16 | REVIEWEDBYTIMESTAMP | DATE | NULL |  |  |
| 17 | POSITIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 18 | SUBSTITUTIONSTATUS | NVARCHAR2(510) | NULL |  |  |
| 19 | TRANSITIONERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 20 | TRANSITIONSTATUS | NVARCHAR2(510) | NULL |  |  |
| 21 | SENTTIMESTAMP | DATE | NULL |  |  |
| 22 | SENTSTATUS | NVARCHAR2(510) | NULL |  |  |
| 23 | TRANSITIONCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 24 | REQUIREDAPPROVALLEVEL | NVARCHAR2(2000) | NULL |  |  |

## TASKSTATUS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TASKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TASKTYPE | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | CONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 4 | CONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 5 | STATUS | NVARCHAR2(2000) | NULL |  |  |
| 6 | REQUESTEDBY | NVARCHAR2(2000) | NULL |  |  |
| 7 | REQUESTEDDATETIME | DATE | NULL |  |  |
| 8 | STARTDATETIME | DATE | NULL |  |  |
| 9 | ENDDATETIME | DATE | NULL |  |  |
| 10 | RECORDSCOUNT | NUMBER(18,0) | NULL |  |  |
| 11 | INFOMESSAGESCOUNT | NUMBER(18,0) | NULL |  |  |
| 12 | WARNINGMESSAGESCOUNT | NUMBER(18,0) | NULL |  |  |
| 13 | EXCEPTIONMESSAGESCOUNT | NUMBER(18,0) | NULL |  |  |

## TASKSTATUSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TASKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TASKTYPE | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | CONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 4 | CONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 5 | STATUS | NVARCHAR2(2000) | NULL |  |  |
| 6 | REQUESTEDBY | NVARCHAR2(2000) | NULL |  |  |
| 7 | REQUESTEDDATETIME | DATE | NULL |  |  |
| 8 | STARTDATETIME | DATE | NULL |  |  |
| 9 | ENDDATETIME | DATE | NULL |  |  |
| 10 | RECORDSCOUNT | NUMBER(18,0) | NULL |  |  |
| 11 | INFOMESSAGESCOUNT | NUMBER(18,0) | NULL |  |  |
| 12 | WARNINGMESSAGESCOUNT | NUMBER(18,0) | NULL |  |  |
| 13 | EXCEPTIONMESSAGESCOUNT | NUMBER(18,0) | NULL |  |  |

## TRADEASSIGNMENTRULES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 4 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 6 | COUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | TRADEASSIGNMENTRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 8 | PRINCIPALBRANCHES | NVARCHAR2(4000) | NULL |  |  |
| 9 | COUNTERPARTYBRANCHES | NVARCHAR2(4000) | NULL |  |  |
| 10 | ADDITIONALCRITERIA | NVARCHAR2(4000) | NULL |  |  |
| 11 | INCLUDESNEWTRADETYPES | NVARCHAR2(6) | NULL |  |  |
| 12 | BUSINESSLINE | NVARCHAR2(510) | NULL |  |  |
| 13 | COLLATERALMARGINTYPE | NVARCHAR2(510) | NULL |  |  |
| 14 | TRADETYPES | CLOB | NULL |  |  |

## TRADEASSIGNMENTRULESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 4 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 6 | COUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | TRADEASSIGNMENTRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 8 | PRINCIPALBRANCHES | NVARCHAR2(4000) | NULL |  |  |
| 9 | COUNTERPARTYBRANCHES | NVARCHAR2(4000) | NULL |  |  |
| 10 | ADDITIONALCRITERIA | NVARCHAR2(4000) | NULL |  |  |
| 11 | INCLUDESNEWTRADETYPES | NVARCHAR2(6) | NULL |  |  |
| 12 | BUSINESSLINE | NVARCHAR2(510) | NULL |  |  |
| 13 | COLLATERALMARGINTYPE | NVARCHAR2(510) | NULL |  |  |
| 14 | TRADETYPES | CLOB | NULL |  |  |

## TRIPARTYCOLLPOSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYCOLLPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | PRIMARYINSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | CUSTODIANID | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CUSTODIANNAME | NVARCHAR2(2000) | NULL |  |  |
| 8 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 9 | IMPORTCONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 10 | COLLATERALPOSITIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 11 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 12 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 13 | ADJUSTEDMARKETVALUEAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 14 | PREHAIRCUTMARKETVALUEAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 15 | VALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 16 | FXRATE | NUMBER(21,6) | NULL |  |  |
| 17 | PRICE | NUMBER(17,8) | NULL |  |  |
| 18 | PRICEDATE | DATE | NULL |  |  |
| 19 | RECORDDATE | DATE | NOT NULL |  |  |
| 20 | EXPIRYTIME | DATE | NOT NULL |  |  |
| 21 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 22 | INSTRUMENTDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 23 | INSTRUMENTCURRENCYCODE | NVARCHAR2(2000) | NULL |  |  |
| 24 | INSTRUMENTTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 25 | INSTRUMENTISSUERNAME | NVARCHAR2(2000) | NULL |  |  |
| 26 | ISSUERDOMICILENAME | NVARCHAR2(2000) | NULL |  |  |

## TRIPARTYCOLLPOSITIONSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYCOLLPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | PRIMARYINSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 6 | CUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 7 | CUSTODIANNAME | NVARCHAR2(2000) | NULL |  |  |
| 8 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 9 | IMPORTCONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 10 | COLLATERALPOSITIONTYPE | NVARCHAR2(2000) | NULL |  |  |
| 11 | COLLATERALMARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 12 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 13 | ADJUSTEDMARKETVALUEAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 14 | PREHAIRCUTMARKETVALUEAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 15 | VALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 16 | FXRATE | NUMBER(21,6) | NULL |  |  |
| 17 | PRICE | NUMBER(17,8) | NULL |  |  |
| 18 | PRICEDATE | DATE | NULL |  |  |
| 19 | RECORDDATE | DATE | NOT NULL |  |  |
| 20 | EXPIRYTIME | DATE | NOT NULL |  |  |
| 21 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 22 | INSTRUMENTDESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 23 | INSTRUMENTCURRENCYCODE | NVARCHAR2(2000) | NULL |  |  |
| 24 | INSTRUMENTTYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 25 | INSTRUMENTISSUERNAME | NVARCHAR2(2000) | NULL |  |  |
| 26 | ISSUERDOMICILENAME | NVARCHAR2(2000) | NULL |  |  |

## TRIPARTYCONCBREACHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 2 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | RULEDESCRIPTION | NVARCHAR2(4000) | NULL |  |  |
| 4 | REASON | NVARCHAR2(1000) | NULL |  |  |

## TRIPARTYCONCBREACHESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 2 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | RULEDESCRIPTION | NVARCHAR2(4000) | NULL |  |  |
| 4 | REASON | NVARCHAR2(1000) | NULL |  |  |

## TRIPARTYECAGREEMENTRESULTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYECAGREEMENTRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | TRIPARTYECRECORDID | NUMBER(18,0) | NULL |  |  |
| 5 | MANAGINGLOCATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | ELIGIBILITYRESULT | NVARCHAR2(510) | NULL |  |  |
| 7 | CONCENTRATIONRESULT | NVARCHAR2(510) | NULL |  |  |
| 8 | VALUATIONAGENT | NVARCHAR2(510) | NULL |  |  |
| 9 | AGREEMENTCURRENCY | NVARCHAR2(6) | NULL |  |  |

## TRIPARTYECAGREEMENTRESULTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYECAGREEMENTRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | TRIPARTYECRECORDID | NUMBER(18,0) | NULL |  |  |
| 5 | MANAGINGLOCATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | ELIGIBILITYRESULT | NVARCHAR2(510) | NULL |  |  |
| 7 | CONCENTRATIONRESULT | NVARCHAR2(510) | NULL |  |  |
| 8 | VALUATIONAGENT | NVARCHAR2(510) | NULL |  |  |
| 9 | AGREEMENTCURRENCY | NVARCHAR2(6) | NULL |  |  |

## TRIPARTYECPOSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYPOSITIONCORRELATIONID | NVARCHAR2(72) | NOT NULL |  |  |
| 2 | TRIPARTYECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 3 | INSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 4 | INSTRUMENTIDENTIFIERTYPE | NVARCHAR2(510) | NULL |  |  |
| 5 | INSTRUMENTDESCRIPTION | NVARCHAR2(4000) | NULL |  |  |
| 6 | INSTRUMENTCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 7 | INSTRUMENTTYPE | NVARCHAR2(510) | NULL |  |  |
| 8 | ISSUERNAME | NVARCHAR2(500) | NULL |  |  |
| 9 | ISSUERTYPENAME | NVARCHAR2(100) | NULL |  |  |
| 10 | ISSUERDOMICILE | NVARCHAR2(200) | NULL |  |  |
| 11 | ISSUERINDUSTRYSECTORNAME | NVARCHAR2(200) | NULL |  |  |
| 12 | AMOUNTISSUED | NUMBER(19,4) | NULL |  |  |
| 13 | AMOUNTOUTSTANDING | NUMBER(19,4) | NULL |  |  |
| 14 | CUSTODIANNAME | NVARCHAR2(510) | NULL |  |  |
| 15 | POSITIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 16 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 17 | IMPORTEDMVAGMTCCY | NUMBER(19,4) | NULL |  |  |
| 18 | IMPORTEDPREHAIRCUTMVAGMTCCY | NUMBER(19,4) | NULL |  |  |
| 19 | IMPORTEDVALUATIONPERCENT | NUMBER(21,6) | NULL |  |  |
| 20 | IMPORTEDPRICE | NUMBER(21,6) | NULL |  |  |
| 21 | IMPORTEDFXRATETOAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 22 | CALCEDMVAGMTCCY | NUMBER(19,4) | NULL |  |  |
| 23 | CALCEDPREHAIRCUTMVAGMTCCY | NUMBER(19,4) | NULL |  |  |
| 24 | CALCEDVALUATIONPERCENT | NUMBER(21,6) | NULL |  |  |
| 25 | CALCEDPRICE | NUMBER(21,6) | NULL |  |  |
| 26 | CALCEDFXRATETOAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 27 | MARGINTYPE | NVARCHAR2(510) | NULL |  |  |

## TRIPARTYECPOSITIONSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYPOSITIONCORRELATIONID | NVARCHAR2(72) | NOT NULL |  |  |
| 2 | TRIPARTYECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 3 | INSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 4 | INSTRUMENTIDENTIFIERTYPE | NVARCHAR2(510) | NULL |  |  |
| 5 | INSTRUMENTDESCRIPTION | NVARCHAR2(4000) | NULL |  |  |
| 6 | INSTRUMENTCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 7 | INSTRUMENTTYPE | NVARCHAR2(510) | NULL |  |  |
| 8 | ISSUERNAME | NVARCHAR2(500) | NULL |  |  |
| 9 | ISSUERTYPENAME | NVARCHAR2(100) | NULL |  |  |
| 10 | ISSUERDOMICILE | NVARCHAR2(200) | NULL |  |  |
| 11 | ISSUERINDUSTRYSECTORNAME | NVARCHAR2(200) | NULL |  |  |
| 12 | AMOUNTISSUED | NUMBER(19,4) | NULL |  |  |
| 13 | AMOUNTOUTSTANDING | NUMBER(19,4) | NULL |  |  |
| 14 | CUSTODIANNAME | NVARCHAR2(510) | NULL |  |  |
| 15 | POSITIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 16 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 17 | IMPORTEDMVAGMTCCY | NUMBER(19,4) | NULL |  |  |
| 18 | IMPORTEDPREHAIRCUTMVAGMTCCY | NUMBER(19,4) | NULL |  |  |
| 19 | IMPORTEDVALUATIONPERCENT | NUMBER(21,6) | NULL |  |  |
| 20 | IMPORTEDPRICE | NUMBER(21,6) | NULL |  |  |
| 21 | IMPORTEDFXRATETOAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 22 | CALCEDMVAGMTCCY | NUMBER(19,4) | NULL |  |  |
| 23 | CALCEDPREHAIRCUTMVAGMTCCY | NUMBER(19,4) | NULL |  |  |
| 24 | CALCEDVALUATIONPERCENT | NUMBER(21,6) | NULL |  |  |
| 25 | CALCEDPRICE | NUMBER(21,6) | NULL |  |  |
| 26 | CALCEDFXRATETOAGMTCCY | NUMBER(21,6) | NULL |  |  |
| 27 | MARGINTYPE | NVARCHAR2(510) | NULL |  |  |

## TRIPARTYECRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYECRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STARTDATETIME | DATE | NULL |  |  |
| 3 | ENDDATETIME | DATE | NULL |  |  |
| 4 | STATUS | NUMBER(9,0) | NULL |  |  |
| 5 | REQUESTEDBY | NVARCHAR2(510) | NULL |  |  |
| 6 | EXCEPTIONMESSAGESCOUNT | NUMBER(18,0) | NULL |  |  |
| 7 | AGREEMENTSCHECKED | NUMBER(18,0) | NULL |  |  |
| 8 | AGREEMENTSFAILED | NUMBER(18,0) | NULL |  |  |
| 9 | CORRELATIONID | NVARCHAR2(510) | NULL |  |  |
| 10 | REQUESTEDDATETIME | DATE | NULL |  |  |
| 11 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## TRIPARTYECRECORDSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYECRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STARTDATETIME | DATE | NULL |  |  |
| 3 | ENDDATETIME | DATE | NULL |  |  |
| 4 | STATUS | NUMBER(9,0) | NULL |  |  |
| 5 | REQUESTEDBY | NVARCHAR2(510) | NULL |  |  |
| 6 | EXCEPTIONMESSAGESCOUNT | NUMBER(18,0) | NULL |  |  |
| 7 | AGREEMENTSCHECKED | NUMBER(18,0) | NULL |  |  |
| 8 | AGREEMENTSFAILED | NUMBER(18,0) | NULL |  |  |
| 9 | CORRELATIONID | NVARCHAR2(510) | NULL |  |  |
| 10 | REQUESTEDDATETIME | DATE | NULL |  |  |
| 11 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## TRIPARTYELIGBREACHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 2 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | REASON | NVARCHAR2(1000) | NULL |  |  |
| 4 | BREACHRULETYPE | NVARCHAR2(510) | NULL |  |  |
| 5 | TRIPARTYPOSITIONCORRELATIONID | NVARCHAR2(72) | NOT NULL |  |  |

## TRIPARTYELIGBREACHESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYECAGREEMENTRESULTID | NUMBER(18,0) | NULL |  |  |
| 2 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | REASON | NVARCHAR2(1000) | NULL |  |  |
| 4 | BREACHRULETYPE | NVARCHAR2(510) | NULL |  |  |
| 5 | TRIPARTYPOSITIONCORRELATIONID | NVARCHAR2(72) | NOT NULL |  |  |

## UNASSIGNEDOTCTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCTRADEID | NUMBER(18,0) | NULL |  |  |
| 2 | TRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 3 | SOURCETRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 4 | SOURCEPRINCIPAL | NVARCHAR2(2000) | NULL |  |  |
| 5 | SOURCECOUNTERPARTY | NVARCHAR2(2000) | NULL |  |  |
| 6 | SOURCEAGREEMENT | NVARCHAR2(2000) | NULL |  |  |
| 7 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 8 | IMPORTCONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | PRINCIPALBRANCHID | NUMBER(18,0) | NULL |  |  |
| 10 | PRINCIPALBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | SOURCEPRINCIPALBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 12 | COUNTERPARTYBRANCHID | NUMBER(18,0) | NULL |  |  |
| 13 | COUNTERPARTYBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 15 | TRADETYPEID | NUMBER(18,0) | NULL |  |  |
| 16 | TRADETYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 17 | RECORDDATE | DATE | NULL |  |  |
| 18 | EXPIRYTIME | DATE | NULL |  |  |
| 19 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 20 | UNASSIGNEDDATE | DATE | NULL |  |  |
| 21 | COMMONTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 22 | EXTLIVE | NUMBER(1,0) | NULL |  |  |
| 23 | EXTSEGMENTMC | NVARCHAR2(100) | NULL |  |  |
| 24 | EXTFCPDATE | DATE | NULL |  |  |
| 25 | EXTFCPAMOUNTEUR | NUMBER(19,2) | NULL |  |  |

## UNASSIGNEDOTCTRADESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCTRADEID | NUMBER(18,0) | NULL |  |  |
| 2 | TRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 3 | SOURCETRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 4 | SOURCEPRINCIPAL | NVARCHAR2(2000) | NULL |  |  |
| 5 | SOURCECOUNTERPARTY | NVARCHAR2(2000) | NULL |  |  |
| 6 | SOURCEAGREEMENT | NVARCHAR2(2000) | NULL |  |  |
| 7 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 8 | IMPORTCONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | PRINCIPALBRANCHID | NUMBER(18,0) | NULL |  |  |
| 10 | PRINCIPALBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | SOURCEPRINCIPALBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 12 | COUNTERPARTYBRANCHID | NUMBER(18,0) | NULL |  |  |
| 13 | COUNTERPARTYBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 15 | TRADETYPEID | NUMBER(18,0) | NULL |  |  |
| 16 | TRADETYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 17 | RECORDDATE | DATE | NULL |  |  |
| 18 | EXPIRYTIME | DATE | NULL |  |  |
| 19 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 20 | UNASSIGNEDDATE | DATE | NULL |  |  |
| 21 | COMMONTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 22 | EXTFCPDATE | DATE | NULL |  |  |
| 23 | EXTFCPAMOUNTEUR | NUMBER(19,2) | NULL |  |  |
| 24 | EXTLIVE | NUMBER(1,0) | NULL |  |  |
| 25 | EXTSEGMENTMC | NVARCHAR2(200) | NULL |  |  |

## UNASSIGNEDREPOTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REPOTRADEID | NUMBER(18,0) | NULL |  |  |
| 2 | TRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 3 | SOURCETRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 4 | SOURCEPRINCIPAL | NVARCHAR2(2000) | NULL |  |  |
| 5 | SOURCECOUNTERPARTY | NVARCHAR2(2000) | NULL |  |  |
| 6 | SOURCEAGREEMENT | NVARCHAR2(2000) | NULL |  |  |
| 7 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 8 | IMPORTCONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | PRINCIPALBRANCHID | NUMBER(18,0) | NULL |  |  |
| 10 | PRINCIPALBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | SOURCEPRINCIPALBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 12 | COUNTERPARTYBRANCHID | NUMBER(18,0) | NULL |  |  |
| 13 | COUNTERPARTYBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 15 | TRADETYPEID | NUMBER(18,0) | NULL |  |  |
| 16 | TRADETYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 17 | RECORDDATE | DATE | NULL |  |  |
| 18 | EXPIRYTIME | DATE | NULL |  |  |
| 19 | LOADTIMESTAMP | DATE | NOT NULL | `SYS_EXTRACT_UTC(SYSTIMESTAMP)` |  |
| 20 | UNASSIGNEDDATE | DATE | NULL |  |  |

## UNASSIGNEDREPOTRADESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REPOTRADEID | NUMBER(18,0) | NULL |  |  |
| 2 | TRADEREFERENCE | NVARCHAR2(2000) | NULL |  |  |
| 3 | SOURCETRADETYPE | NVARCHAR2(2000) | NULL |  |  |
| 4 | SOURCEPRINCIPAL | NVARCHAR2(2000) | NULL |  |  |
| 5 | SOURCECOUNTERPARTY | NVARCHAR2(2000) | NULL |  |  |
| 6 | SOURCEAGREEMENT | NVARCHAR2(2000) | NULL |  |  |
| 7 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 8 | IMPORTCONFIGURATIONNAME | NVARCHAR2(2000) | NULL |  |  |
| 9 | PRINCIPALBRANCHID | NUMBER(18,0) | NULL |  |  |
| 10 | PRINCIPALBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 11 | SOURCEPRINCIPALBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 12 | COUNTERPARTYBRANCHID | NUMBER(18,0) | NULL |  |  |
| 13 | COUNTERPARTYBRANCHNAME | NVARCHAR2(2000) | NULL |  |  |
| 14 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(2000) | NULL |  |  |
| 15 | TRADETYPEID | NUMBER(18,0) | NULL |  |  |
| 16 | TRADETYPENAME | NVARCHAR2(2000) | NULL |  |  |
| 17 | RECORDDATE | DATE | NULL |  |  |
| 18 | EXPIRYTIME | DATE | NULL |  |  |
| 19 | LOADTIMESTAMP | DATE | NOT NULL |  |  |
| 20 | UNASSIGNEDDATE | DATE | NULL |  |  |

## USERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | USERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | FIRSTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | LASTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | EMAILADDRESS | NVARCHAR2(1000) | NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 8 | PHONENUMBER | NVARCHAR2(200) | NULL |  |  |
| 9 | AGREEMENTSCOPEID | NUMBER(18,0) | NULL |  |  |
| 10 | AGREEMENTSCOPENAME | NVARCHAR2(500) | NULL |  |  |
| 11 | ISACTIVE | NUMBER(1,0) | NULL |  |  |
| 12 | LASTSUCCESSFULLOGIN | DATE | NULL |  |  |
| 13 | LASTFAILEDLOGINATTEMPT | DATE | NULL |  |  |
| 14 | DATEACCEPTEDTERMSANDCONDITIONS | DATE | NULL |  |  |
| 15 | LASTLOGOUT | DATE | NULL |  |  |

## USERSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | USERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | FIRSTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | LASTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | EMAILADDRESS | NVARCHAR2(1000) | NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NULL |  |  |
| 8 | PHONENUMBER | NVARCHAR2(200) | NULL |  |  |
| 9 | AGREEMENTSCOPEID | NUMBER(18,0) | NULL |  |  |
| 10 | AGREEMENTSCOPENAME | NVARCHAR2(500) | NULL |  |  |
| 11 | ISACTIVE | NUMBER(1,0) | NULL |  |  |
| 12 | LASTSUCCESSFULLOGIN | DATE | NULL |  |  |
| 13 | LASTFAILEDLOGINATTEMPT | DATE | NULL |  |  |
| 14 | DATEACCEPTEDTERMSANDCONDITIONS | DATE | NULL |  |  |
| 15 | LASTLOGOUT | DATE | NULL |  |  |

## WRONGWAYRISKRULES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RULEID | NUMBER(18,0) | NULL |  |  |
| 2 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | BUCKETS | NCLOB | NULL |  |  |
| 6 | APPLIESTO | NVARCHAR2(2000) | NULL |  |  |

## WRONGWAYRISKRULESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RULEID | NUMBER(18,0) | NULL |  |  |
| 2 | RULENAME | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | BUCKETS | NCLOB | NULL |  |  |
| 6 | APPLIESTO | NVARCHAR2(2000) | NULL |  |  |

