# Algo Database Schema — Tables and Columns

Generated: 2026-02-03 13:04 | Schema: TUQCEUCBCORE01 | Database: PDQCEQ10

**395 tables, 5058 columns**

## Table of Contents

- [ACADIAALIAS](#acadiaalias) (4 columns, ~10 rows)
- [AGREEMENTALIASES](#agreementaliases) (9 columns, ~3680 rows)
- [AGREEMENTEXPOSUREDIFFERENCES](#agreementexposuredifferences) (13 columns, ~13225 rows)
- [AGREEMENTGROUPS](#agreementgroups) (29 columns, ~1 rows)
- [AGREEMENTGROUPSXUSERS](#agreementgroupsxusers) (2 columns, ~1 rows)
- [AGREEMENTMARGINS](#agreementmargins) (11 columns, ~221 rows)
- [AGREEMENTMARGINSBULK](#agreementmarginsbulk) (16 columns, ~0 rows)
- [AGREEMENTNOTES](#agreementnotes) (7 columns, ~7423 rows)
- [AGREEMENTREFERENCEXBRANCHES](#agreementreferencexbranches) (2 columns, ~0 rows)
- [AGREEMENTRESPBUSINESSLINES](#agreementrespbusinesslines) (3 columns, ~5 rows)
- [AGREEMENTRESPONSIBILITIES](#agreementresponsibilities) (15 columns, ~4 rows)
- [AGREEMENTRESPXCOUNTERPARTIES](#agreementrespxcounterparties) (2 columns, ~0 rows)
- [AGREEMENTRESPXCPTYORGANIZATION](#agreementrespxcptyorganization) (2 columns, ~0 rows)
- [AGREEMENTRESPXEXCLUDEDAGREEMEN](#agreementrespxexcludedagreemen) (2 columns, ~6629 rows)
- [AGREEMENTRESPXINCLUDEDAGREEMEN](#agreementrespxincludedagreemen) (2 columns, ~0 rows)
- [AGREEMENTRESPXPRINCIPALS](#agreementrespxprincipals) (2 columns, ~1 rows)
- [AGREEMENTRESPXPRINMANAGINGLOCA](#agreementrespxprinmanagingloca) (2 columns, ~0 rows)
- [AGREEMENTS](#agreements) (76 columns, ~25875 rows)
- [AGREEMENTSBULK](#agreementsbulk) (123 columns, ~0 rows)
- [AGREEMENTSCOPES](#agreementscopes) (9 columns, ~1 rows)
- [AGREEMENTSCOPESXENTITIES](#agreementscopesxentities) (2 columns, ~0 rows)
- [AGREEMENTSTATUSDETAILS](#agreementstatusdetails) (9 columns, ~15 rows)
- [AGREEMENTSXCONTACTS](#agreementsxcontacts) (2 columns, ~83833 rows)
- [AGREEMENTSXEXTDATAOVERRIDES](#agreementsxextdataoverrides) (2 columns, ~787500 rows)
- [AGREEMENTSXHOLIDAYCALENDARS](#agreementsxholidaycalendars) (2 columns, ~32538 rows)
- [AGREEMENTTYPES](#agreementtypes) (11 columns, ~62 rows)
- [AGREEMENTTYPESXTRADETYPES](#agreementtypesxtradetypes) (2 columns, ~2657 rows)
- [ALIASESBULK](#aliasesbulk) (11 columns, ~0 rows)
- [ALIASGROUPS](#aliasgroups) (10 columns, ~43 rows)
- [ALLAGREEMENTS](#allagreements) (14 columns)
- [ANALYSISCONFIGSXMARGINCONFIGS](#analysisconfigsxmarginconfigs) (2 columns, ~3 rows)
- [APPROVALCHANGES](#approvalchanges) (5 columns, ~1245900 rows)
- [APPROVALRECORDS](#approvalrecords) (15 columns, ~365008 rows)
- [APPROVALTRANSITIONHISTORY](#approvaltransitionhistory) (13 columns, ~249083 rows)
- [ASSETPOOLBALANCES](#assetpoolbalances) (6 columns, ~0 rows)
- [ASSETPOOLBALANCESBULK](#assetpoolbalancesbulk) (9 columns, ~0 rows)
- [ASSETPOOLS](#assetpools) (10 columns, ~0 rows)
- [ASSIGNEDOTCTRADES](#assignedotctrades) (7 columns, ~0 rows)
- [ASSIGNEDREPOTRADES](#assignedrepotrades) (7 columns, ~0 rows)
- [AUDITCHANGES](#auditchanges) (6 columns, ~1400102 rows)
- [AUDITRECORDS](#auditrecords) (12 columns, ~415216 rows)
- [BASICELIGIBILITYBULK](#basiceligibilitybulk) (19 columns, ~0 rows)
- [BASICELIGIBILITYCHANGES](#basiceligibilitychanges) (12 columns, ~0 rows)
- [BATCH_JOB_EXECUTION](#batch_job_execution) (11 columns, ~1508500 rows)
- [BATCH_JOB_EXECUTION_CONTEXT](#batch_job_execution_context) (3 columns, ~1525700 rows)
- [BATCH_JOB_EXECUTION_PARAMS](#batch_job_execution_params) (8 columns, ~1527500 rows)
- [BATCH_JOB_INSTANCE](#batch_job_instance) (4 columns, ~1523400 rows)
- [BATCH_STEP_EXECUTION](#batch_step_execution) (18 columns, ~1530500 rows)
- [BATCH_STEP_EXECUTION_CONTEXT](#batch_step_execution_context) (3 columns, ~1509400 rows)
- [BONDPURPOSES](#bondpurposes) (9 columns, ~48 rows)
- [BOOKDIFFERENCES](#bookdifferences) (14 columns, ~6340 rows)
- [BOOKEDSETTLEMENTINSTRUCTIONS](#bookedsettlementinstructions) (19 columns, ~917500 rows)
- [BRANCHALIASES](#branchaliases) (4 columns, ~79945 rows)
- [BRANCHES](#branches) (3 columns, ~26209 rows)
- [CACHEDAGREEMENTXAGREEMENTRESP](#cachedagreementxagreementresp) (2 columns, ~67977 rows)
- [CBREACHESXECPOSITIONS](#cbreachesxecpositions) (2 columns, ~402 rows)
- [CITIES](#cities) (14 columns, ~612 rows)
- [CMOABSASSETCLASSES](#cmoabsassetclasses) (9 columns, ~0 rows)
- [COLLATERALBUCKETRATINGBANDS](#collateralbucketratingbands) (9 columns, ~40034 rows)
- [COLLATERALBUCKETS](#collateralbuckets) (24 columns, ~42126 rows)
- [COLLATERALBUCKETSXEXCHANGES](#collateralbucketsxexchanges) (2 columns, ~0 rows)
- [COLLATERALBUCKETSXSTOCKINDEXES](#collateralbucketsxstockindexes) (2 columns, ~2 rows)
- [COLLATERALBUCKETXCURRENCIES](#collateralbucketxcurrencies) (2 columns, ~2776 rows)
- [COLLATERALBUCKETXINSTRUMENTTYP](#collateralbucketxinstrumenttyp) (2 columns, ~46683 rows)
- [COLLATERALBUCKETXISSUERS](#collateralbucketxissuers) (2 columns, ~50757 rows)
- [COLLATERALBUCKETXRAINSTRUMENT](#collateralbucketxrainstrument) (2 columns, ~142889 rows)
- [COLLATERALBUCKETXRAISSUER](#collateralbucketxraissuer) (2 columns, ~54 rows)
- [COLLATERALGROUPS](#collateralgroups) (8 columns, ~0 rows)
- [COLLATERALGROUPXCOLLATERALBUCK](#collateralgroupxcollateralbuck) (2 columns, ~0 rows)
- [COLLATERALPOSITIONS](#collateralpositions) (12 columns, ~1029 rows)
- [COLLATERALPOSITIONSBULK](#collateralpositionsbulk) (20 columns, ~0 rows)
- [COLLATERALTYPES](#collateraltypes) (9 columns, ~0 rows)
- [COLLELIGEXTRACTCONFIGURATIONS](#colleligextractconfigurations) (9 columns, ~2 rows)
- [COLLELIGEXTRACTMESSAGES](#colleligextractmessages) (6 columns, ~1 rows)
- [COLLELIGEXTRACTRECORDS](#colleligextractrecords) (13 columns, ~23 rows)
- [COLLEXTRACTXCITIES](#collextractxcities) (2 columns, ~0 rows)
- [CONCENTRATIONBREACHES](#concentrationbreaches) (5 columns, ~104 rows)
- [CONCENTRATIONRULECHANGES](#concentrationrulechanges) (9 columns, ~0 rows)
- [CONCENTRATIONRULES](#concentrationrules) (10 columns, ~104 rows)
- [CONTACTS](#contacts) (16 columns, ~64893 rows)
- [COUNTERPARTYMARGINDETAILS](#counterpartymargindetails) (23 columns, ~148645 rows)
- [COUNTRIES](#countries) (9 columns, ~517 rows)
- [COUPONTYPES](#coupontypes) (9 columns, ~2 rows)
- [CREDITRATINGORDINALS](#creditratingordinals) (3 columns, ~35 rows)
- [CREDITRATINGS](#creditratings) (9 columns, ~217 rows)
- [CURRENCIES](#currencies) (15 columns, ~210 rows)
- [CURRENTFXRATES](#currentfxrates) (4 columns)
- [CURRENTRATINGBASEDMARGINTERMS](#currentratingbasedmarginterms) (18 columns)
- [CUSTOMSTATEMENTS](#customstatements) (13 columns, ~0 rows)
- [CUSTOMSTATEMENTWRITERS](#customstatementwriters) (4 columns, ~7 rows)
- [DATETIMINGS](#datetimings) (14 columns, ~27318 rows)
- [DEBTINSTRUMENTPRICES](#debtinstrumentprices) (23 columns, ~28810 rows)
- [DEBTINSTRUMENTPRICESBULK](#debtinstrumentpricesbulk) (23 columns, ~0 rows)
- [DISPUTECATEGORIES](#disputecategories) (10 columns, ~14 rows)
- [DISPUTECLASSIFICATIONRESULTS](#disputeclassificationresults) (33 columns, ~85883 rows)
- [DISTRIBUTIONHISTORY](#distributionhistory) (9 columns, ~181399 rows)
- [DISTRIBUTIONS](#distributions) (29 columns, ~60470 rows)
- [ECAGREEMENTRESULTS](#ecagreementresults) (8 columns, ~245970 rows)
- [ECPOSITIONS](#ecpositions) (19 columns, ~298000 rows)
- [ECRECORDS](#ecrecords) (11 columns, ~3450 rows)
- [ELIGIBILITYBREACHES](#eligibilitybreaches) (5 columns, ~855 rows)
- [ELIGIBILITYBREACHESXECPOSITION](#eligibilitybreachesxecposition) (2 columns, ~855 rows)
- [ELIGIBILITYRULEBUCKETCHANGES](#eligibilityrulebucketchanges) (4 columns, ~0 rows)
- [ELIGIBILITYRULECHANGES](#eligibilityrulechanges) (9 columns, ~0 rows)
- [ELIGIBILITYRULECRITERIA](#eligibilityrulecriteria) (9 columns, ~55 rows)
- [ELIGIBILITYRULES](#eligibilityrules) (11 columns, ~55 rows)
- [ELIGIBILITYRULESXCOLLATBUCKETS](#eligibilityrulesxcollatbuckets) (2 columns, ~5579 rows)
- [ELIGIBLECOLLATERALS](#eligiblecollaterals) (13 columns, ~551367 rows)
- [ENTITIES](#entities) (18 columns, ~20421 rows)
- [ENTITIESBULK](#entitiesbulk) (30 columns, ~0 rows)
- [ENTITIESXCREDITRATINGS](#entitiesxcreditratings) (2 columns, ~960 rows)
- [ENTITIESXEXTDATAOVERRIDES](#entitiesxextdataoverrides) (2 columns, ~78397 rows)
- [ENTITYALIASES](#entityaliases) (9 columns, ~2209 rows)
- [ENTITYGROUPALIASES](#entitygroupaliases) (9 columns, ~0 rows)
- [ENTITYGROUPS](#entitygroups) (11 columns, ~0 rows)
- [ENTITYGROUPSXENTITIES](#entitygroupsxentities) (2 columns, ~0 rows)
- [ENTITYRATINGSBULK](#entityratingsbulk) (11 columns, ~0 rows)
- [ENUMVALUES](#enumvalues) (3 columns, ~1399 rows)
- [EQUITYINSTRUMENTPRICES](#equityinstrumentprices) (16 columns, ~235 rows)
- [EQUITYINSTRUMENTPRICESBULK](#equityinstrumentpricesbulk) (15 columns, ~0 rows)
- [EXACTDATETIMINGS](#exactdatetimings) (3 columns, ~2110 rows)
- [EXCHANGES](#exchanges) (9 columns, ~0 rows)
- [EXPOSURESTATEMENTHISTORIES](#exposurestatementhistories) (3 columns, ~44537 rows)
- [EXPOSURETRADEOVERRIDES](#exposuretradeoverrides) (31 columns, ~1445 rows)
- [EXPOSURETRADEOVERRIDESBULK](#exposuretradeoverridesbulk) (27 columns, ~0 rows)
- [EXTENSIONDATAOVERRIDES](#extensiondataoverrides) (7 columns, ~884714 rows)
- [EXTENSIONFIELDDEFINITIONS](#extensionfielddefinitions) (27 columns, ~108 rows)
- [EXTENSIONLISTITEMS](#extensionlistitems) (4 columns, ~25 rows)
- [EXTRACTCONFIGURATIONS](#extractconfigurations) (13 columns, ~16 rows)
- [EXTRACTMESSAGES](#extractmessages) (5 columns, ~200135 rows)
- [EXTRACTRECORDS](#extractrecords) (13 columns, ~36769 rows)
- [FILEDELIMITERS](#filedelimiters) (2 columns, ~18 rows)
- [FILEFORMATS](#fileformats) (3 columns, ~1 rows)
- [FUNDSOURCES](#fundsources) (9 columns, ~0 rows)
- [FXRATES](#fxrates) (5 columns, ~571834 rows)
- [FXRATESBULK](#fxratesbulk) (9 columns, ~0 rows)
- [FXRATESOURCES](#fxratesources) (10 columns, ~6 rows)
- [FXRATESPERCENTTOLERANCE](#fxratespercenttolerance) (10 columns)
- [GLOBALLIMITMESSAGES](#globallimitmessages) (7 columns, ~0 rows)
- [GLOBALLIMITPOSITIONS](#globallimitpositions) (16 columns, ~0 rows)
- [GLOBALLIMITRECORDS](#globallimitrecords) (5 columns, ~0 rows)
- [HOLIDAYCALENDARS](#holidaycalendars) (10 columns, ~599 rows)
- [HOLIDAYS](#holidays) (4 columns, ~54928 rows)
- [HOLIDAYSBULK](#holidaysbulk) (8 columns, ~0 rows)
- [HT_EXTENSIONDATAOVERRIDES](#ht_extensiondataoverrides) (1 columns)
- [HT_T_IMC_ALL_SMR](#ht_t_imc_all_smr) (1 columns)
- [HT_T_IMC_CTPY_SMR](#ht_t_imc_ctpy_smr) (1 columns)
- [HT_T_IMC_EXPSTM_SUMMARY](#ht_t_imc_expstm_summary) (1 columns)
- [HT_T_IMC_EXP_SMR](#ht_t_imc_exp_smr) (1 columns)
- [IMPORTCONFIGURATIONS](#importconfigurations) (23 columns, ~101 rows)
- [IMPORTMESSAGES](#importmessages) (7 columns, ~285130 rows)
- [IMPORTRECORDS](#importrecords) (19 columns, ~10355 rows)
- [INCLUDEDAGREEMENTTRADETYPES](#includedagreementtradetypes) (9 columns)
- [INDEXRATESPERCENTTOLERANCE](#indexratespercenttolerance) (10 columns)
- [INDUSTRYGROUPS](#industrygroups) (9 columns, ~1078 rows)
- [INDUSTRYSECTORS](#industrysectors) (9 columns, ~266 rows)
- [INSTRUCTIONXDEBTLOCINSTRUMENTS](#instructionxdebtlocinstruments) (2 columns, ~0 rows)
- [INSTRUCTIONXINSTRUMENTTYPES](#instructionxinstrumenttypes) (2 columns, ~494 rows)
- [INSTRUMENTRATINGSBULK](#instrumentratingsbulk) (11 columns, ~0 rows)
- [INSTRUMENTS](#instruments) (94 columns, ~11770 rows)
- [INSTRUMENTSBULK](#instrumentsbulk) (114 columns, ~0 rows)
- [INSTRUMENTSXCMOABSASSETCLASSES](#instrumentsxcmoabsassetclasses) (2 columns, ~0 rows)
- [INSTRUMENTSXCREDITRATINGS](#instrumentsxcreditratings) (2 columns, ~40442 rows)
- [INSTRUMENTSXEXTDATAOVERRIDES](#instrumentsxextdataoverrides) (2 columns, ~296 rows)
- [INSTRUMENTSXSTOCKINDEXES](#instrumentsxstockindexes) (2 columns, ~66 rows)
- [INSTRUMENTTYPES](#instrumenttypes) (11 columns, ~244 rows)
- [INSTRUMENTUNDERLYINGSECTORS](#instrumentunderlyingsectors) (9 columns, ~145 rows)
- [INSTTYPESXEXTDATAOVERRIDES](#insttypesxextdataoverrides) (2 columns, ~0 rows)
- [INTERESTCONFIGURATIONS](#interestconfigurations) (14 columns, ~2 rows)
- [INTERESTCONFIGXCITIES](#interestconfigxcities) (2 columns, ~0 rows)
- [INTERESTCONFIGXGROUPS](#interestconfigxgroups) (2 columns, ~0 rows)
- [INTERESTCONFIGXINSTRUMENTS](#interestconfigxinstruments) (2 columns, ~0 rows)
- [INTERESTMESSAGES](#interestmessages) (6 columns, ~263000 rows)
- [INTERESTPAYMENTPERIODS](#interestpaymentperiods) (25 columns, ~9328800 rows)
- [INTERESTPAYMENTS](#interestpayments) (49 columns, ~888664 rows)
- [INTERESTRECORDS](#interestrecords) (15 columns, ~4703 rows)
- [INTERESTTERMS](#interestterms) (9 columns, ~8177 rows)
- [INTERESTTERMSBULK](#interesttermsbulk) (20 columns, ~0 rows)
- [ISSUERTYPES](#issuertypes) (9 columns, ~1108 rows)
- [MAINTENANCECONFIGURATIONS](#maintenanceconfigurations) (11 columns, ~11 rows)
- [MAINTENANCERECORDS](#maintenancerecords) (10 columns, ~1114 rows)
- [MANUALCREATEMOVEMENTSAGA](#manualcreatemovementsaga) (7 columns, ~0 rows)
- [MARGINANALYSISCONFIGURATIONS](#marginanalysisconfigurations) (9 columns, ~3 rows)
- [MARGINANALYSISMESSAGES](#marginanalysismessages) (6 columns, ~91 rows)
- [MARGINANALYSISPOSITIONS](#marginanalysispositions) (36 columns, ~685166 rows)
- [MARGINANALYSISRECORDS](#marginanalysisrecords) (14 columns, ~21021 rows)
- [MARGINCALCULATIONRESULTS](#margincalculationresults) (108 columns, ~4051731 rows)
- [MARGINCALLS](#margincalls) (170 columns, ~4217321 rows)
- [MARGINCALLSAGA](#margincallsaga) (7 columns, ~0 rows)
- [MARGINCALLSBULK](#margincallsbulk) (20 columns, ~0 rows)
- [MARGINCALLTRANSITIONHISTORY](#margincalltransitionhistory) (7 columns, ~1031212 rows)
- [MARGINCONFIGURATIONS](#marginconfigurations) (15 columns, ~4 rows)
- [MARGINCONFIGURATIONXAGREEMENTS](#marginconfigurationxagreements) (2 columns, ~0 rows)
- [MARGINCONFIGURATIONXCITIES](#marginconfigurationxcities) (2 columns, ~9 rows)
- [MARGINCONFIGURATIONXPRINCIPALS](#marginconfigurationxprincipals) (2 columns, ~0 rows)
- [MARGINCONFIGXGROUPS](#marginconfigxgroups) (2 columns, ~0 rows)
- [MARGINCREATEMOVEMENTSAGA](#margincreatemovementsaga) (7 columns, ~0 rows)
- [MARGINMESSAGES](#marginmessages) (7 columns, ~59980 rows)
- [MARGINRECORDS](#marginrecords) (15 columns, ~21112 rows)
- [MARGINTERMS](#marginterms) (23 columns, ~51750 rows)
- [MARGINTERMSBULK](#margintermsbulk) (26 columns, ~0 rows)
- [MARGINTERMSXRATINGAGENCIES](#margintermsxratingagencies) (2 columns, ~670 rows)
- [MARGINTRANSITIONSAGA](#margintransitionsaga) (7 columns, ~0 rows)
- [MARKETINDEXES](#marketindexes) (14 columns, ~226 rows)
- [MARKETINDEXRATES](#marketindexrates) (4 columns, ~83719 rows)
- [MARKETINDEXRATESBULK](#marketindexratesbulk) (8 columns, ~0 rows)
- [MISMATCHREASONS](#mismatchreasons) (6 columns, ~530 rows)
- [MOVEMENTCONCENTRATIONBREACHES](#movementconcentrationbreaches) (5 columns, ~0 rows)
- [MOVEMENTELIGIBILITYBREACHES](#movementeligibilitybreaches) (5 columns, ~0 rows)
- [MOVEMENTGROUPS](#movementgroups) (10 columns, ~1277096 rows)
- [MOVEMENTHISTORY](#movementhistory) (14 columns, ~2609266 rows)
- [MOVEMENTORDISTRIBUTIONS](#movementordistributions) (9 columns)
- [MOVEMENTS](#movements) (53 columns, ~732560 rows)
- [MOVEMENTSXPANDLMARGINRESULTS](#movementsxpandlmarginresults) (2 columns, ~0 rows)
- [MOVEMENTTRANSITIONS](#movementtransitions) (4 columns, ~12 rows)
- [MOVEMENTVERIFICATIONRECORDS](#movementverificationrecords) (3 columns, ~0 rows)
- [MUNICIPALREGIONS](#municipalregions) (9 columns, ~0 rows)
- [MUNICIPALSTATES](#municipalstates) (9 columns, ~0 rows)
- [ORGANIZATIONTYPES](#organizationtypes) (12 columns, ~0 rows)
- [OTCANALYSISEXTDATAOVERRIDES](#otcanalysisextdataoverrides) (7 columns, ~371887600 rows)
- [OTCANALYSISTRADES](#otcanalysistrades) (56 columns, ~103972950 rows)
- [OTCCOMPARISONTRADES](#otccomparisontrades) (48 columns, ~0 rows)
- [OTCCOMPARISONTRADESBULK](#otccomparisontradesbulk) (61 columns, ~0 rows)
- [OTCEXTDATAOVERRIDES](#otcextdataoverrides) (8 columns, ~332804 rows)
- [OTCTRADEANALYSISEXTDATA](#otctradeanalysisextdata) (3 columns, ~0 rows)
- [OTCTRADES](#otctrades) (54 columns, ~120324 rows)
- [PENDINGAGREEMENTMARGINS](#pendingagreementmargins) (7 columns, ~0 rows)
- [PENDINGAGREEMENTS](#pendingagreements) (16 columns, ~0 rows)
- [PENDINGCONTACTS](#pendingcontacts) (7 columns, ~0 rows)
- [PENDINGENTITIES](#pendingentities) (7 columns, ~0 rows)
- [PENDINGSETTLEMENTINSTRUCTIONS](#pendingsettlementinstructions) (8 columns, ~0 rows)
- [PENDINGTRADECOVERAGES](#pendingtradecoverages) (7 columns, ~0 rows)
- [PLACEOFSETTLEMENTS](#placeofsettlements) (9 columns, ~0 rows)
- [POSITIONSTATEMENTHISTORIES](#positionstatementhistories) (3 columns, ~9252 rows)
- [PRICESOURCES](#pricesources) (10 columns, ~8 rows)
- [PROFITANDLOSSES](#profitandlosses) (27 columns, ~0 rows)
- [PROFITANDLOSSESBULK](#profitandlossesbulk) (35 columns, ~0 rows)
- [RATINGAGENCIES](#ratingagencies) (9 columns, ~7 rows)
- [RATINGBASEDMARGINTERMS](#ratingbasedmarginterms) (15 columns, ~7829 rows)
- [RATINGELIGIBILITYRULEBANDS](#ratingeligibilityrulebands) (5 columns, ~1 rows)
- [RATINGELIGIBILITYRULES](#ratingeligibilityrules) (24 columns, ~1 rows)
- [RATINGRULEXCOLLATERALBUCKETS](#ratingrulexcollateralbuckets) (2 columns, ~1 rows)
- [RATINGRULEXINSTRUMENTAGENCIES](#ratingrulexinstrumentagencies) (2 columns, ~1 rows)
- [RATINGRULEXISSUERAGENCIES](#ratingrulexissueragencies) (2 columns, ~0 rows)
- [RATINGRULEXPARTYAGENCIES](#ratingrulexpartyagencies) (2 columns, ~3 rows)
- [RATINGWATCHES](#ratingwatches) (9 columns, ~0 rows)
- [REPOANALYSISEXTDATAOVERRIDES](#repoanalysisextdataoverrides) (7 columns, ~0 rows)
- [REPOANALYSISTRADES](#repoanalysistrades) (50 columns, ~0 rows)
- [REPOEXTDATAOVERRIDES](#repoextdataoverrides) (8 columns, ~0 rows)
- [REPOTRADEANALYSISEXTDATA](#repotradeanalysisextdata) (3 columns, ~0 rows)
- [REPOTRADES](#repotrades) (49 columns, ~0 rows)
- [RULEFILTERPARAMETERS](#rulefilterparameters) (3 columns, ~1237 rows)
- [RULEFILTERS](#rulefilters) (5 columns, ~125 rows)
- [SCHEMAINFO](#schemainfo) (4 columns, ~1 rows)
- [SEASONINGS](#seasonings) (9 columns, ~0 rows)
- [SERIALTASKQUEUE](#serialtaskqueue) (3 columns, ~0 rows)
- [SETAGREEDAMOUNTSAGA](#setagreedamountsaga) (7 columns, ~0 rows)
- [SETTLEMENTINSTRUCTIONS](#settlementinstructions) (28 columns, ~8842 rows)
- [SETTLEMENTXCITIES](#settlementxcities) (2 columns, ~7 rows)
- [SETTLEMOVEMENTCONFIGURATIONS](#settlemovementconfigurations) (11 columns, ~13 rows)
- [SETTLEMOVEMENTFILTERS](#settlemovementfilters) (4 columns, ~63 rows)
- [SETTLEMOVEMENTMESSAGES](#settlemovementmessages) (7 columns, ~1827 rows)
- [SETTLEMOVEMENTRECORDS](#settlemovementrecords) (12 columns, ~85791 rows)
- [SHAREDAPPROVALRECORDS](#sharedapprovalrecords) (16 columns, ~1635 rows)
- [SPECIFICTRADECOVERAGE](#specifictradecoverage) (8 columns, ~2896 rows)
- [STATEMENTDISCLAIMERS](#statementdisclaimers) (6 columns, ~1 rows)
- [STOCKINDEXES](#stockindexes) (9 columns, ~4 rows)
- [SUBSTITUTIONS](#substitutions) (22 columns, ~3026 rows)
- [SUBSTRANSITIONHISTORY](#substransitionhistory) (7 columns, ~394 rows)
- [SYS_EXPORT_SCHEMA_01](#sys_export_schema_01) (95 columns, ~1142 rows)
- [SYS_EXPORT_SCHEMA_02](#sys_export_schema_02) (95 columns, ~1142 rows)
- [TEMP_ENTITY_CLEANUP](#temp_entity_cleanup) (9 columns, ~495 rows)
- [TLM_EMAIL_OD](#tlm_email_od) (5 columns, ~8 rows)
- [TLM_EMAIL_TO](#tlm_email_to) (7 columns, ~0 rows)
- [TLM_FOUNDATION_OD](#tlm_foundation_od) (5 columns, ~58456 rows)
- [TLM_FOUNDATION_SS](#tlm_foundation_ss) (4 columns, ~53 rows)
- [TLM_FOUNDATION_TO](#tlm_foundation_to) (7 columns, ~0 rows)
- [TLM_WORKFLOWAUTOMATION_OD](#tlm_workflowautomation_od) (5 columns, ~871 rows)
- [TLM_WORKFLOWAUTOMATION_SS](#tlm_workflowautomation_ss) (4 columns, ~0 rows)
- [TLM_WORKFLOWAUTOMATION_TO](#tlm_workflowautomation_to) (7 columns, ~0 rows)
- [TRADEASSIGNMENTCONFIGURATIONS](#tradeassignmentconfigurations) (10 columns, ~4 rows)
- [TRADEASSIGNMENTMESSAGES](#tradeassignmentmessages) (6 columns, ~944131 rows)
- [TRADEASSIGNMENTRECORDS](#tradeassignmentrecords) (14 columns, ~250 rows)
- [TRADEASSIGNMENTRULES](#tradeassignmentrules) (4 columns, ~37042 rows)
- [TRADEASSIGNMENTRULESXCPTYBRANC](#tradeassignmentrulesxcptybranc) (2 columns, ~35390 rows)
- [TRADEASSIGNMENTRULESXPRINBRANC](#tradeassignmentrulesxprinbranc) (2 columns, ~52784 rows)
- [TRADEASSIGNMENTRULESXTRADETYPE](#tradeassignmentrulesxtradetype) (2 columns, ~1175944 rows)
- [TRADETYPEALIASES](#tradetypealiases) (9 columns, ~227 rows)
- [TRADETYPES](#tradetypes) (9 columns, ~93 rows)
- [TRIPARTYCOLLPOSITIONS](#tripartycollpositions) (14 columns, ~0 rows)
- [TRIPARTYECAGREEMENTRESULTS](#tripartyecagreementresults) (17 columns, ~0 rows)
- [TRIPARTYECRECORDS](#tripartyecrecords) (11 columns, ~0 rows)
- [TRIPARTYECREPORTINGDATA](#tripartyecreportingdata) (2 columns, ~0 rows)
- [T_AEC_ANVIL](#t_aec_anvil) (4 columns, ~1681 rows)
- [T_AEC_ECB_ELIGBLE_ASSETS](#t_aec_ecb_eligble_assets) (23 columns, ~30237 rows)
- [T_AEC_GCIF](#t_aec_gcif) (9 columns, ~2191 rows)
- [T_AEC_HISTORY](#t_aec_history) (28 columns, ~696 rows)
- [T_AEC_LIQUID_BONDS](#t_aec_liquid_bonds) (3 columns, ~11907 rows)
- [T_AEC_RULES](#t_aec_rules) (6 columns, ~16 rows)
- [T_AEC_RULES_ASSET_CLASSES](#t_aec_rules_asset_classes) (3 columns, ~344 rows)
- [T_AEC_RULES_CRITERIA](#t_aec_rules_criteria) (10 columns, ~150 rows)
- [T_AEC_STATIC_DATA](#t_aec_static_data) (5 columns, ~652 rows)
- [T_AEC_TOXIC_ISINS](#t_aec_toxic_isins) (2 columns, ~26604 rows)
- [T_ANVIL_MOVEMENTS](#t_anvil_movements) (14 columns, ~13349 rows)
- [T_API_LOCK](#t_api_lock) (1 columns, ~1 rows)
- [T_API_MOVEMENTS](#t_api_movements) (24 columns, ~93188 rows)
- [T_CMS_FAXOUTBOX](#t_cms_faxoutbox) (10 columns, ~73057 rows)
- [T_CMS_RECON_PERFORMED](#t_cms_recon_performed) (4 columns, ~0 rows)
- [T_CMS_REPORTS](#t_cms_reports) (8 columns, ~2529 rows)
- [T_CMS_STATIC_DATA_FROM_CMS](#t_cms_static_data_from_cms) (6 columns, ~0 rows)
- [T_CMS_STATIC_DATA_TO_CMS](#t_cms_static_data_to_cms) (35 columns, ~22333 rows)
- [T_CMS_WBP_ALGO_RECON](#t_cms_wbp_algo_recon) (12 columns, ~40050 rows)
- [T_CMT_AVISHISTORY](#t_cmt_avishistory) (17 columns, ~321 rows)
- [T_CMT_CASHMOVEMENT](#t_cmt_cashmovement) (20 columns, ~207374 rows)
- [T_CMT_INTERESTBOOKED](#t_cmt_interestbooked) (16 columns, ~88628 rows)
- [T_CMT_MOVEMENTEMAILSENT](#t_cmt_movementemailsent) (10 columns, ~64544 rows)
- [T_CMT_MOVEMENTSENTTOANVIL](#t_cmt_movementsenttoanvil) (7 columns, ~31537 rows)
- [T_CMT_PAYMENTHISTORY](#t_cmt_paymenthistory) (23 columns, ~426574 rows)
- [T_IMC_ADDITIONAL_INFO](#t_imc_additional_info) (7 columns, ~19011 rows)
- [T_IMC_ALL_SMR](#t_imc_all_smr) (3 columns, ~334300 rows)
- [T_IMC_BUNDESBANK_PLEDGE](#t_imc_bundesbank_pledge) (15 columns, ~8 rows)
- [T_IMC_COLLATERAL_INSTRUCTION](#t_imc_collateral_instruction) (41 columns, ~32115 rows)
- [T_IMC_COLLATERAL_STATUS_ADVICE](#t_imc_collateral_status_advice) (17 columns, ~89791 rows)
- [T_IMC_COLLEXPOSURE_STM](#t_imc_collexposure_stm) (16 columns, ~357600 rows)
- [T_IMC_COLL_TRANSACTION](#t_imc_coll_transaction) (11 columns, ~198 rows)
- [T_IMC_CTPY_SMR](#t_imc_ctpy_smr) (7 columns, ~513700 rows)
- [T_IMC_CUSTODIAN_WORKFLOW](#t_imc_custodian_workflow) (9 columns, ~31717 rows)
- [T_IMC_EXPSTM_SUMMARY](#t_imc_expstm_summary) (9 columns, ~1220800 rows)
- [T_IMC_EXP_SMR](#t_imc_exp_smr) (3 columns, ~343700 rows)
- [T_IMC_FIA](#t_imc_fia) (28 columns, ~94421 rows)
- [T_IMC_FIN](#t_imc_fin) (24 columns, ~116415 rows)
- [T_IMC_LINK](#t_imc_link) (4 columns, ~0 rows)
- [T_IMC_QUANTITY_BREAKDOWN](#t_imc_quantity_breakdown) (11 columns, ~0 rows)
- [T_IMC_SCHEDULED_CANCEL](#t_imc_scheduled_cancel) (7 columns, ~4725 rows)
- [T_IMC_SECURDTL](#t_imc_securdtl) (17 columns, ~3580843 rows)
- [T_IMC_STATEMENT_OF_HOLDING](#t_imc_statement_of_holding) (22 columns, ~25831 rows)
- [T_IMC_SUB_BALANCE](#t_imc_sub_balance) (22 columns, ~110402 rows)
- [T_IMC_SUB_SAFE_ACCOUNT](#t_imc_sub_safe_account) (6 columns, ~20604 rows)
- [T_IMC_TMP_TPY_INSTR_REF](#t_imc_tmp_tpy_instr_ref) (6 columns, ~3739 rows)
- [T_IMC_TMP_TPY_TX_REF](#t_imc_tmp_tpy_tx_ref) (4 columns, ~62 rows)
- [T_IMC_TRANDTL](#t_imc_trandtl) (20 columns, ~550035 rows)
- [T_IMC_VALDTL](#t_imc_valdtl) (12 columns, ~3580843 rows)
- [T_IMC_VM_LOCKUP_AGREEMENT](#t_imc_vm_lockup_agreement) (2 columns, ~3 rows)
- [T_JOB_STATUS](#t_job_status) (8 columns, ~14796 rows)
- [T_PAS_SENT_MOVEMENTS](#t_pas_sent_movements) (4 columns, ~84145 rows)
- [T_QCE_CT_BUCKETREQUESTS](#t_qce_ct_bucketrequests) (9 columns, ~21 rows)
- [T_QCE_CT_BUCKETREQUESTSXAGREEMENTS](#t_qce_ct_bucketrequestsxagreements) (2 columns, ~20 rows)
- [T_QCE_CT_MOVEMENTOVERRIDES](#t_qce_ct_movementoverrides) (8 columns, ~1336 rows)
- [T_QCE_CT_TRIOPTIMA](#t_qce_ct_trioptima) (14 columns, ~11999 rows)
- [T_VOSI_ISIN_BLACKLIST](#t_vosi_isin_blacklist) (2 columns, ~26989 rows)
- [T_WTM_LOCK](#t_wtm_lock) (1 columns, ~0 rows)
- [T_WTM_REQUEST](#t_wtm_request) (26 columns, ~5 rows)
- [T_WTM_RESPONSE](#t_wtm_response) (54 columns, ~5 rows)
- [T_WTM_SENDSTATE](#t_wtm_sendstate) (7 columns, ~5 rows)
- [UNASSIGNEDOTCTRADES](#unassignedotctrades) (4 columns, ~9611 rows)
- [UNASSIGNEDREPOTRADES](#unassignedrepotrades) (4 columns, ~0 rows)
- [USERS](#users) (16 columns, ~200 rows)
- [USERSTATEMENTCOLUMNFILTERS](#userstatementcolumnfilters) (4 columns, ~0 rows)
- [USERSTATEMENTCOLUMNS](#userstatementcolumns) (6 columns, ~0 rows)
- [USERSTATEMENTDEFINITIONS](#userstatementdefinitions) (8 columns, ~0 rows)
- [USERSTATEMENTFILLERCOLUMNS](#userstatementfillercolumns) (7 columns, ~0 rows)
- [USERSTATEMENTFILTERCHOICES](#userstatementfilterchoices) (4 columns, ~0 rows)
- [USERSXAGREEMENTRESPONSIBILITY](#usersxagreementresponsibility) (2 columns, ~276 rows)
- [USERS_BAK_231119](#users_bak_231119) (14 columns, ~124 rows)
- [USERS_BAK_23112019](#users_bak_23112019) (15 columns, ~124 rows)
- [USERS_USERNAME_EMPTY](#users_username_empty) (15 columns, ~124 rows)
- [VIEW_AGREEMENTS](#view_agreements) (98 columns)
- [VIEW_COLLATERALPOSITIONS](#view_collateralpositions) (35 columns)
- [V_CMS_CURRENTFXRATES](#v_cms_currentfxrates) (6 columns)
- [V_IMC_CUSTODIAN_MOVEMENTS](#v_imc_custodian_movements) (26 columns)
- [V_IMC_ENTITIES](#v_imc_entities) (18 columns)
- [V_IMC_EXPOSURE_STATTEMENT_DETAIL](#v_imc_exposure_stattement_detail) (20 columns)
- [V_IMC_MT569_BY_AGREEMENT](#v_imc_mt569_by_agreement) (11 columns)
- [V_IMC_STATEMENT_OF_HOLDINGS](#v_imc_statement_of_holdings) (13 columns)
- [V_IM_MOVEMENTS](#v_im_movements) (23 columns)
- [V_VM_MOVEMENTS](#v_vm_movements) (13 columns)
- [WAIVECATEGORIES](#waivecategories) (10 columns, ~10 rows)
- [WFSTATES_24032025](#wfstates_24032025) (12 columns, ~67 rows)
- [WORKFLOWGROUPINGS](#workflowgroupings) (4 columns, ~15 rows)
- [WORKFLOWS](#workflows) (3 columns, ~9 rows)
- [WORKFLOWSTATES](#workflowstates) (12 columns, ~67 rows)
- [WORKFLOWSTATES_BAK231119](#workflowstates_bak231119) (12 columns, ~50 rows)
- [WORKFLOWSTATETRANSITIONS](#workflowstatetransitions) (13 columns, ~211 rows)
- [WORKFLOWSTATETRANSITIONS_BAK](#workflowstatetransitions_bak) (11 columns, ~143 rows)
- [WORKFLOWUPLOADDATA](#workflowuploaddata) (3 columns, ~0 rows)
- [WORKFLOWUPLOADMESSAGES](#workflowuploadmessages) (6 columns, ~0 rows)
- [WORKFLOWUPLOADRECORDS](#workflowuploadrecords) (13 columns, ~0 rows)
- [WRONGWAYRISKRULES](#wrongwayriskrules) (11 columns, ~0 rows)
- [WRONGWAYRISKRULESXBUCKETS](#wrongwayriskrulesxbuckets) (2 columns, ~0 rows)
- [ZZZ_API_MOVEMENTS](#zzz_api_movements) (23 columns, ~41 rows)
- [ZZZ_PRE_CHG00265383_WFL](#zzz_pre_chg00265383_wfl) (13 columns, ~213 rows)
- [ZZZ_TLM_FOUNDATION_OD](#zzz_tlm_foundation_od) (5 columns, ~37695 rows)
- [ZZZ_TLM_FOUNDATION_SS](#zzz_tlm_foundation_ss) (4 columns, ~53 rows)
- [ZZZ_WORKFLOW_PRE_CHG00262819](#zzz_workflow_pre_chg00262819) (13 columns, ~209 rows)
- [Z_IMC_COLLATERAL_INS_20210724](#z_imc_collateral_ins_20210724) (2 columns, ~10238 rows)

---

## ACADIAALIAS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ACADIAALIASID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ALIASTYPE | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | ALGOALIAS | NVARCHAR2(510) | NOT NULL |  |  |
| 4 | ACADIANAME | NVARCHAR2(510) | NOT NULL |  |  |

## AGREEMENTALIASES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTALIASID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTALIASNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | AGREEMENTALIASGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |

## AGREEMENTEXPOSUREDIFFERENCES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTEXPOSUREDIFFERENCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | EXPOSUREDIFFERENCE | NUMBER(19,4) | NULL |  |  |
| 4 | CURRENTEXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 5 | CURRENTEXPOSUREDATE | DATE | NULL |  |  |
| 6 | CURRENTTRADESCOUNT | NUMBER(9,0) | NULL |  |  |
| 7 | EXPOSURECOB1AMOUNT | NUMBER(19,4) | NULL |  |  |
| 8 | EXPOSURECOB1DATE | DATE | NULL |  |  |
| 9 | EXPOSURECOB1TRADESCOUNT | NUMBER(9,0) | NULL |  |  |
| 10 | EXPOSURECOB2AMOUNT | NUMBER(19,4) | NULL |  |  |
| 11 | EXPOSURECOB2DATE | DATE | NULL |  |  |
| 12 | EXPOSURECOB2TRADESCOUNT | NUMBER(9,0) | NULL |  |  |
| 13 | TRADECOUNTDIFFERENCE | NUMBER(9,0) | NULL |  |  |

## AGREEMENTGROUPS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTGROUPNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 4 | MARGINCONTACTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | MARGINCONTACTEMAIL | NVARCHAR2(510) | NULL |  |  |
| 6 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 7 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 8 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 10 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 11 | INTERESTCONTACTNAME | NVARCHAR2(510) | NULL |  |  |
| 12 | INTERESTCONTACTEMAIL | NVARCHAR2(510) | NULL |  |  |
| 13 | SENDEREMAIL | NVARCHAR2(510) | NULL |  |  |
| 14 | ISDELETED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 15 | AGREEMENTGROUPTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 16 | ISSENDPROFITANDLOSS | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 17 | SOAGREEMENTGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 18 | SOAGREEMENTTYPE | NVARCHAR2(510) | NULL |  |  |
| 19 | SOPRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 20 | SOCOUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 21 | COLLATERALCONTACTNAME | NVARCHAR2(510) | NULL |  |  |
| 22 | COLLATERALCONTACTEMAIL | NVARCHAR2(510) | NULL |  |  |
| 23 | ALIASGROUPID | NUMBER(18,0) | NULL |  |  |
| 24 | NETCASH | NUMBER(1,0) | NOT NULL |  |  |
| 25 | NETDEBT | NUMBER(1,0) | NOT NULL |  |  |
| 26 | NETEQUITIES | NUMBER(1,0) | NOT NULL |  |  |
| 27 | NETVARIATIONWITHLOCKUP | NUMBER(1,0) | NOT NULL |  |  |
| 28 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 29 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## AGREEMENTGROUPSXUSERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTMARGINS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTMARGINID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | MARGINTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | DUETO | NUMBER(9,0) | NOT NULL |  |  |
| 5 | AMOUNT | NUMBER(19,6) | NOT NULL |  |  |
| 6 | COVERAGE | NVARCHAR2(200) | NULL |  |  |
| 7 | METHODOLOGY | NVARCHAR2(200) | NULL |  |  |
| 8 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 9 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 10 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 11 | MARGINMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |

## AGREEMENTMARGINSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTMARGINSBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | MARGINTYPE | NVARCHAR2(100) | NULL |  |  |
| 5 | MARGINTYPEENUM | NUMBER(9,0) | NULL |  |  |
| 6 | DUETO | NVARCHAR2(100) | NULL |  |  |
| 7 | DUETOENUM | NUMBER(9,0) | NULL |  |  |
| 8 | AMOUNT | NUMBER(19,6) | NULL |  |  |
| 9 | COVERAGE | NVARCHAR2(200) | NULL |  |  |
| 10 | METHODOLOGY | NVARCHAR2(200) | NULL |  |  |
| 11 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 12 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 13 | CURRENCYCODE | NCHAR(6) | NULL |  |  |
| 14 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 15 | MARGINMETHOD | NVARCHAR2(100) | NULL |  |  |
| 16 | MARGINMETHODENUM | NUMBER(9,0) | NULL |  |  |

## AGREEMENTNOTES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTNOTEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | NOTE | NVARCHAR2(1000) | NOT NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |

## AGREEMENTREFERENCEXBRANCHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | BRANCHID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTRESPBUSINESSLINES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPBUSINESSLINEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | BUSINESSLINE | NUMBER(9,0) | NOT NULL |  |  |

## AGREEMENTRESPONSIBILITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTRESPONSIBILITYNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | AGREEMENTNAMESTARTSWITHBEGIN | NVARCHAR2(200) | NULL |  |  |
| 10 | AGREEMENTNAMEOPERATOR | NUMBER(9,0) | NULL |  |  |
| 11 | AGREEMENTNAMESTARTSWITHEND | NVARCHAR2(200) | NULL |  |  |
| 12 | EMAILADDRESS | NVARCHAR2(1000) | NULL |  |  |
| 13 | INCLUDECOUNTERPARTYDESCENDANTS | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 14 | ISINCLUDEONLY | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 15 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## AGREEMENTRESPXCOUNTERPARTIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COUNTERPARTYID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTRESPXCPTYORGANIZATION

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ORGANIZATIONTYPEID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTRESPXEXCLUDEDAGREEMEN

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RESPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTRESPXINCLUDEDAGREEMEN

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RESPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTRESPXPRINCIPALS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRINCIPALID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTRESPXPRINMANAGINGLOCA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CITYID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | AGREEMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | PRINCIPALID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | COUNTERPARTYID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | PRINCIPALMANAGINGLOCATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 10 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 11 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 12 | AGREEMENTCURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 13 | VALUATIONAGENT | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 14 | SOURCEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 15 | INCLUDESTRADEDAYS | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 16 | EXCLUDESTRADEDAYS | NUMBER(9,0) | NOT NULL | `((3))` |  |
| 17 | CALCULATIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 18 | PRINCIPALCREDITPROVIDERID | NUMBER(18,0) | NULL |  |  |
| 19 | COUNTERPARTYCREDITPROVIDERID | NUMBER(18,0) | NULL |  |  |
| 20 | LOCKUPCALCULATIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 21 | MARGINVALUATIONTIMINGID | NUMBER(18,0) | NULL |  |  |
| 22 | NOTIFICATIONTIME | DATE | NULL |  |  |
| 23 | NOTIFICATIONTIMECITYID | NUMBER(18,0) | NULL |  |  |
| 24 | NOTIFICATIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 25 | COUNTERPARTYMANAGINGLOCATIONID | NUMBER(18,0) | NULL |  |  |
| 26 | DISPUTEMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 27 | DISPUTEAMOUNT | NUMBER(19,4) | NULL |  |  |
| 28 | DISPUTECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 29 | COLLATERALVALUATIONQUOTE | NUMBER(9,0) | NOT NULL |  |  |
| 30 | COLLATERALPRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 31 | INCLUDEVARIATIONACCRUAL | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 32 | INTERESTPAYMENTPREFERENCE | NUMBER(9,0) | NULL | `((1))` |  |
| 33 | INTERESTPAYMENTCALENDARID | NUMBER(18,0) | NULL |  |  |
| 34 | INTERESTPAYMENTTIMINGID | NUMBER(18,0) | NULL |  |  |
| 35 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 36 | SIGNATUREDATE | DATE | NULL |  |  |
| 37 | AMENDMENTDATE | DATE | NULL |  |  |
| 38 | MASTERAGREEMENTDATE | DATE | NULL |  |  |
| 39 | AGREEMENTSTATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 40 | AGREEMENTSTATUSDETAILID | NUMBER(18,0) | NULL |  |  |
| 41 | GOVERNINGLAWID | NUMBER(18,0) | NULL |  |  |
| 42 | VERSIONYEAR | NUMBER(9,0) | NULL |  |  |
| 43 | POSTINGPARTY | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 44 | BUSINESSLINE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 45 | COLLATERALALLOCATIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 46 | AVAILABLEFORREHYPOTHECATION | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 47 | TRIPARTYVARIATIONCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 48 | TRIPARTYLOCKUPCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 49 | INCLUDELOCKUPACCRUAL | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 50 | CASHSETTLEMENTOFFSET | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 51 | DEBTSETTLEMENTOFFSET | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 52 | NETINTERESTPAYMENTS | NUMBER(1,0) | NOT NULL | `((1))` |  |
| 53 | USEMTAONLOCKUPMARGINTERMS | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 54 | USEROUNDINGONLOCKUPMARGINTERMS | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 55 | INTERESTROUNDINGMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 56 | INTERESTAPPLYPRECISIONTO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 57 | PRICEADJUSTMENT | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 58 | FXRATESOURCEID | NUMBER(18,0) | NULL |  |  |
| 59 | CLEARINGCLIENTID | NUMBER(18,0) | NULL |  |  |
| 60 | CLEARINGDIRECTION | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 61 | COLLATERALMARGINTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 62 | CENTRALCOUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 63 | EXTANVILMATCHCODE | NVARCHAR2(500) | NULL |  |  |
| 64 | ALLOWINTRADAYCALCULATION | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 65 | INTRADAYTOLERANCE | NUMBER(18,0) | NULL |  |  |
| 66 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 67 | SPLITTOLERANCEMETHOD | NUMBER(10,0) | NOT NULL |  |  |
| 68 | SPLITTOLERANCEAMOUNT | NUMBER(21,6) | NULL |  |  |
| 69 | SPLITTOLERANCECURRENCYID | NUMBER(19,0) | NULL |  |  |
| 70 | UUID | NVARCHAR2(100) | NOT NULL |  |  |
| 71 | IMRAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 72 | IMRAWDUETO | NUMBER(9,0) | NULL |  |  |
| 73 | IARAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 74 | IARAWDUETO | NUMBER(9,0) | NULL |  |  |
| 75 | IMIATIMESTAMPUTC | DATE | NULL |  |  |
| 76 | AUTOBOOKINGALLOWEDFOR | NUMBER(9,0) | NOT NULL | `(0)` |  |

## AGREEMENTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTSBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | AGREEMENTTYPE | NVARCHAR2(200) | NULL |  |  |
| 6 | AGREEMENTTYPEID | NUMBER(18,0) | NULL |  |  |
| 7 | PRINCIPAL | NVARCHAR2(500) | NULL |  |  |
| 8 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 9 | COUNTERPARTY | NVARCHAR2(500) | NULL |  |  |
| 10 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 11 | PRINCIPALMANAGINGLOCATION | NVARCHAR2(200) | NULL |  |  |
| 12 | PRINCIPALMANAGINGLOCATIONID | NUMBER(18,0) | NULL |  |  |
| 13 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 14 | AGREEMENTCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 15 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 16 | VALUATIONAGENT | NVARCHAR2(100) | NULL |  |  |
| 17 | VALUATIONAGENTENUM | NUMBER(9,0) | NULL |  |  |
| 18 | SOURCEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 19 | INCLUDESTRADEDAYS | NVARCHAR2(510) | NULL |  |  |
| 20 | EXCLUDESTRADEDAYS | NVARCHAR2(510) | NULL |  |  |
| 21 | INCLUDESTRADEDAYSENUM | NUMBER(9,0) | NULL |  |  |
| 22 | EXCLUDESTRADEDAYSENUM | NUMBER(9,0) | NULL |  |  |
| 23 | PRINCIPALCREDITPROVIDER | NVARCHAR2(510) | NULL |  |  |
| 24 | COUNTERPARTYCREDITPROVIDER | NVARCHAR2(510) | NULL |  |  |
| 25 | PRINCIPALCREDITPROVIDERID | NUMBER(18,0) | NULL |  |  |
| 26 | COUNTERPARTYCREDITPROVIDERID | NUMBER(18,0) | NULL |  |  |
| 27 | CALCULATIONTYPE | NVARCHAR2(50) | NULL |  |  |
| 28 | CALCULATIONTYPEENUM | NUMBER(9,0) | NULL | `((0))` |  |
| 29 | LOCKUPCALCULATIONTYPE | NVARCHAR2(100) | NULL |  |  |
| 30 | LOCKUPCALCULATIONTYPEENUM | NUMBER(9,0) | NULL |  |  |
| 31 | COLLATERALVALUATIONQUOTE | NVARCHAR2(100) | NULL |  |  |
| 32 | COLLATERALVALUATIONQUOTEENUM | NUMBER(9,0) | NULL |  |  |
| 33 | COLLATERALPRICESOURCE | NVARCHAR2(200) | NULL |  |  |
| 34 | COLLATERALPRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 35 | HOLIDAYCALENDAR | NVARCHAR2(4000) | NULL |  |  |
| 36 | HOLIDAYCALENDARID | NVARCHAR2(4000) | NULL |  |  |
| 37 | INCLUDEVARIATIONACCRUAL | NUMBER(1,0) | NULL | `((0))` |  |
| 38 | INTERESTPAYMENTPREFERENCE | NVARCHAR2(50) | NULL |  |  |
| 39 | INTERESTPAYMENTPREFERENCEENUM | NUMBER(9,0) | NULL | `((1))` |  |
| 40 | INTERESTPAYMENTCALENDAR | NVARCHAR2(200) | NULL |  |  |
| 41 | INTERESTPAYMENTCALENDARID | NUMBER(18,0) | NULL |  |  |
| 42 | INTERESTPAYMENTFREQUENCY | NVARCHAR2(50) | NULL |  |  |
| 43 | INTERESTPAYMENTFREQUENCYENUM | NUMBER(9,0) | NULL | `((0))` |  |
| 44 | INTERESTPAYMENTEXACTDATES | NVARCHAR2(4000) | NULL |  |  |
| 45 | INTERESTPAYMENTEXACTDATESVALUE | NVARCHAR2(4000) | NULL |  |  |
| 46 | INTERESTPAYMENTDAYOFWEEK | NVARCHAR2(50) | NULL |  |  |
| 47 | INTERESTPAYMENTDAYOFWEEKENUM | NUMBER(9,0) | NULL | `((0))` |  |
| 48 | INTERESTTIMINGIDTODELETE | NUMBER(18,0) | NULL |  |  |
| 49 | INTERESTPAYMENTDAYOFMONTH | NVARCHAR2(50) | NULL |  |  |
| 50 | INTERESTPAYMENTDAYOFMONTHENUM | NUMBER(9,0) | NULL | `((0))` |  |
| 51 | INTERESTPAYMENTCALENDARTYPE | NVARCHAR2(50) | NULL |  |  |
| 52 | INTERESTPAYMENTCALTYPEENUM | NUMBER(9,0) | NULL | `((0))` |  |
| 53 | INTERESTPAYMENTMONTHS | NVARCHAR2(1000) | NULL |  |  |
| 54 | INTERESTPAYMENTMONTHSENUM | NUMBER(9,0) | NULL | `((0))` |  |
| 55 | INTERESTPAYMENTWEEKOFMONTH | NVARCHAR2(50) | NULL |  |  |
| 56 | INTERESTPAYMENTWEEKOFMONTHENUM | NUMBER(9,0) | NULL | `((0))` |  |
| 57 | AGREEMENTSTATUS | NVARCHAR2(200) | NULL |  |  |
| 58 | AGREEMENTSTATUSENUM | NUMBER(9,0) | NULL |  |  |
| 59 | AGREEMENTSTATUSDETAIL | NVARCHAR2(200) | NULL |  |  |
| 60 | AGREEMENTSTATUSDETAILID | NUMBER(18,0) | NULL |  |  |
| 61 | GOVERNINGLAW | NVARCHAR2(200) | NULL |  |  |
| 62 | GOVERNINGLAWID | NUMBER(18,0) | NULL |  |  |
| 63 | VERSIONYEAR | NUMBER(9,0) | NULL |  |  |
| 64 | MASTERAGREEMENTDATE | DATE | NULL |  |  |
| 65 | SIGNATUREDATE | DATE | NULL |  |  |
| 66 | AMENDMENTDATE | DATE | NULL |  |  |
| 67 | POSTINGPARTY | NVARCHAR2(100) | NULL |  |  |
| 68 | POSTINGPARTYENUM | NUMBER(9,0) | NULL |  |  |
| 69 | BUSINESSLINEENUM | NUMBER(9,0) | NULL | `((0))` |  |
| 70 | COLLATERALALLOCATIONTYPEENUM | NUMBER(9,0) | NULL |  |  |
| 71 | COLLATERALALLOCATIONTYPE | NVARCHAR2(100) | NULL |  |  |
| 72 | AVAILABLEFORREHYPOTHECATION | NVARCHAR2(100) | NULL |  |  |
| 73 | AVAILABLEFORREHYPENUM | NUMBER(9,0) | NULL |  |  |
| 74 | TRIPARTYVARIATIONCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 75 | TRIPARTYVARIATIONCUSTODIAN | NVARCHAR2(510) | NULL |  |  |
| 76 | TRIPARTYLOCKUPCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 77 | TRIPARTYLOCKUPCUSTODIAN | NVARCHAR2(510) | NULL |  |  |
| 78 | INCLUDELOCKUPACCRUAL | NUMBER(1,0) | NULL | `((0))` |  |
| 79 | CASHSETTLEMENTOFFSET | NVARCHAR2(510) | NULL |  |  |
| 80 | DEBTSETTLEMENTOFFSET | NVARCHAR2(510) | NULL |  |  |
| 81 | CASHSETTLEMENTOFFSETENUM | NUMBER(9,0) | NULL |  |  |
| 82 | DEBTSETTLEMENTOFFSETENUM | NUMBER(9,0) | NULL |  |  |
| 83 | NETINTERESTPAYMENTS | NUMBER(1,0) | NULL |  |  |
| 84 | USEMTAONLOCKUPMARGINTERMS | NUMBER(1,0) | NULL |  |  |
| 85 | USEROUNDINGONLOCKUPMARGINTERMS | NUMBER(1,0) | NULL |  |  |
| 86 | INTERESTROUNDINGMETHOD | NVARCHAR2(510) | NULL |  |  |
| 87 | INTERESTROUNDINGMETHODENUM | NUMBER(9,0) | NULL |  |  |
| 88 | INTERESTAPPLYPRECISIONTO | NVARCHAR2(510) | NULL |  |  |
| 89 | INTERESTAPPLYPRECISIONTOENUM | NUMBER(9,0) | NULL |  |  |
| 90 | PRICEADJUSTMENT | NVARCHAR2(100) | NULL |  |  |
| 91 | PRICEADJUSTMENTENUM | NUMBER(9,0) | NULL | `((0))` |  |
| 92 | FXRATESOURCEID | NUMBER(18,0) | NULL |  |  |
| 93 | FXRATESOURCE | NVARCHAR2(500) | NULL |  |  |
| 94 | ALLOWINTRADAYCALCULATION | NUMBER(1,0) | NULL | `(0)` |  |
| 95 | INTRADAYTOLERANCE | NUMBER(18,0) | NULL |  |  |
| 96 | SPLITTOLERANCEAMOUNT | NUMBER(21,6) | NULL |  |  |
| 97 | SPLITTOLERANCEMETHOD | NVARCHAR2(100) | NULL |  |  |
| 98 | SPLITTOLERANCEMETHODENUM | NUMBER(10,0) | NULL |  |  |
| 99 | SPLITTOLERANCECURRENCY | NVARCHAR2(6) | NULL |  |  |
| 100 | SPLITTOLERANCECURRENCYID | NUMBER(19,0) | NULL |  |  |
| 101 | UUID | NVARCHAR2(100) | NULL |  |  |
| 102 | COUNTERPARTYMANAGINGLOCATION | NVARCHAR2(200) | NULL |  |  |
| 103 | COUNTERPARTYMANAGINGLOCATIONID | NUMBER(18,0) | NULL |  |  |
| 104 | VALUATIONFREQ | NVARCHAR2(50) | NULL |  |  |
| 105 | VALUATIONFREQENUM | NUMBER(9,0) | NULL | `(0)` |  |
| 106 | VALUATIONFREQEXACTDATES | NVARCHAR2(4000) | NULL |  |  |
| 107 | VALUATIONFREQEXACTDATESVALUE | NVARCHAR2(4000) | NULL |  |  |
| 108 | VALUATIONFREQDAYOFWEEK | NVARCHAR2(50) | NULL |  |  |
| 109 | VALUATIONFREQDAYOFWEEKENUM | NUMBER(9,0) | NULL | `(0)` |  |
| 110 | VALUATIONFREQTIMINGIDTODELETE | NUMBER(18,0) | NULL |  |  |
| 111 | VALUATIONFREQDAYOFMONTH | NVARCHAR2(50) | NULL |  |  |
| 112 | VALUATIONFREQDAYOFMONTHENUM | NUMBER(9,0) | NULL | `(0)` |  |
| 113 | VALUATIONFREQCALENDARTYPE | NVARCHAR2(50) | NULL |  |  |
| 114 | VALUATIONFREQCALTYPEENUM | NUMBER(9,0) | NULL | `(0)` |  |
| 115 | VALUATIONFREQMONTHS | NVARCHAR2(1000) | NULL |  |  |
| 116 | VALUATIONFREQMONTHSENUM | NUMBER(9,0) | NULL | `(0)` |  |
| 117 | VALUATIONFREQWEEKOFMONTH | NVARCHAR2(50) | NULL |  |  |
| 118 | VALUATIONFREQWEEKOFMONTHENUM | NUMBER(9,0) | NULL | `(0)` |  |
| 119 | NOTIFICATIONTIME | NVARCHAR2(50) | NULL |  |  |
| 120 | NOTIFICATIONCITY | NVARCHAR2(200) | NULL |  |  |
| 121 | NOTIFICATIONTIMEVAL | DATE | NULL |  |  |
| 122 | NOTIFICATIONCITYID | NUMBER(18,0) | NULL |  |  |
| 123 | NOTIFICATIONTYPEENUM | NUMBER(9,0) | NULL | `(0)` |  |

## AGREEMENTSCOPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTSCOPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTSCOPENAME | NVARCHAR2(500) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 5 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 6 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## AGREEMENTSCOPESXENTITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTSCOPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTSTATUSDETAILS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTSTATUSDETAILID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTSTATUSDETAILNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## AGREEMENTSXCONTACTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CONTACTID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTSXEXTDATAOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONDATAOVERRIDEID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTSXHOLIDAYCALENDARS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | HOLIDAYCALENDARID | NUMBER(18,0) | NOT NULL |  |  |

## AGREEMENTTYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTTYPENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | BUSINESSLINE | NUMBER(9,0) | NOT NULL |  |  |
| 10 | JURISDICTIONID | NUMBER(18,0) | NULL |  |  |
| 11 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## AGREEMENTTYPESXTRADETYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADETYPEID | NUMBER(18,0) | NOT NULL |  |  |

## ALIASESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ALIASESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ALIASNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | ALIASID | NUMBER(18,0) | NULL |  |  |
| 5 | ALIASGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | ALIASGROUPID | NUMBER(18,0) | NULL |  |  |
| 7 | ALIASTYPE | NVARCHAR2(510) | NULL |  |  |
| 8 | ALIASTYPEENUM | NUMBER(9,0) | NULL |  |  |
| 9 | ALIASREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 10 | ALIASREFERENCEID | NUMBER(18,0) | NULL |  |  |
| 11 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |

## ALIASGROUPS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ALIASGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ALIASGROUPNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | ISDEFAULTFORAGRGROUPNOTICES | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 10 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## ALLAGREEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PENDINGAGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 5 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 6 | PRINCIPALMANAGINGLOCATIONID | NUMBER(18,0) | NULL |  |  |
| 7 | AGREEMENTTYPEID | NUMBER(18,0) | NULL |  |  |
| 8 | BUSINESSLINE | NUMBER(9,0) | NULL |  |  |
| 9 | CLEARINGDIRECTION | NUMBER(9,0) | NULL |  |  |
| 10 | SOURCEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 11 | AGREEMENTSTATUS | NUMBER(9,0) | NULL |  |  |
| 12 | AGREEMENTSTATUSDETAILID | NUMBER(18,0) | NULL |  |  |
| 13 | CREATEDTIMESTAMP | DATE | NULL |  |  |
| 14 | UPDATEDTIMESTAMP | DATE | NULL |  |  |

## ANALYSISCONFIGSXMARGINCONFIGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINANALYSISCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |

## APPROVALCHANGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | APPROVALCHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | APPROVALRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | FIELDNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 4 | BEFOREVALUE | NVARCHAR2(3600) | NULL |  |  |
| 5 | AFTERVALUE | NVARCHAR2(3600) | NULL |  |  |

## APPROVALRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | APPROVALRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ACTION | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 3 | REFERENCEID | NUMBER(18,0) | NULL |  |  |
| 4 | AMENDEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | AMENDEDDATE | DATE | NOT NULL |  |  |
| 6 | REVIEWEDBY | NUMBER(18,0) | NULL |  |  |
| 7 | REVIEWEDDATE | DATE | NULL |  |  |
| 8 | APPROVALSTATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 9 | STATUSCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 10 | REFERENCENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 11 | PRINCIPALID | NUMBER(18,0) | NOT NULL |  |  |
| 12 | PARENTAPPROVALRECORDID | NUMBER(18,0) | NULL |  |  |
| 13 | PARENTREFERENCENAME | NVARCHAR2(510) | NULL |  |  |
| 14 | PARENTREFERENCEID | NUMBER(18,0) | NULL |  |  |
| 15 | DATATYPE | NUMBER(9,0) | NOT NULL |  |  |

## APPROVALTRANSITIONHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | APPROVALTRANSITIONHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | APPROVALRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ACTION | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 4 | REFERENCEID | NUMBER(18,0) | NULL |  |  |
| 5 | AMENDEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | AMENDEDDATE | DATE | NOT NULL |  |  |
| 7 | REVIEWEDBY | NUMBER(18,0) | NULL |  |  |
| 8 | REVIEWEDDATE | DATE | NULL |  |  |
| 9 | APPROVALSTATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 10 | STATUSCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 11 | REFERENCENAME | NVARCHAR2(2000) | NOT NULL |  |  |
| 12 | DATATYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 13 | PARENTREFERENCEID | NUMBER(18,0) | NULL |  |  |

## ASSETPOOLBALANCES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ASSETPOOLBALANCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ASSETPOOLID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | NOTIONAL | NUMBER(19,4) | NOT NULL |  |  |
| 5 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 6 | EFFECTIVEDATE | DATE | NULL |  |  |

## ASSETPOOLBALANCESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ASSETPOOLBALANCESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `(1)` |  |
| 4 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 5 | ASSETPOOLNAME | NVARCHAR2(200) | NULL |  |  |
| 6 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 7 | INSTRUMENTIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 8 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 9 | EFFECTIVEDATE | DATE | NULL |  |  |

## ASSETPOOLS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ASSETPOOLID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ASSETPOOLNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 4 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 5 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 10 | LASTEDITTIMESTAMP | DATE | NOT NULL |  |  |

## ASSIGNEDOTCTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ASSIGNEDOTCTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | OTCTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | ASSIGNEDDATE | DATE | NOT NULL |  |  |
| 5 | ASSIGNMENTMETHOD | NUMBER(9,0) | NOT NULL |  |  |
| 6 | TRADEREFERENCE | NVARCHAR2(200) | NOT NULL |  |  |
| 7 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |

## ASSIGNEDREPOTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ASSIGNEDREPOTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | REPOTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | ASSIGNEDDATE | DATE | NOT NULL |  |  |
| 5 | ASSIGNMENTMETHOD | NUMBER(9,0) | NOT NULL |  |  |
| 6 | TRADEREFERENCE | NVARCHAR2(200) | NOT NULL |  |  |
| 7 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |

## AUDITCHANGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AUDITCHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AUDITRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | FIELDNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 4 | BEFOREVALUE | NVARCHAR2(3600) | NULL |  |  |
| 5 | AFTERVALUE | NVARCHAR2(3600) | NULL |  |  |
| 6 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |

## AUDITRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AUDITRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ACTION | NUMBER(9,0) | NOT NULL |  |  |
| 3 | DATATYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | REFERENCEID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | AMENDEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | AMENDEDDATE | DATE | NOT NULL |  |  |
| 7 | REFERENCENAME | NVARCHAR2(1000) | NOT NULL |  |  |
| 8 | PARENTAUDITRECORDID | NUMBER(18,0) | NULL |  |  |
| 9 | PARENTREFERENCENAME | NVARCHAR2(510) | NULL |  |  |
| 10 | PARENTREFERENCEID | NUMBER(18,0) | NULL |  |  |
| 11 | REVIEWEDBY | NUMBER(18,0) | NULL |  |  |
| 12 | REVIEWEDDATE | DATE | NULL |  |  |

## BASICELIGIBILITYBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | BASICELIGIBILITYBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 6 | ELIGIBLECOLLATERALTYPE | NVARCHAR2(40) | NULL |  |  |
| 7 | ELIGIBLECOLLATERALIDENTIFIER | NVARCHAR2(510) | NULL |  |  |
| 8 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 9 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 10 | ELIGIBLECOLLATERALTYPEENUM | NUMBER(9,0) | NULL |  |  |
| 11 | VARIATIONHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 12 | VARIATIONPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 13 | LOCKUPHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 14 | LOCKUPPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 15 | ISNEWRECORD | NUMBER(1,0) | NULL | `((0))` |  |
| 16 | SURPLUSHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 17 | SURPLUSPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 18 | GUARANTEEHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 19 | GUARANTEEPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |

## BASICELIGIBILITYCHANGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | BASICELIGIBILITYCHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | BUCKETINSTRUMENT | NVARCHAR2(4000) | NOT NULL |  |  |
| 4 | CHANGEACTION | NUMBER(9,0) | NOT NULL |  |  |
| 5 | CHANGEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CHANGEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | AFTERAPPLYTOPARTY | NUMBER(9,0) | NULL |  |  |
| 8 | BEFOREAPPLYTOPARTY | NUMBER(9,0) | NULL |  |  |
| 9 | BEFOREPRINVALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 10 | AFTERPRINVALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 11 | BEFORECPTYVALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 12 | AFTERCPTYVALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |

## BATCH_JOB_EXECUTION

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | JOB_EXECUTION_ID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | VERSION | NUMBER(19,0) | NULL |  |  |
| 3 | JOB_INSTANCE_ID | NUMBER(19,0) | NOT NULL |  |  |
| 4 | CREATE_TIME | TIMESTAMP(6) | NOT NULL |  |  |
| 5 | START_TIME | TIMESTAMP(6) | NULL | `NULL` |  |
| 6 | END_TIME | TIMESTAMP(6) | NULL | `NULL` |  |
| 7 | STATUS | VARCHAR2(40) | NULL |  |  |
| 8 | EXIT_CODE | VARCHAR2(4000) | NULL |  |  |
| 9 | EXIT_MESSAGE | VARCHAR2(4000) | NULL |  |  |
| 10 | LAST_UPDATED | TIMESTAMP(6) | NULL |  |  |
| 11 | JOB_CONFIGURATION_LOCATION | VARCHAR2(4000) | NULL |  |  |

## BATCH_JOB_EXECUTION_CONTEXT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | JOB_EXECUTION_ID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | SHORT_CONTEXT | VARCHAR2(4000) | NOT NULL |  |  |
| 3 | SERIALIZED_CONTEXT | CLOB | NULL |  |  |

## BATCH_JOB_EXECUTION_PARAMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | JOB_EXECUTION_ID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | TYPE_CD | VARCHAR2(24) | NOT NULL |  |  |
| 3 | KEY_NAME | VARCHAR2(400) | NOT NULL |  |  |
| 4 | STRING_VAL | VARCHAR2(1000) | NULL |  |  |
| 5 | DATE_VAL | TIMESTAMP(6) | NULL | `NULL` |  |
| 6 | LONG_VAL | NUMBER(19,0) | NULL |  |  |
| 7 | DOUBLE_VAL | NUMBER | NULL |  |  |
| 8 | IDENTIFYING | CHAR(1) | NOT NULL |  |  |

## BATCH_JOB_INSTANCE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | JOB_INSTANCE_ID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | VERSION | NUMBER(19,0) | NULL |  |  |
| 3 | JOB_NAME | VARCHAR2(400) | NOT NULL |  |  |
| 4 | JOB_KEY | VARCHAR2(128) | NOT NULL |  |  |

## BATCH_STEP_EXECUTION

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | STEP_EXECUTION_ID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | VERSION | NUMBER(19,0) | NOT NULL |  |  |
| 3 | STEP_NAME | VARCHAR2(400) | NOT NULL |  |  |
| 4 | JOB_EXECUTION_ID | NUMBER(19,0) | NOT NULL |  |  |
| 5 | START_TIME | TIMESTAMP(6) | NOT NULL |  |  |
| 6 | END_TIME | TIMESTAMP(6) | NULL | `NULL` |  |
| 7 | STATUS | VARCHAR2(40) | NULL |  |  |
| 8 | COMMIT_COUNT | NUMBER(19,0) | NULL |  |  |
| 9 | READ_COUNT | NUMBER(19,0) | NULL |  |  |
| 10 | FILTER_COUNT | NUMBER(19,0) | NULL |  |  |
| 11 | WRITE_COUNT | NUMBER(19,0) | NULL |  |  |
| 12 | READ_SKIP_COUNT | NUMBER(19,0) | NULL |  |  |
| 13 | WRITE_SKIP_COUNT | NUMBER(19,0) | NULL |  |  |
| 14 | PROCESS_SKIP_COUNT | NUMBER(19,0) | NULL |  |  |
| 15 | ROLLBACK_COUNT | NUMBER(19,0) | NULL |  |  |
| 16 | EXIT_CODE | VARCHAR2(4000) | NULL |  |  |
| 17 | EXIT_MESSAGE | VARCHAR2(4000) | NULL |  |  |
| 18 | LAST_UPDATED | TIMESTAMP(6) | NULL |  |  |

## BATCH_STEP_EXECUTION_CONTEXT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | STEP_EXECUTION_ID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | SHORT_CONTEXT | VARCHAR2(4000) | NOT NULL |  |  |
| 3 | SERIALIZED_CONTEXT | CLOB | NULL |  |  |

## BONDPURPOSES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | BONDPURPOSEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | BONDPURPOSENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## BOOKDIFFERENCES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | BOOKDIFFERENCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | BOOK | NVARCHAR2(200) | NULL |  |  |
| 4 | TRADECOUNTDIFFERENCE | NUMBER(9,0) | NULL |  |  |
| 5 | EXPOSUREDIFFERENCE | NUMBER(19,4) | NULL |  |  |
| 6 | CURRENTEXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 7 | CURRENTEXPOSUREDATE | DATE | NULL |  |  |
| 8 | CURRENTTRADESCOUNT | NUMBER(9,0) | NULL |  |  |
| 9 | EXPOSURECOB1AMOUNT | NUMBER(19,4) | NULL |  |  |
| 10 | EXPOSURECOB1DATE | DATE | NULL |  |  |
| 11 | EXPOSURECOB1TRADESCOUNT | NUMBER(9,0) | NULL |  |  |
| 12 | EXPOSURECOB2AMOUNT | NUMBER(19,4) | NULL |  |  |
| 13 | EXPOSURECOB2DATE | DATE | NULL |  |  |
| 14 | EXPOSURECOB2TRADESCOUNT | NUMBER(9,0) | NULL |  |  |

## BOOKEDSETTLEMENTINSTRUCTIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | BOOKEDSETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SENDINGCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 3 | SENDINGACCOUNTNUMBER | NVARCHAR2(510) | NULL |  |  |
| 4 | SENDINGACCOUNTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | SENDINGBENEFICIARYNUMBER | NVARCHAR2(510) | NULL |  |  |
| 6 | SENDINGBENEFICIARYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | RECEIVINGCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 8 | RECEIVINGACCOUNTNUMBER | NVARCHAR2(510) | NULL |  |  |
| 9 | RECEIVINGACCOUNTNAME | NVARCHAR2(510) | NULL |  |  |
| 10 | RECEIVINGBENEFICIARYNUMBER | NVARCHAR2(510) | NULL |  |  |
| 11 | RECEIVINGBENEFICIARYNAME | NVARCHAR2(510) | NULL |  |  |
| 12 | RECEIVINGREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 13 | RECEIVINGCOMMENTS | NVARCHAR2(510) | NULL |  |  |
| 14 | SENDINGREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 15 | SENDINGCOMMENTS | NVARCHAR2(510) | NULL |  |  |
| 16 | RECEIVINGPLACEOFSETTLEMENTID | NUMBER(18,0) | NULL |  |  |
| 17 | SENDINGPLACEOFSETTLEMENTID | NUMBER(18,0) | NULL |  |  |
| 18 | RECEIVINGNAME | NVARCHAR2(510) | NULL |  |  |
| 19 | SENDINGNAME | NVARCHAR2(510) | NULL |  |  |

## BRANCHALIASES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | BRANCHALIASID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | BRANCHALIASNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | BRANCHALIASGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | BRANCHID | NUMBER(18,0) | NOT NULL |  |  |

## BRANCHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | BRANCHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | BRANCHNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |

## CACHEDAGREEMENTXAGREEMENTRESP

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |

## CBREACHESXECPOSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CONCENTRATIONBREACHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ECPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |

## CITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CITYNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | ISMANAGINGLOCATION | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 10 | TIMEZONE | NVARCHAR2(510) | NOT NULL |  |  |
| 11 | PAYMENTTOLERANCEMETHOD | NUMBER | NOT NULL |  |  |
| 12 | PAYMENTTOLERANCEAMOUNT | NUMBER(21,6) | NULL |  |  |
| 13 | PAYMENTTOLERANCECURRENCYID | NUMBER | NULL |  |  |
| 14 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## CMOABSASSETCLASSES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CMOABSASSETCLASSID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CMOABSASSETCLASSNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## COLLATERALBUCKETRATINGBANDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETRATINGBANDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | RATINGTYPE | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 4 | DEBTSTRUCTURE | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 5 | UPPEROPERATOR | NUMBER(9,0) | NULL |  |  |
| 6 | LOWEROPERATOR | NUMBER(9,0) | NULL |  |  |
| 7 | REFERENCEAGENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 8 | UPPERORDINALID | NUMBER(18,0) | NULL |  |  |
| 9 | LOWERORDINALID | NUMBER(18,0) | NULL |  |  |

## COLLATERALBUCKETS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | INSTRUMENTCLASS | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 4 | MATURITYMETHOD | NUMBER(9,0) | NULL | `((0))` |  |
| 5 | MATURITYBANDLOWEROPERATOR | NUMBER(9,0) | NULL |  |  |
| 6 | MATURITYBANDLOWERORDINAL | NUMBER(9,0) | NULL |  |  |
| 7 | MATURITYBANDLOWERTIMEPERIOD | NUMBER(9,0) | NULL |  |  |
| 8 | MATURITYBANDUPPEROPERATOR | NUMBER(9,0) | NULL |  |  |
| 9 | MATURITYBANDUPPERORDINAL | NUMBER(9,0) | NULL |  |  |
| 10 | MATURITYBANDUPPERTIMEPERIOD | NUMBER(9,0) | NULL |  |  |
| 11 | ALLRATINGSREQUIRED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 12 | RATINGDISPUTEMETHOD | NUMBER(9,0) | NULL | `((0))` |  |
| 13 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 14 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 15 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 16 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 17 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 18 | ISSUEDATEBANDLOWEROPERATOR | NUMBER(9,0) | NULL |  |  |
| 19 | ISSUEDATEBANDLOWERORDINAL | NUMBER(9,0) | NULL |  |  |
| 20 | ISSUEDATEBANDLOWERTIMEPERIOD | NUMBER(9,0) | NULL |  |  |
| 21 | ISSUEDATEBANDUPPEROPERATOR | NUMBER(9,0) | NULL |  |  |
| 22 | ISSUEDATEBANDUPPERORDINAL | NUMBER(9,0) | NULL |  |  |
| 23 | ISSUEDATEBANDUPPERTIMEPERIOD | NUMBER(9,0) | NULL |  |  |
| 24 | UUID | NVARCHAR2(100) | NULL |  |  |

## COLLATERALBUCKETSXEXCHANGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXCHANGEID | NUMBER(18,0) | NOT NULL |  |  |

## COLLATERALBUCKETSXSTOCKINDEXES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STOCKINDEXID | NUMBER(18,0) | NOT NULL |  |  |

## COLLATERALBUCKETXCURRENCIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |

## COLLATERALBUCKETXINSTRUMENTTYP

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |

## COLLATERALBUCKETXISSUERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |

## COLLATERALBUCKETXRAINSTRUMENT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RATINGAGENCYID | NUMBER(18,0) | NOT NULL |  |  |

## COLLATERALBUCKETXRAISSUER

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RATINGAGENCYID | NUMBER(18,0) | NOT NULL |  |  |

## COLLATERALGROUPS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALGROUPNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 4 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 5 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 6 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 8 | UUID | NVARCHAR2(100) | NULL |  |  |

## COLLATERALGROUPXCOLLATERALBUCK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |

## COLLATERALPOSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 5 | NOTIONAL | NUMBER(19,4) | NOT NULL |  |  |
| 6 | COLLATERALPOSITIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 7 | MARKETVALUEAGREEMENTCURRENCY | NUMBER(19,4) | NULL |  |  |
| 8 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 9 | MARKETVALUESYSTEMCURRENCY | NUMBER(19,4) | NULL |  |  |
| 10 | SYSTEMCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 11 | COLLATERALMARGINTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 12 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |

## COLLATERALPOSITIONSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALPOSITIONSBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTIDENTIFIER | NVARCHAR2(100) | NULL |  |  |
| 3 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENT | NVARCHAR2(510) | NULL |  |  |
| 5 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 6 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 7 | COLLATERALPOSITIONTYPE | NVARCHAR2(20) | NULL |  |  |
| 8 | COLLATERALPOSITIONTYPEENUM | NUMBER(9,0) | NULL |  |  |
| 9 | MARKETVALUEAGREEMENTCURRENCY | NUMBER(19,4) | NULL |  |  |
| 10 | AGREEMENTCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 11 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | MARKETVALUESYSTEMCURRENCY | NUMBER(19,4) | NULL |  |  |
| 13 | SYSTEMCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 14 | SYSTEMCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 15 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 16 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 17 | COLLATERALMARGINTYPEENUM | NUMBER(9,0) | NULL |  |  |
| 18 | COLLATERALMARGINTYPE | NVARCHAR2(100) | NULL |  |  |
| 19 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 20 | ASSETPOOLNAME | NVARCHAR2(200) | NULL |  |  |

## COLLATERALTYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLATERALTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALTYPENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## COLLELIGEXTRACTCONFIGURATIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLELIGEXTRACTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLELIGEXTRACTCONFIGNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 6 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | ISDELETED | NUMBER(1,0) | NOT NULL | `(0)` |  |

## COLLELIGEXTRACTMESSAGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLELIGEXTRACTMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLELIGEXTRACTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ERRORTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | MESSAGETYPE | NUMBER(9,0) | NOT NULL |  |  |
| 5 | ERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 6 | TOTALCOUNT | NUMBER(9,0) | NOT NULL |  |  |

## COLLELIGEXTRACTRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLELIGEXTRACTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLELIGEXTRACTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | STARTDATETIME | DATE | NULL |  |  |
| 4 | ENDDATETIME | DATE | NULL |  |  |
| 5 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 6 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CORRELATIONID | VARCHAR2(50) | NULL |  |  |
| 8 | NUMBEROFEXTRACTEDROWS | NUMBER(9,0) | NULL |  |  |
| 9 | REQUESTEDDATETIME | DATE | NOT NULL |  |  |
| 10 | INFOMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 11 | WARNINGMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 12 | EXCEPTIONMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 13 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## COLLEXTRACTXCITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COLLCONFIGID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CITYID | NUMBER(18,0) | NOT NULL |  |  |

## CONCENTRATIONBREACHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CONCENTRATIONBREACHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ECAGREEMENTRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | RULENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 4 | RULEDESCRIPTION | NVARCHAR2(4000) | NOT NULL |  |  |
| 5 | REASON | NVARCHAR2(1000) | NOT NULL |  |  |

## CONCENTRATIONRULECHANGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CONCENTRATIONRULECHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | CONCENTRATIONRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | CHANGEACTION | NUMBER(9,0) | NOT NULL |  |  |
| 5 | CONCENTRATIONRULENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 6 | DESCRIPTION | NVARCHAR2(4000) | NOT NULL |  |  |
| 7 | CHANGEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 8 | CHANGEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | APPLYTOPARTY | NUMBER(9,0) | NOT NULL |  |  |

## CONCENTRATIONRULES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CONCENTRATIONRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | RULENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 4 | COMPARISONAMOUNT | NUMBER(21,3) | NOT NULL |  |  |
| 5 | COMPARISONTYPE | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 6 | ISMIN | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 7 | ISSINGLE | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 8 | APPLYTOPARTY | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 9 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | POSITIONTYPE | NUMBER(9,0) | NULL |  |  |

## CONTACTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CONTACTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CONTACTNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 3 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | EMAILADDRESS | NVARCHAR2(4000) | NULL |  |  |
| 5 | PHONENUMBER | NVARCHAR2(60) | NULL |  |  |
| 6 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 7 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 8 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 10 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 11 | EMAILDISTRIBUTIONPREFERENCES | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 12 | FAXNUMBER | NVARCHAR2(60) | NULL |  |  |
| 13 | MARGINNOTICEINCLUDEPREFERENCES | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 14 | CUSTOMSTATEMENTID | NUMBER(18,0) | NULL |  |  |
| 15 | MARGINCALLCUSTOMSTATEMENTID | NUMBER(18,0) | NULL |  |  |
| 16 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## COUNTERPARTYMARGINDETAILS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COUNTERPARTYMARGINDETAILID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | LOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 3 | LOCKUPMARGINFAVOROF | NUMBER(9,0) | NULL |  |  |
| 4 | ADDITIONALMARGIN | NUMBER(19,4) | NULL |  |  |
| 5 | ADDITIONALMARGINFAVOROF | NUMBER(9,0) | NULL |  |  |
| 6 | NETEXPOSURE | NUMBER(19,4) | NULL |  |  |
| 7 | NETEXPOSUREFAVOROF | NUMBER(9,0) | NULL |  |  |
| 8 | VARIATIONCOLLATERALHELD | NUMBER(19,4) | NULL |  |  |
| 9 | VARIATIONCOLLATERALPOSTED | NUMBER(19,4) | NULL |  |  |
| 10 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 11 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 12 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 13 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 14 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 15 | MARGINCALCULATIONRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 16 | GENERALCOMMENT | NVARCHAR2(500) | NULL |  |  |
| 17 | LOCKUPCOLLATERALHELD | NUMBER(19,4) | NULL |  |  |
| 18 | LOCKUPCOLLATERALPOSTED | NUMBER(19,4) | NULL |  |  |
| 19 | VARIATIONDEMAND | NUMBER(19,2) | NULL |  |  |
| 20 | VARIATIONANTICDEMAND | NUMBER(19,2) | NULL |  |  |
| 21 | LOCKUPDEMAND | NUMBER(19,2) | NULL |  |  |
| 22 | LOCKUPANTICDEMAND | NUMBER(19,2) | NULL |  |  |
| 23 | LASTEDITTIMESTAMP | DATE | NULL |  |  |

## COUNTRIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COUNTRYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COUNTRYNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## COUPONTYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COUPONTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COUPONTYPENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## CREDITRATINGORDINALS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CREDITRATINGORDINALID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | DEBTSTRUCTURE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 3 | ORDINAL | NUMBER(9,0) | NOT NULL |  |  |

## CREDITRATINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CREDITRATINGID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | RATING | NVARCHAR2(30) | NOT NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 6 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | NOTRATED | NUMBER(1,0) | NOT NULL |  |  |
| 9 | CREDITRATINGORDINALID | NUMBER(18,0) | NOT NULL |  |  |

## CURRENCIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 3 | CODE | NCHAR(6) | NOT NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | FXRATEALIAS | NVARCHAR2(510) | NULL |  |  |
| 10 | QUOTECONVENTION | NUMBER(9,0) | NOT NULL |  |  |
| 11 | MINTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |
| 12 | MAXTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |
| 13 | PERCENTTOLERANCE | NUMBER(14,5) | NULL |  |  |
| 14 | ISSYSTEMCURRENCY | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 15 | DECIMALPLACES | NUMBER(9,0) | NOT NULL | `((0))` |  |

## CURRENTFXRATES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RATE | NUMBER(21,6) | NOT NULL |  |  |
| 3 | RATEDATE | DATE | NOT NULL |  |  |
| 4 | FXRATESOURCEID | NUMBER(18,0) | NOT NULL |  |  |

## CURRENTRATINGBASEDMARGINTERMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGBASEDMARGINTERMID | NUMBER(18,0) | NULL |  |  |
| 2 | MARGINTERMID | NUMBER(18,0) | NULL |  |  |
| 3 | ORDINAL | NUMBER(9,0) | NULL |  |  |
| 4 | THRESHOLD | NUMBER(19,6) | NULL |  |  |
| 5 | THRESHOLDMETHOD | NUMBER(9,0) | NULL |  |  |
| 6 | DELIVERMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 7 | RETURNMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 8 | MINIMUMTRANSFERAMOUNTMETHOD | NUMBER(9,0) | NULL |  |  |
| 9 | DELIVERROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 10 | RETURNROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 11 | ROUNDINGAMOUNTMETHOD | NUMBER(9,0) | NULL |  |  |
| 12 | ADDITIONALMARGIN | NUMBER(19,6) | NULL |  |  |
| 13 | ADDITIONALMARGINMETHOD | NUMBER(9,0) | NULL |  |  |
| 14 | LOCKUPMARGIN | NUMBER(19,6) | NULL |  |  |
| 15 | LOCKUPMARGINMETHOD | NUMBER(9,0) | NULL |  |  |
| 16 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 17 | AGENCYID | NUMBER(18,0) | NULL |  |  |
| 18 | CREDITRATINGID | NUMBER(18,0) | NULL |  |  |

## CUSTOMSTATEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CUSTOMSTATEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CUSTOMSTATEMENTNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | REPORTTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 10 | HEADERTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 11 | TOPCUSTOMSTATEMENTWRITERID | NUMBER(18,0) | NOT NULL |  |  |
| 12 | BOTTOMCUSTOMSTATEMENTWRITERID | NUMBER(18,0) | NULL |  |  |
| 13 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## CUSTOMSTATEMENTWRITERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CUSTOMSTATEMENTWRITERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CUSTOMSTATEMENTWRITERNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | CUSTOMSTATEMENTTYPE | NVARCHAR2(1000) | NOT NULL |  |  |
| 4 | ISACTIVE | NUMBER(9,0) | NOT NULL | `((1))` |  |

## DATETIMINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DATETIMINGID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TIMING | NUMBER(9,0) | NOT NULL |  |  |
| 3 | RECURRENCEINTERVAL | NUMBER(9,0) | NULL |  |  |
| 4 | DAYSOFTHEWEEK | NUMBER(9,0) | NULL |  |  |
| 5 | STARTDATE | DATE | NULL |  |  |
| 6 | ADJUSTMENT | NUMBER(9,0) | NULL |  |  |
| 7 | FIRSTMONTHLYDAY | NUMBER(9,0) | NULL |  |  |
| 8 | SECONDMONTHLYDAY | NUMBER(9,0) | NULL |  |  |
| 9 | MONTHLYDATETYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 10 | FIRSTMONTHLYORDINAL | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 11 | SECONDMONTHLYORDINAL | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 12 | FIRSTMONTHLYDAYOFWEEK | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 13 | SECONDMONTHLYDAYOFWEEK | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 14 | MONTHSOFYEAR | NUMBER(9,0) | NULL |  |  |

## DEBTINSTRUMENTPRICES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DEBTINSTRUMENTPRICEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | PRICESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | PRICEDATE | DATE | NOT NULL |  |  |
| 5 | LOADDATE | DATE | NULL |  |  |
| 6 | BIDCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 7 | MIDCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 8 | ASKCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 9 | BIDDIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 10 | MIDDIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 11 | ASKDIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 12 | POOLFACTOR | NUMBER(12,8) | NOT NULL |  |  |
| 13 | COUPONINTERESTACCRUEDTODATE | NUMBER(12,8) | NOT NULL |  |  |
| 14 | PRICEDATEADJUSTMENT | NUMBER(9,0) | NOT NULL |  |  |
| 15 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 16 | ISASKPRICECALCULATED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 17 | ISBIDPRICECALCULATED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 18 | ISMIDPRICECALCULATED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 19 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 20 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 21 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 22 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 23 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |

## DEBTINSTRUMENTPRICESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DEBTINSTRUMENTPRICESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 3 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | PRICESOURCE | NVARCHAR2(200) | NULL |  |  |
| 5 | PRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 6 | PRICEDATE | DATE | NULL |  |  |
| 7 | LOADDATE | DATE | NULL |  |  |
| 8 | BIDCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 9 | MIDCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 10 | ASKCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 11 | BIDDIRTYPRICE | NUMBER(19,8) | NULL |  |  |
| 12 | MIDDIRTYPRICE | NUMBER(19,8) | NULL |  |  |
| 13 | ASKDIRTYPRICE | NUMBER(19,8) | NULL |  |  |
| 14 | POOLFACTOR | NUMBER(12,8) | NULL |  |  |
| 15 | COUPONINTERESTACCRUEDTODATE | NUMBER(12,8) | NULL |  |  |
| 16 | PRICEDATEADJUSTMENT | NVARCHAR2(6) | NULL |  |  |
| 17 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 18 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 19 | INSTRUMENTPRICEID | NUMBER(18,0) | NULL |  |  |
| 20 | ISASKPRICECALCULATED | NUMBER(1,0) | NULL | `((0))` |  |
| 21 | ISBIDPRICECALCULATED | NUMBER(1,0) | NULL | `((0))` |  |
| 22 | ISMIDPRICECALCULATED | NUMBER(1,0) | NULL | `((0))` |  |
| 23 | PRICEDATEADJUSTMENTENUM | NUMBER(9,0) | NULL |  |  |

## DISPUTECATEGORIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DISPUTECATEGORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | DISPUTECATEGORYNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | DISPLAYORDER | NUMBER(9,0) | NOT NULL |  |  |
| 10 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## DISPUTECLASSIFICATIONRESULTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DISPUTECLASSIFICATIONRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | AGREEMENTCURRENCY | NVARCHAR2(510) | NULL |  |  |
| 5 | DISPUTINGPARTY | NVARCHAR2(510) | NULL |  |  |
| 6 | PRINDISPUTECOMMENT | NVARCHAR2(510) | NULL |  |  |
| 7 | PRINDISPUTECATEGORY | NVARCHAR2(510) | NULL |  |  |
| 8 | CPTYCOMMENT | NVARCHAR2(510) | NULL |  |  |
| 9 | CPTYDISPUTECATEGORY | NVARCHAR2(510) | NULL |  |  |
| 10 | CALLAMOUNT | NUMBER(19,4) | NULL |  |  |
| 11 | AGREEDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 12 | DISPUTEAMOUNT | NUMBER(19,4) | NULL |  |  |
| 13 | MARGINCALLID | NUMBER(18,0) | NOT NULL |  |  |
| 14 | INCOMINGMARGINCALLID | NUMBER(18,0) | NULL |  |  |
| 15 | CALCULATIONDATE | DATE | NOT NULL |  |  |
| 16 | PRINCOLLATERALBALANCE | NUMBER(19,4) | NULL |  |  |
| 17 | PRINVARIATIONCOLLATERALBALANCE | NUMBER(19,4) | NULL |  |  |
| 18 | PRINLOCKUPCOLLATERALBALANCE | NUMBER(19,4) | NULL |  |  |
| 19 | CPTYCOLLATERALBALANCE | NUMBER(19,4) | NULL |  |  |
| 20 | CPTYVARIATIONMARGIN | NUMBER(19,4) | NULL |  |  |
| 21 | CPTYINITIALMARGIN | NUMBER(19,4) | NULL |  |  |
| 22 | PRINEXPOSURE | NUMBER(19,4) | NULL |  |  |
| 23 | CPTYEXPOSURE | NUMBER(19,4) | NULL |  |  |
| 24 | PRINMTA | NUMBER(19,4) | NULL |  |  |
| 25 | PRINLOCKUPMTA | NUMBER(19,4) | NULL |  |  |
| 26 | CPTYMTA | NUMBER(19,4) | NULL |  |  |
| 27 | PRINTHRESHOLD | NUMBER(19,4) | NULL |  |  |
| 28 | PRINLOCKUPTHRESHOLD | NUMBER(19,4) | NULL |  |  |
| 29 | PRINROUNDINGAMOUNT | NUMBER(19,4) | NULL |  |  |
| 30 | PRINLOCKUPROUNDINGAMOUNT | NUMBER(19,4) | NULL |  |  |
| 31 | CPTYROUNDINGAMOUNT | NUMBER(19,4) | NULL |  |  |
| 32 | CPTYTHRESHOLD | NUMBER(19,4) | NULL |  |  |
| 33 | ISCANCELLED | NUMBER(1,0) | NOT NULL | `((0))` |  |

## DISTRIBUTIONHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DISTRIBUTIONHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | DISTRIBUTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | AMOUNT | NUMBER(19,4) | NOT NULL |  |  |
| 4 | SETTLEMENTDATE | DATE | NOT NULL |  |  |
| 5 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | ISPENDINGCANCELLATIONAPPROVAL | NUMBER(1,0) | NOT NULL |  |  |

## DISTRIBUTIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | DISTRIBUTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INTERESTPAYMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AMOUNT | NUMBER(19,4) | NOT NULL |  |  |
| 4 | DUETO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 5 | SETTLEMENTDATE | DATE | NOT NULL |  |  |
| 6 | STATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 7 | REJECTREASON | NVARCHAR2(1000) | NULL |  |  |
| 8 | REVIEWEDBY | NUMBER(18,0) | NULL |  |  |
| 9 | REVIEWEDBYTIMESTAMP | DATE | NULL |  |  |
| 10 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 11 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 12 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 13 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 14 | AGREEMENTCURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 15 | MARKETVALUEAGREEMENTCURRENCY | NUMBER(19,4) | NOT NULL |  |  |
| 16 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 17 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 18 | BOOKEDSETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NULL |  |  |
| 19 | ISLEGACY | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 20 | COLLATERALMARGINTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 21 | LEGACYREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 22 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 23 | ISUPLOADED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 24 | PHYSICALSETTLEMENT | NUMBER(1,0) | NOT NULL | `((1))` |  |
| 25 | MARKETVALUESYSTEMCURRENCY | NUMBER(19,4) | NOT NULL |  |  |
| 26 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 27 | ISPENDINGCANCELLATIONAPPROVAL | NUMBER(1,0) | NOT NULL |  |  |
| 28 | CANCELREASON | NVARCHAR2(1000) | NULL |  |  |
| 29 | EXTERNALID | NVARCHAR2(300) | NULL |  |  |

## ECAGREEMENTRESULTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ECAGREEMENTRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | MANAGINGLOCATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | ECRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | ELIGIBILITYRESULT | NUMBER(9,0) | NOT NULL |  |  |
| 6 | CONCENTRATIONRESULT | NUMBER(9,0) | NOT NULL |  |  |
| 7 | POSITIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 8 | VALUATIONAGENT | NUMBER(9,0) | NOT NULL |  |  |

## ECPOSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ECPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ECAGREEMENTRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | INSTRUMENTIDENTIFIER | NVARCHAR2(100) | NOT NULL |  |  |
| 4 | INSTRUMENTIDENTIFIERTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 5 | INSTRUMENTDESCRIPTION | NVARCHAR2(4000) | NULL |  |  |
| 6 | INSTRUMENTCURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 7 | INSTRUMENTTYPE | NVARCHAR2(510) | NOT NULL |  |  |
| 8 | ISSUERNAME | NVARCHAR2(500) | NULL |  |  |
| 9 | NOTIONAL | NUMBER(19,4) | NOT NULL |  |  |
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
| 4 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 5 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | EXCEPTIONMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 7 | AGREEMENTSCHECKED | NUMBER(9,0) | NULL |  |  |
| 8 | AGREEMENTSFAILED | NUMBER(9,0) | NULL |  |  |
| 9 | CORRELATIONID | NVARCHAR2(100) | NULL |  |  |
| 10 | REQUESTEDDATETIME | DATE | NOT NULL |  |  |
| 11 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## ELIGIBILITYBREACHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBILITYBREACHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ECAGREEMENTRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | RULENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 4 | REASON | NVARCHAR2(1000) | NOT NULL |  |  |
| 5 | BREACHRULETYPE | NUMBER(9,0) | NOT NULL |  |  |

## ELIGIBILITYBREACHESXECPOSITION

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBILITYBREACHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ECPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |

## ELIGIBILITYRULEBUCKETCHANGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBILITYRULEBUCKETCHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ELIGIBILITYRULECHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | BUCKETNAME | NVARCHAR2(510) | NOT NULL |  |  |

## ELIGIBILITYRULECHANGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBILITYRULECHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | CHANGEACTION | NUMBER(9,0) | NOT NULL |  |  |
| 5 | ELIGIBILITYRULENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 6 | DESCRIPTION | NVARCHAR2(4000) | NOT NULL |  |  |
| 7 | CHANGEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 8 | CHANGEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | APPLYTOPARTY | NUMBER(9,0) | NOT NULL |  |  |

## ELIGIBILITYRULECRITERIA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBILITYRULECRITERIAID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | PROPERTYNAME | NUMBER(9,0) | NOT NULL |  |  |
| 4 | COMPARISONOPERATOR | NUMBER(9,0) | NOT NULL |  |  |
| 5 | CRITERIATYPE | NUMBER(9,0) | NOT NULL |  |  |
| 6 | ACTIONWHENNULL | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 7 | BOOLEANITEMVALUE | NUMBER(1,0) | NULL |  |  |
| 8 | LOOKUPITEMVALUE | NVARCHAR2(1000) | NULL |  |  |
| 9 | NUMERICITEMVALUE | NUMBER(19,4) | NULL |  |  |

## ELIGIBILITYRULES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ELIGIBILITYRULENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | APPLIESTOVARIATIONHELD | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 5 | APPLIESTOLOCKUPHELD | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 6 | APPLIESTOVARIATIONPOSTED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 7 | APPLIESTOLOCKUPPOSTED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 8 | APPLIESTOGUARANTEEHELD | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 9 | APPLIESTOGUARANTEEPOSTED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 10 | APPLIESTOSURPLUSHELD | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 11 | APPLIESTOSURPLUSPOSTED | NUMBER(1,0) | NOT NULL | `((0))` |  |

## ELIGIBILITYRULESXCOLLATBUCKETS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |

## ELIGIBLECOLLATERALS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ELIGIBLECOLLATERALID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | COLLATERALBUCKETID | NUMBER(18,0) | NULL |  |  |
| 5 | ELIGIBLECOLLATERALTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 6 | VARIATIONHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 7 | VARIATIONPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 8 | LOCKUPHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 9 | LOCKUPPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 10 | SURPLUSHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 11 | SURPLUSPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 12 | GUARANTEEHELDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |
| 13 | GUARANTEEPOSTEDVALUATIONPCT | NUMBER(6,3) | NULL |  |  |

## ENTITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | ENTITYTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | DOMICILEID | NUMBER(18,0) | NULL |  |  |
| 5 | INDUSTRYSECTORID | NUMBER(18,0) | NULL |  |  |
| 6 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 7 | LEGALNAME | NVARCHAR2(1000) | NULL |  |  |
| 8 | SOURCEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 9 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 10 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 11 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 12 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 13 | ORGANIZATIONTYPEID | NUMBER(18,0) | NULL |  |  |
| 14 | PARENTENTITYID | NUMBER(18,0) | NULL |  |  |
| 15 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 16 | CUSTODIANIDENTIFIER | NVARCHAR2(500) | NULL |  |  |
| 17 | MONITORSHORTPOSITIONS | NUMBER(1,0) | NOT NULL |  |  |
| 18 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## ENTITIESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITIESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 4 | ENTITYNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | ENTITYTYPE | NUMBER(9,0) | NULL |  |  |
| 6 | DOMICILE | NVARCHAR2(200) | NULL |  |  |
| 7 | DOMICILEID | NUMBER(18,0) | NULL |  |  |
| 8 | INDUSTRYSECTOR | NVARCHAR2(200) | NULL |  |  |
| 9 | INDUSTRYSECTORID | NUMBER(18,0) | NULL |  |  |
| 10 | LEGALNAME | NVARCHAR2(1000) | NULL |  |  |
| 11 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 12 | PARTY | NVARCHAR2(40) | NULL |  |  |
| 13 | ISISSUER | NUMBER(1,0) | NULL |  |  |
| 14 | ISCUSTODIAN | NUMBER(1,0) | NULL |  |  |
| 15 | PARTYENUM | NUMBER(9,0) | NULL |  |  |
| 16 | SOURCEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 17 | ISCREDITSUPPORTPROVIDER | NUMBER(1,0) | NULL |  |  |
| 18 | ORGANIZATIONTYPEID | NUMBER(18,0) | NULL |  |  |
| 19 | ORGANIZATIONTYPE | NVARCHAR2(200) | NULL |  |  |
| 20 | PARENTENTITYID | NUMBER(18,0) | NULL |  |  |
| 21 | PARENTENTITYNAME | NVARCHAR2(510) | NULL |  |  |
| 22 | PARENTSOURCEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 23 | CUSTODIANIDENTIFIER | NVARCHAR2(500) | NULL |  |  |
| 24 | ISCENTRALCOUNTERPARTY | NUMBER(1,0) | NULL |  |  |
| 25 | ISCLEARINGMEMBER | NUMBER(1,0) | NULL |  |  |
| 26 | ISCLEARINGCLIENT | NUMBER(1,0) | NULL |  |  |
| 27 | MONITORSHORTPOSITIONS | NUMBER(1,0) | NULL |  |  |
| 28 | ENTITYGROUPS | NVARCHAR2(3000) | NULL |  |  |
| 29 | ENTITYGROUPIDS | NVARCHAR2(3000) | NULL |  |  |
| 30 | UUID | NVARCHAR2(100) | NULL |  |  |

## ENTITIESXCREDITRATINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CREDITRATINGID | NUMBER(18,0) | NOT NULL |  |  |

## ENTITIESXEXTDATAOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONDATAOVERRIDEID | NUMBER(18,0) | NOT NULL |  |  |

## ENTITYALIASES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYALIASID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYALIASNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | ENTITYALIASGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |

## ENTITYGROUPALIASES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYGROUPALIASID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYGROUPALIASNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | ENTITYGROUPALIASGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | ENTITYGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `(1)` |  |
| 6 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |

## ENTITYGROUPS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYGROUPNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(2000) | NULL |  |  |
| 4 | APPLIESTOCONCENTRATION | NUMBER(1,0) | NOT NULL |  |  |
| 5 | APPLIESTOWWR | NUMBER(1,0) | NOT NULL |  |  |
| 6 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `(1)` |  |
| 7 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 8 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 10 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 11 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## ENTITYGROUPSXENTITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |

## ENTITYRATINGSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYNAME | NVARCHAR2(510) | NULL |  |  |
| 2 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 3 | RATINGAGENCYNAME | NVARCHAR2(500) | NULL |  |  |
| 4 | RATINGAGENCYID | NUMBER(18,0) | NULL |  |  |
| 5 | DEBTSTRUCTURENAME | NVARCHAR2(100) | NULL |  |  |
| 6 | RATING | NVARCHAR2(100) | NULL |  |  |
| 7 | CREDITRATINGID | NUMBER(18,0) | NULL |  |  |
| 8 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 9 | ENTITYRATINGSBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 10 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 11 | DEBTSTRUCTUREENUM | NUMBER(9,0) | NULL |  |  |

## ENUMVALUES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENUMTYPE | VARCHAR2(100) | NOT NULL |  |  |
| 2 | ENUMTEXT | VARCHAR2(255) | NOT NULL |  |  |
| 3 | ENUMVALUE | NUMBER | NOT NULL |  |  |

## EQUITYINSTRUMENTPRICES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EQUITYINSTRUMENTPRICEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | PRICESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | PRICEDATE | DATE | NOT NULL |  |  |
| 5 | BIDPRICE | NUMBER(17,8) | NULL |  |  |
| 6 | MIDPRICE | NUMBER(17,8) | NULL |  |  |
| 7 | ASKPRICE | NUMBER(17,8) | NULL |  |  |
| 8 | ISBIDASKSPREADCALCULATED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 9 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 10 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 11 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 12 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 13 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 14 | BIDASKSPREAD | NUMBER(18,0) | NULL |  |  |
| 15 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 16 | LOADDATE | DATE | NULL |  |  |

## EQUITYINSTRUMENTPRICESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EQUITYINSTRUMENTPRICESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 3 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | PRICESOURCE | NVARCHAR2(200) | NULL |  |  |
| 5 | PRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 6 | PRICEDATE | DATE | NULL |  |  |
| 7 | BIDPRICE | NUMBER(17,8) | NULL |  |  |
| 8 | MIDPRICE | NUMBER(17,8) | NULL |  |  |
| 9 | ASKPRICE | NUMBER(17,8) | NULL |  |  |
| 10 | BIDASKSPREAD | NUMBER(18,0) | NULL |  |  |
| 11 | ISBIDASKSPREADCALCULATED | NUMBER(1,0) | NULL | `((0))` |  |
| 12 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 13 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 14 | INSTRUMENTPRICEID | NUMBER(18,0) | NULL |  |  |
| 15 | LOADDATE | DATE | NULL |  |  |

## EXACTDATETIMINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXACTDATETIMINGID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | DATETIMINGID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | EXACTDATE | DATE | NOT NULL |  |  |

## EXCHANGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXCHANGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXCHANGENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## EXPOSURESTATEMENTHISTORIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXPOSURESTATEMENTHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | SENTTIMESTAMP | DATE | NOT NULL |  |  |

## EXPOSURETRADEOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXPOSURETRADEOVERRIDEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADEREFERENCE | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 4 | EXPOSUREAMOUNTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 5 | EXPOSUREDATE | DATE | NULL |  |  |
| 6 | EXPOSUREEXPIRATION | DATE | NULL |  |  |
| 7 | EXPOSUREIMPORTID | NUMBER(18,0) | NULL |  |  |
| 8 | ADDITIONALMARGIN | NUMBER(19,6) | NULL |  |  |
| 9 | ADDITIONALMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | ADDITIONALMARGINDUETO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 11 | ADDITIONALMARGINEXPIRATION | DATE | NULL |  |  |
| 12 | ADDITIONALMARGINIMPORTID | NUMBER(18,0) | NULL |  |  |
| 13 | LOCKUPMARGIN | NUMBER(19,6) | NULL |  |  |
| 14 | LOCKUPMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 15 | LOCKUPMARGINDUETO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 16 | LOCKUPMARGINEXPIRATION | DATE | NULL |  |  |
| 17 | LOCKUPMARGINIMPORTID | NUMBER(18,0) | NULL |  |  |
| 18 | EXPOSURETRADETYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 19 | TRADEIMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 20 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 21 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 22 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 23 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 24 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 25 | ADDITIONALMARGINMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 26 | LOCKUPMARGINMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 27 | UPDATEDTIMESTAMPINUTC | DATE | NOT NULL |  |  |
| 28 | EXPOSUREEXPIRYTIME | DATE | NULL |  |  |
| 29 | ADDITIONALMARGINEXPIRYTIME | DATE | NULL |  |  |
| 30 | LOCKUPMARGINEXPIRYTIME | DATE | NULL |  |  |
| 31 | OVERRIDECOMMENT | NVARCHAR2(1000) | NULL |  |  |

## EXPOSURETRADEOVERRIDESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXPOSURETRADEOVERRIDESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | EXPOSURETRADEOVERRIDEID | NUMBER(18,0) | NULL |  |  |
| 4 | TRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 5 | IMPORTCONFIGURATIONNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | TRADEIMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 7 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 8 | EXPOSUREAMOUNTCURRENCY | NCHAR(6) | NULL |  |  |
| 9 | EXPOSUREAMOUNTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | EXPOSUREDATE | DATE | NULL |  |  |
| 11 | ADDITIONALMARGIN | NUMBER(19,6) | NULL |  |  |
| 12 | ADDITIONALMARGINCURRENCY | NCHAR(6) | NULL |  |  |
| 13 | ADDITIONALMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 14 | ADDITIONALMARGINDUETO | NVARCHAR2(40) | NULL |  |  |
| 15 | ADDITIONALMARGINDUETOENUM | NUMBER(9,0) | NULL |  |  |
| 16 | LOCKUPMARGIN | NUMBER(19,6) | NULL |  |  |
| 17 | LOCKUPMARGINCURRENCY | NCHAR(6) | NULL |  |  |
| 18 | LOCKUPMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 19 | LOCKUPMARGINDUETO | NVARCHAR2(40) | NULL |  |  |
| 20 | LOCKUPMARGINDUETOENUM | NUMBER(9,0) | NULL |  |  |
| 21 | EXPOSURETRADETYPE | NUMBER(9,0) | NULL |  |  |
| 22 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 23 | ADDITIONALMARGINMETHODENUM | NUMBER(9,0) | NULL |  |  |
| 24 | ADDITIONALMARGINMETHOD | NVARCHAR2(100) | NULL |  |  |
| 25 | LOCKUPMARGINMETHODENUM | NUMBER(9,0) | NULL |  |  |
| 26 | LOCKUPMARGINMETHOD | NVARCHAR2(100) | NULL |  |  |
| 27 | OVERRIDECOMMENT | NVARCHAR2(1000) | NULL |  |  |

## EXTENSIONDATAOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXTENSIONDATAOVERRIDEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONFIELDDEFINITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | STRINGVALUE | NVARCHAR2(500) | NULL |  |  |
| 4 | DATEVALUE | DATE | NULL |  |  |
| 5 | BOOLEANVALUE | NUMBER(1,0) | NULL |  |  |
| 6 | DECIMALVALUE | NUMBER(20,6) | NULL |  |  |
| 7 | EXTENSIONLISTITEMID | NUMBER(19,0) | NULL |  |  |

## EXTENSIONFIELDDEFINITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXTENSIONFIELDDEFINITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONFIELDNAME | NVARCHAR2(50) | NOT NULL |  |  |
| 3 | DISPLAYNAME | NVARCHAR2(50) | NOT NULL |  |  |
| 4 | STRINGDEFAULTVALUE | NVARCHAR2(500) | NULL |  |  |
| 5 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 10 | EXTENSIONDATATYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 11 | DIGITSAFTERDECIMAL | NUMBER(9,0) | NULL |  |  |
| 12 | NUMERICDEFAULTVALUE | NUMBER(20,6) | NULL |  |  |
| 13 | ISOTC | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 14 | ISREPO | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 15 | ISSECLENDING | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 16 | BOOLEANDEFAULTVALUE | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 17 | MAXNUMERICVALUE | NUMBER(20,6) | NULL |  |  |
| 18 | MINNUMERICVALUE | NUMBER(20,6) | NULL |  |  |
| 19 | LOWERALPHANUMERICLIMIT | NUMBER(9,0) | NULL |  |  |
| 20 | UPPERALPHANUMERICLIMIT | NUMBER(9,0) | NULL |  |  |
| 21 | EXTENSIONOBJECTTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 22 | SHOULDCOPYONNEWFROM | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 23 | ISHYPERLINK | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 24 | ISCLIENTCLEARING | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 25 | ISCENTRALCLEARING | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 26 | ISSEARCHABLE | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 27 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## EXTENSIONLISTITEMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXTENSIONLISTITEMID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | EXTENSIONFIELDDEFINITIONID | NUMBER(19,0) | NOT NULL |  |  |
| 3 | EXTENSIONLISTVALUE | NVARCHAR2(510) | NOT NULL |  |  |
| 4 | EXTENSIONLISTPOSITION | NUMBER(19,0) | NOT NULL |  |  |

## EXTRACTCONFIGURATIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXTRACTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTRACTCONFIGURATIONNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 4 | OUTPUTPATH | NVARCHAR2(1000) | NOT NULL |  |  |
| 5 | MAPPINGFILE | NVARCHAR2(510) | NULL |  |  |
| 6 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 10 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 11 | MANAGINGLOCATIONID | NUMBER(18,0) | NULL |  |  |
| 12 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 13 | BUSINESSLINESINCLUDED | NVARCHAR2(100) | NULL |  |  |

## EXTRACTMESSAGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXTRACTMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ERRORTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 3 | MESSAGETYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | ERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 5 | EXTRACTRECORDID | NUMBER(18,0) | NOT NULL |  |  |

## EXTRACTRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXTRACTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTRACTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | STARTDATETIME | DATE | NULL |  |  |
| 4 | ENDDATETIME | DATE | NULL |  |  |
| 5 | EXTRACTCOUNT | NUMBER(9,0) | NULL |  |  |
| 6 | EXCEPTIONMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 7 | INFOMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 8 | WARNINGMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 9 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 10 | CORRELATIONID | NVARCHAR2(100) | NULL |  |  |
| 11 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 12 | REQUESTEDDATETIME | DATE | NOT NULL |  |  |
| 13 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## FILEDELIMITERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | FILEDELIMITERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | DELIMITER | NCHAR(20) | NOT NULL |  |  |

## FILEFORMATS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | FILEFORMATID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | FILEFORMATNAME | NVARCHAR2(100) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |

## FUNDSOURCES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | FUNDSOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | FUNDSOURCENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## FXRATES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | FXRATEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | RATE | NUMBER(21,6) | NOT NULL |  |  |
| 4 | RATEDATE | DATE | NOT NULL |  |  |
| 5 | FXRATESOURCEID | NUMBER(18,0) | NOT NULL |  |  |

## FXRATESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | FXRATESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 4 | FXRATENAME | NVARCHAR2(510) | NULL |  |  |
| 5 | RATE | NUMBER(21,6) | NULL |  |  |
| 6 | RATEDATE | DATE | NULL |  |  |
| 7 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 8 | FXRATESOURCEID | NUMBER(18,0) | NULL |  |  |
| 9 | FXRATESOURCE | NVARCHAR2(500) | NULL |  |  |

## FXRATESOURCES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | FXRATESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | FXRATESOURCENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | ISDEFAULT | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 5 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 6 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 10 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## FXRATESPERCENTTOLERANCE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | FXRATESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 4 | FXRATENAME | NVARCHAR2(510) | NULL |  |  |
| 5 | RATE | NUMBER(21,6) | NULL |  |  |
| 6 | RATEDATE | DATE | NULL |  |  |
| 7 | PREVIOUSRATE | NUMBER(21,6) | NOT NULL |  |  |
| 8 | PREVIOUSRATEDATE | DATE | NOT NULL |  |  |
| 9 | PERCENTTOLERANCE | NUMBER(14,5) | NULL |  |  |
| 10 | PERCENTDIFFERENCE | NUMBER | NULL |  |  |

## GLOBALLIMITMESSAGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | GLOBALLIMITMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | GLOBALLIMITRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | MESSAGECONTEXT | NVARCHAR2(510) | NULL |  |  |
| 4 | STATUS | NUMBER(9,0) | NULL |  |  |
| 5 | NUMERATOR | NUMBER(19,4) | NULL |  |  |
| 6 | DENOMINATOR | NUMBER(19,4) | NULL |  |  |
| 7 | PERCENTAGE | NUMBER(19,4) | NULL |  |  |

## GLOBALLIMITPOSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | GLOBALLIMITPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | AGREEMENTBUSINESSLINE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | AGREEMENTMANAGINGLOCATION | NVARCHAR2(200) | NOT NULL |  |  |
| 5 | AGREEMENTCOUNTERPARTYNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 6 | PRIMARYINSTRUMENTIDENTIFIER | NVARCHAR2(60) | NOT NULL |  |  |
| 7 | INSTRUMENTDESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 8 | INSTRUMENTMATURITYDATE | DATE | NULL |  |  |
| 9 | MARKETVALUESYSTEMCURRENCY | NUMBER(19,4) | NOT NULL |  |  |
| 10 | INSTRUMENTCURRENCYCODE | NCHAR(6) | NOT NULL |  |  |
| 11 | INSTRUMENTISSUERNAME | NVARCHAR2(510) | NULL |  |  |
| 12 | INSTRUMENTISSUERDOMICILE | NVARCHAR2(200) | NULL |  |  |
| 13 | INSTRUMENTCLASS | NUMBER(9,0) | NOT NULL |  |  |
| 14 | INSTRUMENTTYPENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 15 | GLOBALLIMITMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 16 | NOTIONAL | NUMBER(19,4) | NOT NULL |  |  |

## GLOBALLIMITRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | GLOBALLIMITRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CONCENTRATIONRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | STATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 4 | REQUESTEDBY | NUMBER(18,0) | NULL |  |  |
| 5 | CALCULATEDDATETIME | DATE | NULL |  |  |

## HOLIDAYCALENDARS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | HOLIDAYCALENDARID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | HOLIDAYCALENDARNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## HOLIDAYS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | HOLIDAYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | HOLIDAYCALENDARID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | HOLIDAYDATE | DATE | NOT NULL |  |  |
| 4 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |

## HOLIDAYSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | HOLIDAYSBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | HOLIDAYCALENDARID | NUMBER(18,0) | NULL |  |  |
| 3 | HOLIDAYCALENDARNAME | NVARCHAR2(200) | NULL |  |  |
| 4 | HOLIDAYDATE | DATE | NULL |  |  |
| 5 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 6 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 7 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 8 | HOLIDAYID | NUMBER(18,0) | NULL |  |  |

## HT_EXTENSIONDATAOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EXTENSIONDATAOVERRIDEID | NUMBER(19,2) | NOT NULL |  |  |

## HT_T_IMC_ALL_SMR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |

## HT_T_IMC_CTPY_SMR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |

## HT_T_IMC_EXPSTM_SUMMARY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |

## HT_T_IMC_EXP_SMR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |

## IMPORTCONFIGURATIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTCONFIGURATIONNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 4 | FILEPATH | NVARCHAR2(1000) | NOT NULL |  |  |
| 5 | FILEFORMATID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | FILEDELIMITERID | NUMBER(18,0) | NOT NULL |  |  |
| 7 | ROWSTART | NUMBER(9,0) | NOT NULL |  |  |
| 8 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 10 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 11 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 12 | DATELOCALE | NVARCHAR2(20) | NOT NULL |  |  |
| 13 | DATEPATTERN | NVARCHAR2(60) | NOT NULL |  |  |
| 14 | IMPORTCONFIGURATIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 15 | MAPPINGFILE | NVARCHAR2(510) | NOT NULL |  |  |
| 16 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 17 | ENTITYALIASGROUPID | NUMBER(18,0) | NULL |  |  |
| 18 | AGREEMENTALIASGROUPID | NUMBER(18,0) | NULL |  |  |
| 19 | TRADETYPEALIASGROUPID | NUMBER(18,0) | NULL |  |  |
| 20 | ISDELETED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 21 | BRANCHALIASGROUPID | NUMBER(18,0) | NULL |  |  |
| 22 | DECIMALSEPARATOR | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 23 | ENTITYGROUPALIASGROUPID | NUMBER(18,0) | NULL |  |  |

## IMPORTMESSAGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | IMPORTMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ERRORTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 3 | MESSAGETYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | CREATETIMESTAMP | DATE | NOT NULL |  |  |
| 5 | ERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 6 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 7 | TOTALCOUNT | NUMBER(9,0) | NOT NULL | `((1))` |  |

## IMPORTRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | STARTDATETIME | DATE | NULL |  |  |
| 4 | ENDDATETIME | DATE | NULL |  |  |
| 5 | IMPORTEDRECORDSCOUNT | NUMBER(9,0) | NULL |  |  |
| 6 | EXCEPTIONMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 7 | INFOMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 8 | WARNINGMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 9 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 10 | FILENAME | NVARCHAR2(510) | NULL |  |  |
| 11 | FILETIMESTAMP | DATE | NULL |  |  |
| 12 | FILESIZE | NUMBER(18,0) | NULL |  |  |
| 13 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 14 | CORRELATIONID | NVARCHAR2(100) | NULL |  |  |
| 15 | REQUESTEDDATETIME | DATE | NOT NULL |  |  |
| 16 | TOTALRECORDSCOUNT | NUMBER(9,0) | NULL |  |  |
| 17 | IMPORTEDRECORDSCOUNTCOB1 | NUMBER(9,0) | NULL |  |  |
| 18 | IMPORTEDRECORDSCOUNTCOB2 | NUMBER(9,0) | NULL |  |  |
| 19 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## INCLUDEDAGREEMENTTRADETYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 2 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 3 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 4 | TRADEASSIGNMENTRULEID | NUMBER(18,0) | NULL |  |  |
| 5 | TRADETYPEID | NUMBER(18,0) | NULL |  |  |
| 6 | BUSINESSLINE | NUMBER(9,0) | NULL |  |  |
| 7 | COLLATERALMARGINTYPE | NUMBER(9,0) | NULL |  |  |
| 8 | ADDITIONALCRITERIA | NVARCHAR2(4000) | NULL |  |  |
| 9 | LOCKUPCALCULATIONTYPE | NUMBER(9,0) | NULL |  |  |

## INDEXRATESPERCENTTOLERANCE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARKETINDEXRATESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | INDEXNAME | NVARCHAR2(200) | NULL |  |  |
| 4 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 5 | RATE | NUMBER(9,6) | NULL |  |  |
| 6 | RATEDATE | DATE | NULL |  |  |
| 7 | PREVIOUSRATE | NUMBER(9,6) | NOT NULL |  |  |
| 8 | PREVIOUSRATEDATE | DATE | NOT NULL |  |  |
| 9 | PERCENTTOLERANCE | NUMBER(14,5) | NULL |  |  |
| 10 | PERCENTDIFFERENCE | NUMBER | NULL |  |  |

## INDUSTRYGROUPS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INDUSTRYGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INDUSTRYGROUPNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## INDUSTRYSECTORS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INDUSTRYSECTORID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INDUSTRYSECTORNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## INSTRUCTIONXDEBTLOCINSTRUMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |

## INSTRUCTIONXINSTRUMENTTYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |

## INSTRUMENTRATINGSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTIDENTIFIER | NVARCHAR2(510) | NULL |  |  |
| 2 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | RATINGAGENCYNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | RATINGAGENCYID | NUMBER(18,0) | NULL |  |  |
| 5 | DEBTSTRUCTURENAME | NVARCHAR2(100) | NULL |  |  |
| 6 | DEBTSTRUCTUREENUM | NUMBER(9,0) | NULL |  |  |
| 7 | RATING | NVARCHAR2(100) | NULL |  |  |
| 8 | CREDITRATINGID | NUMBER(18,0) | NULL |  |  |
| 9 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 10 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 11 | INSTRUMENTRATINGSBULKID | NUMBER(18,0) | NOT NULL |  |  |

## INSTRUMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRIMARYIDENTIFIERTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | MATURITYDATE | DATE | NULL |  |  |
| 5 | COUPON | NUMBER(19,4) | NULL |  |  |
| 6 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 7 | PRICETERMS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 8 | ISSUERID | NUMBER(18,0) | NULL |  |  |
| 9 | ISSUEDATE | DATE | NULL |  |  |
| 10 | ISIN | NCHAR(24) | NULL |  |  |
| 11 | CUSIP | NCHAR(18) | NULL |  |  |
| 12 | SEDOL | NCHAR(14) | NULL |  |  |
| 13 | AMOUNTISSUED | NUMBER(19,4) | NULL |  |  |
| 14 | AMOUNTOUTSTANDING | NUMBER(19,4) | NULL |  |  |
| 15 | INSTRUMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 16 | INDEXLINKED | NUMBER(1,0) | NULL |  |  |
| 17 | COUPONTYPEID | NUMBER(18,0) | NULL |  |  |
| 18 | WEIGHTEDAVERAGECOUPON | NUMBER(21,6) | NULL |  |  |
| 19 | COLLATERALTYPEID | NUMBER(18,0) | NULL |  |  |
| 20 | ISSUERINDUSTRYGROUPID | NUMBER(18,0) | NULL |  |  |
| 21 | ISSENIOR | NUMBER(1,0) | NULL |  |  |
| 22 | DTCELIGIBLE | NUMBER(1,0) | NULL |  |  |
| 23 | PASSTHROUGH | NUMBER(1,0) | NULL |  |  |
| 24 | CREDITENHANCED | NUMBER(1,0) | NULL |  |  |
| 25 | INSTRUMENTUNDERLYINGSECTORID | NUMBER(18,0) | NULL |  |  |
| 26 | MUNICIPALSTATEID | NUMBER(18,0) | NULL |  |  |
| 27 | MUNICIPALREGIONID | NUMBER(18,0) | NULL |  |  |
| 28 | BONDPURPOSEID | NUMBER(18,0) | NULL |  |  |
| 29 | FUNDSOURCEID | NUMBER(18,0) | NULL |  |  |
| 30 | WEIGHTEDAVERAGEFICO | NUMBER(19,4) | NULL |  |  |
| 31 | SECONDLIENPERCENTAGE | NUMBER(19,4) | NULL |  |  |
| 32 | WEIGHTEDAVERAGELTV | NUMBER(19,4) | NULL |  |  |
| 33 | PERCENTSINGLEFAMILY | NUMBER(19,4) | NULL |  |  |
| 34 | WEIGHTEDAVERAGELOANSIZE | NUMBER(19,4) | NULL |  |  |
| 35 | WEIGHTEDAVERAGELIFE | NUMBER(19,4) | NULL |  |  |
| 36 | AGENCY | NUMBER(1,0) | NULL |  |  |
| 37 | ASSETCOUNTRYID | NUMBER(18,0) | NULL |  |  |
| 38 | MOODYWATCHID | NUMBER(18,0) | NULL |  |  |
| 39 | SPWATCHID | NUMBER(18,0) | NULL |  |  |
| 40 | FITCHWATCHID | NUMBER(18,0) | NULL |  |  |
| 41 | SEASONINGID | NUMBER(18,0) | NULL |  |  |
| 42 | MORTGAGEFACTOR | NUMBER(25,10) | NULL |  |  |
| 43 | NUMBEROFRATINGS | NUMBER(9,0) | NULL |  |  |
| 44 | ISSUERDOMICILEID | NUMBER(18,0) | NULL |  |  |
| 45 | ISSUERINDUSTRYSECTORID | NUMBER(18,0) | NULL |  |  |
| 46 | ISSUERTYPEID | NUMBER(18,0) | NULL |  |  |
| 47 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 48 | LENDERCREDITQUALITY | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 49 | ISCONVERTIBLEBOND | NUMBER(1,0) | NULL |  |  |
| 50 | INTERNALIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 51 | NEXTCOUPONDATE | DATE | NULL |  |  |
| 52 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 53 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 54 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 55 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 56 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 57 | ISSINKABLEFUND | NUMBER(1,0) | NULL |  |  |
| 58 | ISCALLABLEBOND | NUMBER(1,0) | NULL |  |  |
| 59 | ISCOVEREDBOND | NUMBER(1,0) | NULL |  |  |
| 60 | ISPRIVATEPLACEMENT | NUMBER(1,0) | NULL |  |  |
| 61 | WEIGHTEDAVERAGEMATURITY | NUMBER(8,2) | NULL |  |  |
| 62 | ISPUTABLE | NUMBER(1,0) | NULL |  |  |
| 63 | ISBULLET | NUMBER(1,0) | NULL |  |  |
| 64 | ISCREDITLINKEDNOTES | NUMBER(1,0) | NULL |  |  |
| 65 | ISGUARANTEED | NUMBER(1,0) | NULL |  |  |
| 66 | LASTRATINGIMPORTTIMESTAMP | DATE | NULL |  |  |
| 67 | COSTOFFUNDING | NUMBER(19,2) | NULL |  |  |
| 68 | MINIMUMLOT | NUMBER(14,2) | NULL |  |  |
| 69 | LOTINCREMENT | NUMBER(14,2) | NULL |  |  |
| 70 | ISSUINGLCNUMBER | NVARCHAR2(60) | NULL |  |  |
| 71 | CONFIRMINGBANKID | NUMBER(18,0) | NULL |  |  |
| 72 | CONFIRMINGLCNUMBER | NVARCHAR2(60) | NULL |  |  |
| 73 | ADVISINGBANKID | NUMBER(18,0) | NULL |  |  |
| 74 | ADVISINGLCNUMBER | NVARCHAR2(60) | NULL |  |  |
| 75 | TICKER | NVARCHAR2(60) | NULL |  |  |
| 76 | EXCHANGEID | NUMBER(18,0) | NULL |  |  |
| 77 | MARKETCAPITALIZATION | NUMBER(16,2) | NULL |  |  |
| 78 | BETA | NUMBER(6,2) | NULL |  |  |
| 79 | SHARESOUTSTANDING | NUMBER(18,0) | NULL |  |  |
| 80 | SHARESISSUED | NUMBER(18,0) | NULL |  |  |
| 81 | UCITSCOMPLIANT | NUMBER(1,0) | NULL |  |  |
| 82 | AVERAGEVOLATILITY | NUMBER(10,4) | NULL |  |  |
| 83 | TRADINGVOLUME | NUMBER(18,0) | NULL |  |  |
| 84 | PERATIO | NUMBER(6,2) | NULL |  |  |
| 85 | INSTITUTIONALOWNERSHIPPCT | NUMBER(6,3) | NULL |  |  |
| 86 | ISOPTIONABLE | NUMBER(1,0) | NULL |  |  |
| 87 | DIVIDENDPAYABLE | NUMBER(11,2) | NULL |  |  |
| 88 | DIVIDENDCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 89 | NEXTDIVIDENDDATE | DATE | NULL |  |  |
| 90 | EXDATE | DATE | NULL |  |  |
| 91 | RECORDDATE | DATE | NULL |  |  |
| 92 | PAST52WEEKHIGH | NUMBER(17,8) | NULL |  |  |
| 93 | PAST52WEEKLOW | NUMBER(17,8) | NULL |  |  |
| 94 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## INSTRUMENTSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTSBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | INSTRUMENTIDENTIFIER | NVARCHAR2(100) | NULL |  |  |
| 4 | INSTRUMENTIDENTIFIERTYPEENUM | NUMBER(9,0) | NULL |  |  |
| 5 | INSTRUMENTIDENTIFIERTYPE | NVARCHAR2(40) | NULL |  |  |
| 6 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 7 | MATURITYDATE | DATE | NULL |  |  |
| 8 | COUPON | NUMBER(19,4) | NULL |  |  |
| 9 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 10 | CURRENCYCODE | NCHAR(6) | NULL |  |  |
| 11 | ISSUERID | NUMBER(18,0) | NULL |  |  |
| 12 | ISSUER | NVARCHAR2(500) | NULL |  |  |
| 13 | ISSUEDATE | DATE | NULL |  |  |
| 14 | AMOUNTISSUED | NUMBER(19,4) | NULL |  |  |
| 15 | AMOUNTOUTSTANDING | NUMBER(19,4) | NULL |  |  |
| 16 | INSTRUMENTTYPEID | NUMBER(18,0) | NULL |  |  |
| 17 | INSTRUMENTTYPE | NVARCHAR2(510) | NULL |  |  |
| 18 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 19 | CUSIP | NVARCHAR2(100) | NULL |  |  |
| 20 | ISIN | NVARCHAR2(100) | NULL |  |  |
| 21 | SEDOL | NVARCHAR2(100) | NULL |  |  |
| 22 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 23 | INDEXLINKED | NUMBER(1,0) | NULL |  |  |
| 24 | COUPONTYPE | NVARCHAR2(200) | NULL |  |  |
| 25 | COUPONTYPEID | NUMBER(18,0) | NULL |  |  |
| 26 | WEIGHTEDAVERAGECOUPON | NUMBER(21,6) | NULL |  |  |
| 27 | WEIGHTEDAVERAGEMATURITY | NUMBER(8,2) | NULL |  |  |
| 28 | COLLATERALTYPE | NVARCHAR2(200) | NULL |  |  |
| 29 | COLLATERALTYPEID | NUMBER(18,0) | NULL |  |  |
| 30 | INDUSTRYSECTOR | NVARCHAR2(200) | NULL |  |  |
| 31 | INDUSTRYSECTORID | NUMBER(18,0) | NULL |  |  |
| 32 | ISSUERINDUSTRYGROUP | NVARCHAR2(200) | NULL |  |  |
| 33 | ISSUERINDUSTRYGROUPID | NUMBER(18,0) | NULL |  |  |
| 34 | ISSENIOR | NUMBER(1,0) | NULL |  |  |
| 35 | DTCELIGIBLE | NUMBER(1,0) | NULL |  |  |
| 36 | PASSTHROUGH | NUMBER(1,0) | NULL |  |  |
| 37 | CREDITENHANCED | NUMBER(1,0) | NULL |  |  |
| 38 | INSTRUMENTUNDERLYINGSECTOR | NVARCHAR2(200) | NULL |  |  |
| 39 | INSTRUMENTUNDERLYINGSECTORID | NUMBER(18,0) | NULL |  |  |
| 40 | MUNICIPALSTATE | NVARCHAR2(200) | NULL |  |  |
| 41 | MUNICIPALSTATEID | NUMBER(18,0) | NULL |  |  |
| 42 | MUNICIPALREGION | NVARCHAR2(200) | NULL |  |  |
| 43 | MUNICIPALREGIONID | NUMBER(18,0) | NULL |  |  |
| 44 | BONDPURPOSE | NVARCHAR2(200) | NULL |  |  |
| 45 | BONDPURPOSEID | NUMBER(18,0) | NULL |  |  |
| 46 | FUNDSOURCE | NVARCHAR2(200) | NULL |  |  |
| 47 | FUNDSOURCEID | NUMBER(18,0) | NULL |  |  |
| 48 | WEIGHTEDAVERAGEFICO | NUMBER(19,4) | NULL |  |  |
| 49 | SECONDLIENPERCENTAGE | NUMBER(19,4) | NULL |  |  |
| 50 | WEIGHTEDAVERAGELTV | NUMBER(19,4) | NULL |  |  |
| 51 | PERCENTSINGLEFAMILY | NUMBER(19,4) | NULL |  |  |
| 52 | WEIGHTEDAVERAGELOANSIZE | NUMBER(19,4) | NULL |  |  |
| 53 | WEIGHTEDAVERAGELIFE | NUMBER(19,4) | NULL |  |  |
| 54 | AGENCY | NUMBER(1,0) | NULL |  |  |
| 55 | ASSETCOUNTRY | NVARCHAR2(200) | NULL |  |  |
| 56 | ASSETCOUNTRYID | NUMBER(18,0) | NULL |  |  |
| 57 | MOODYWATCH | NVARCHAR2(200) | NULL |  |  |
| 58 | MOODYWATCHID | NUMBER(18,0) | NULL |  |  |
| 59 | SPWATCH | NVARCHAR2(200) | NULL |  |  |
| 60 | SPWATCHID | NUMBER(18,0) | NULL |  |  |
| 61 | FITCHWATCH | NVARCHAR2(200) | NULL |  |  |
| 62 | FITCHWATCHID | NUMBER(18,0) | NULL |  |  |
| 63 | SEASONING | NVARCHAR2(200) | NULL |  |  |
| 64 | SEASONINGID | NUMBER(18,0) | NULL |  |  |
| 65 | MORTGAGEFACTOR | NUMBER(25,10) | NULL |  |  |
| 66 | NUMBEROFRATINGS | NUMBER(9,0) | NULL |  |  |
| 67 | ISSUERDOMICILE | NVARCHAR2(200) | NULL |  |  |
| 68 | ISSUERDOMICILEID | NUMBER(18,0) | NULL |  |  |
| 69 | ISSUERINDUSTRYSECTOR | NVARCHAR2(200) | NULL |  |  |
| 70 | ISSUERINDUSTRYSECTORID | NUMBER(18,0) | NULL |  |  |
| 71 | ISSUERTYPE | NVARCHAR2(100) | NULL |  |  |
| 72 | ISSUERTYPEID | NUMBER(18,0) | NULL |  |  |
| 73 | CMOABSASSETCLASS | NVARCHAR2(3000) | NULL |  |  |
| 74 | CMOABSASSETCLASSID | NVARCHAR2(3000) | NULL |  |  |
| 75 | ISCONVERTIBLEBOND | NUMBER(1,0) | NULL |  |  |
| 76 | INTERNALIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 77 | NEXTCOUPONDATE | DATE | NULL |  |  |
| 78 | ISSINKABLEFUND | NUMBER(1,0) | NULL |  |  |
| 79 | ISCALLABLEBOND | NUMBER(1,0) | NULL |  |  |
| 80 | ISCOVEREDBOND | NUMBER(1,0) | NULL |  |  |
| 81 | ISPRIVATEPLACEMENT | NUMBER(1,0) | NULL |  |  |
| 82 | ISPUTABLE | NUMBER(1,0) | NULL |  |  |
| 83 | ISGUARANTEED | NUMBER(1,0) | NULL |  |  |
| 84 | ISCREDITLINKEDNOTES | NUMBER(1,0) | NULL |  |  |
| 85 | ISBULLET | NUMBER(1,0) | NULL |  |  |
| 86 | COSTOFFUNDING | NUMBER(19,2) | NULL |  |  |
| 87 | MINIMUMLOT | NUMBER(14,2) | NULL |  |  |
| 88 | LOTINCREMENT | NUMBER(14,2) | NULL |  |  |
| 89 | PRICETERMSENUM | NUMBER(9,0) | NULL |  |  |
| 90 | PRICETERMS | NVARCHAR2(100) | NULL |  |  |
| 91 | TICKER | NVARCHAR2(60) | NULL |  |  |
| 92 | EXCHANGENAME | NVARCHAR2(200) | NULL |  |  |
| 93 | EXCHANGEID | NUMBER(18,0) | NULL |  |  |
| 94 | PAST52WEEKHIGH | NUMBER(17,8) | NULL |  |  |
| 95 | PAST52WEEKLOW | NUMBER(17,8) | NULL |  |  |
| 96 | MARKETCAPITALIZATION | NUMBER(16,2) | NULL |  |  |
| 97 | BETA | NUMBER(6,2) | NULL |  |  |
| 98 | SHARESOUTSTANDING | NUMBER(18,0) | NULL |  |  |
| 99 | SHARESISSUED | NUMBER(18,0) | NULL |  |  |
| 100 | UCITSCOMPLIANT | NUMBER(1,0) | NULL |  |  |
| 101 | AVERAGEVOLATILITY | NUMBER(10,4) | NULL |  |  |
| 102 | TRADINGVOLUME | NUMBER(18,0) | NULL |  |  |
| 103 | PERATIO | NUMBER(6,2) | NULL |  |  |
| 104 | INSTITUTIONALOWNERSHIPPCT | NUMBER(6,3) | NULL |  |  |
| 105 | ISOPTIONABLE | NUMBER(1,0) | NULL |  |  |
| 106 | DIVIDENDPAYABLE | NUMBER(11,2) | NULL |  |  |
| 107 | DIVIDENDCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 108 | NEXTDIVIDENDDATE | DATE | NULL |  |  |
| 109 | EXDATE | DATE | NULL |  |  |
| 110 | RECORDDATE | DATE | NULL |  |  |
| 111 | DIVIDENDCURRENCYCODE | NVARCHAR2(6) | NULL |  |  |
| 112 | STOCKINDEX | NVARCHAR2(3000) | NULL |  |  |
| 113 | STOCKINDEXID | NVARCHAR2(3000) | NULL |  |  |
| 114 | UUID | NVARCHAR2(100) | NULL |  |  |

## INSTRUMENTSXCMOABSASSETCLASSES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CMOABSASSETCLASSID | NUMBER(18,0) | NOT NULL |  |  |

## INSTRUMENTSXCREDITRATINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CREDITRATINGID | NUMBER(18,0) | NOT NULL |  |  |

## INSTRUMENTSXEXTDATAOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONDATAOVERRIDEID | NUMBER(18,0) | NOT NULL |  |  |

## INSTRUMENTSXSTOCKINDEXES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STOCKINDEXID | NUMBER(18,0) | NOT NULL |  |  |

## INSTRUMENTTYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTTYPENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | INSTRUMENTCLASS | NUMBER(9,0) | NULL |  |  |
| 4 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 5 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 10 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 11 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## INSTRUMENTUNDERLYINGSECTORS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTUNDERLYINGSECTORID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTUNDERLYINGSECTORNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## INSTTYPESXEXTDATAOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INSTRUMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONDATAOVERRIDEID | NUMBER(18,0) | NOT NULL |  |  |

## INTERESTCONFIGURATIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INTERESTCONFIGURATIONNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 4 | ISOTC | NUMBER(1,0) | NOT NULL |  |  |
| 5 | ISREPO | NUMBER(1,0) | NOT NULL |  |  |
| 6 | ISSECURITIESLENDING | NUMBER(1,0) | NOT NULL |  |  |
| 7 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 8 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 10 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 11 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 12 | ISDELETED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 13 | GENERATEPAYMENTS | NUMBER(1,0) | NOT NULL |  |  |
| 14 | WORKFLOWCALCULATIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |

## INTERESTCONFIGXCITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CITYID | NUMBER(18,0) | NOT NULL |  |  |

## INTERESTCONFIGXGROUPS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |

## INTERESTCONFIGXINSTRUMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |

## INTERESTMESSAGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INTERESTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ERRORTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | MESSAGETYPE | NUMBER(9,0) | NOT NULL |  |  |
| 5 | ERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 6 | TOTALCOUNT | NUMBER(9,0) | NOT NULL |  |  |

## INTERESTPAYMENTPERIODS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTPAYMENTPERIODID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | POSITIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 6 | COLLATERALMARGINTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 7 | PERIODSTART | DATE | NOT NULL |  |  |
| 8 | PERIODEND | DATE | NULL |  |  |
| 9 | NEXTPERIODEND | DATE | NULL |  |  |
| 10 | ACCRUEDINTEREST | NUMBER(19,4) | NOT NULL |  |  |
| 11 | OPENINGBALANCE | NUMBER(19,4) | NOT NULL |  |  |
| 12 | ENDINGBALANCE | NUMBER(19,4) | NOT NULL |  |  |
| 13 | MARKETINDEXID | NUMBER(18,0) | NOT NULL |  |  |
| 14 | SPREAD | NUMBER(10,6) | NOT NULL |  |  |
| 15 | DAYCOUNTCONVENTION | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 16 | CALCULATIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 17 | MANAGINGLOCATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 18 | BUSINESSLINE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 19 | CALCULATIONTIMESTAMP | DATE | NOT NULL |  |  |
| 20 | CALCULATIONSTATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 21 | CALCULATIONSTATUSMESSAGE | NVARCHAR2(510) | NULL |  |  |
| 22 | CALCULATIONSTATUSPERIODEND | DATE | NULL |  |  |
| 23 | ISADHOC | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 24 | ISPERIODEXTENDED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 25 | ACCRUEDDUETO | NUMBER(9,0) | NOT NULL | `(0)` |  |

## INTERESTPAYMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTPAYMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | PAYMENTSTATE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 5 | DUETO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 6 | ACCRUEDINTEREST | NUMBER(19,4) | NOT NULL |  |  |
| 7 | PAYMENTPREFERENCE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 8 | PERIODEND | DATE | NULL |  |  |
| 9 | CALCULATIONTIMESTAMP | DATE | NOT NULL |  |  |
| 10 | WORKFLOWSTATEID | NUMBER(18,0) | NULL |  |  |
| 11 | MANAGINGLOCATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 12 | BUSINESSLINE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 13 | TRANSITIONERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 14 | TRANSITIONSTATUS | NUMBER(9,0) | NOT NULL |  |  |
| 15 | TRANSITIONENDTIMESTAMP | DATE | NULL |  |  |
| 16 | TRANSITIONREQUESTEDTIMESTAMP | DATE | NULL |  |  |
| 17 | SENTTIMESTAMP | DATE | NULL |  |  |
| 18 | SENTSTATUS | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 19 | AGREEDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 20 | SETTLEMENTDATE | DATE | NULL |  |  |
| 21 | NEXTPERIODEND | DATE | NULL |  |  |
| 22 | AGREEDPAYMENTTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 23 | TRANSITIONEDBY | NUMBER(18,0) | NULL |  |  |
| 24 | TRANSITIONCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 25 | MOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 26 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 27 | CALCULATIONSTATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 28 | CALCULATIONSTATUSMESSAGE | NVARCHAR2(510) | NULL |  |  |
| 29 | ISADHOC | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 30 | ISPERIODEXTENDED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 31 | CALCULATIONSTATUSPERIODEND | DATE | NULL |  |  |
| 32 | ISLEGACY | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 33 | SENTSTATUSCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 34 | LASTEDITTIMESTAMP | DATE | NOT NULL |  |  |
| 35 | COLLATERALMARGINTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 36 | HELDPERIODID | NUMBER(18,0) | NULL |  |  |
| 37 | POSTEDPERIODID | NUMBER(18,0) | NULL |  |  |
| 38 | LEGACYREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 39 | APPLIESTOPOSITIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 40 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 41 | GROUPEDSUMMARYSENDSTATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 42 | GROUPEDSUMMARYSENDCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 43 | DECIMALPLACES | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 44 | ROUNDINGMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 45 | APPLYPRECISIONTO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 46 | INTERESTSTATEMENTDETAILS | BLOB | NULL |  |  |
| 47 | UUID | NVARCHAR2(100) | NULL |  |  |
| 48 | MESSAGINGCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 49 | HASMESSAGINGERROR | NUMBER(1,0) | NOT NULL | `(0)` |  |

## INTERESTRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INTERESTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | STARTDATETIME | DATE | NULL |  |  |
| 4 | ENDDATETIME | DATE | NULL |  |  |
| 5 | EXCEPTIONMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 6 | INFOMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 7 | WARNINGMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 8 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 9 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 10 | CORRELATIONID | NVARCHAR2(100) | NULL |  |  |
| 11 | REQUESTEDDATETIME | DATE | NOT NULL |  |  |
| 12 | AGREEMENTSCALCULATED | NUMBER(9,0) | NULL |  |  |
| 13 | OPENACCRUALS | NUMBER(9,0) | NULL |  |  |
| 14 | PAYMENTSGENERATED | NUMBER(9,0) | NULL |  |  |
| 15 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## INTERESTTERMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | MARKETINDEXID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | SPREAD | NUMBER(10,6) | NOT NULL | `((0))` |  |
| 6 | INTERESTCALCULATIONTYPE | NUMBER(9,0) | NOT NULL | `((4))` |  |
| 7 | HOLIDAYCALENDARID | NUMBER(18,0) | NULL |  |  |
| 8 | APPLIESTOPOSITIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 9 | APPLIESTOCOLLATERALMARGIN | NUMBER(9,0) | NOT NULL | `((0))` |  |

## INTERESTTERMSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | INTERESTTERMSBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | AGREEMENT | NVARCHAR2(510) | NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | CURRENCY | NCHAR(6) | NULL |  |  |
| 6 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 7 | MARKETINDEX | NVARCHAR2(200) | NULL |  |  |
| 8 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 9 | SPREAD | NUMBER(10,6) | NULL | `((0))` |  |
| 10 | CALCULATIONTYPE | NVARCHAR2(100) | NULL |  |  |
| 11 | CALCULATIONTYPEENUM | NUMBER(9,0) | NULL | `((4))` |  |
| 12 | HOLIDAYCALENDAR | NVARCHAR2(200) | NULL |  |  |
| 13 | HOLIDAYCALENDARID | NUMBER(18,0) | NULL |  |  |
| 14 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 15 | ISCASHELIGIBLE | NUMBER(1,0) | NULL | `((0))` |  |
| 16 | ISDUPLICATE | NUMBER(1,0) | NULL | `((0))` |  |
| 17 | APPLIESTOCOLLATERALMARGIN | NVARCHAR2(510) | NULL |  |  |
| 18 | APPLIESTOCOLLATERALMARGINENUM | NUMBER(9,0) | NULL |  |  |
| 19 | APPLIESTOPOSITIONTYPE | NVARCHAR2(500) | NULL |  |  |
| 20 | APPLIESTOPOSITIONTYPEENUM | NUMBER(9,0) | NULL |  |  |

## ISSUERTYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ISSUERTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ISSUERTYPENAME | NVARCHAR2(100) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## MAINTENANCECONFIGURATIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MAINTENANCECONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MAINTENANCECONFIGURATIONNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 4 | NUMBEROFDAYS | NUMBER(9,0) | NOT NULL |  |  |
| 5 | MAINTENANCECONFIGURATIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 6 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 10 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 11 | BATCHSIZE | NUMBER(9,0) | NOT NULL |  |  |

## MAINTENANCERECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MAINTENANCERECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MAINTENANCECONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | STARTDATETIME | DATE | NULL |  |  |
| 4 | ENDDATETIME | DATE | NULL |  |  |
| 5 | AFFECTEDRECORDSCOUNT | NUMBER(9,0) | NULL |  |  |
| 6 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 7 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 8 | CORRELATIONID | NVARCHAR2(100) | NULL |  |  |
| 9 | REQUESTEDDATETIME | DATE | NOT NULL |  |  |
| 10 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## MANUALCREATEMOVEMENTSAGA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ID | VARCHAR2(38) | NOT NULL |  |  |
| 2 | METADATA | CLOB | NOT NULL |  |  |
| 3 | DATA | CLOB | NOT NULL |  |  |
| 4 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |
| 5 | SAGATYPEVERSION | VARCHAR2(23) | NOT NULL |  |  |
| 6 | CONCURRENCY | NUMBER(9,0) | NOT NULL |  |  |
| 7 | CORR_ORIGINALCOMMANDID | NVARCHAR2(400) | NULL |  |  |

## MARGINANALYSISCONFIGURATIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINANALYSISCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINANALYSISCONFIGNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 6 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | ISDELETED | NUMBER(1,0) | NOT NULL | `((0))` |  |

## MARGINANALYSISMESSAGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINANALYSISMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ERRORTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 3 | MESSAGETYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | ERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 5 | MARGINANALYSISRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | TOTALCOUNT | NUMBER(9,0) | NOT NULL |  |  |

## MARGINANALYSISPOSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINANALYSISPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTSTATUS | NUMBER(9,0) | NOT NULL |  |  |
| 3 | MOVEMENTTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | ISELIGIBLE | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 5 | POSITIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 6 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 7 | INSTRUMENTREFERENCE | NVARCHAR2(100) | NOT NULL |  |  |
| 8 | NOTIONAL | NUMBER(19,4) | NOT NULL |  |  |
| 9 | AGREEMENTCURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 10 | AGREEMENTCURRENCYCODE | NCHAR(6) | NOT NULL |  |  |
| 11 | MARKETVALUEAGREEMENTCURRENCY | NUMBER(19,4) | NOT NULL |  |  |
| 12 | DIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 13 | VALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 14 | INSTRUMENTDESCRIPTION | NVARCHAR2(4000) | NULL |  |  |
| 15 | PRICESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 16 | PRICESOURCENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 17 | VALUATIONQUOTE | NUMBER(9,0) | NULL |  |  |
| 18 | PRICEDATE | DATE | NULL |  |  |
| 19 | MARGINCALCULATIONRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 20 | INSTRUMENTFXRATE | NUMBER(21,6) | NULL |  |  |
| 21 | INSTRUMENTFXRATEDATE | DATE | NULL |  |  |
| 22 | AGREEMENTFXRATE | NUMBER(21,6) | NULL |  |  |
| 23 | AGREEMENTFXRATEDATE | DATE | NULL |  |  |
| 24 | ELIGIBLECOLLATERAL | NVARCHAR2(510) | NULL |  |  |
| 25 | MARKETVALUESYSTEMCURRENCY | NUMBER(19,4) | NOT NULL |  |  |
| 26 | INSTRUMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 27 | INSTRUMENTISSUERID | NUMBER(18,0) | NULL |  |  |
| 28 | INSTRUMENTCURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 29 | INSTRUMENTCURRENCYCODE | NCHAR(6) | NOT NULL |  |  |
| 30 | COLLATERALMARGINTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 31 | TRIPARTYCUSTODIANNAME | NVARCHAR2(510) | NULL |  |  |
| 32 | MARKETVALUEINSTRUMENTCURRENCY | NUMBER(19,4) | NOT NULL |  |  |
| 33 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 34 | PHMARKETVALUEAGREEMENTCCY | NUMBER(19,4) | NOT NULL |  |  |
| 35 | PHMARKETVALUESYSTEMCCY | NUMBER(19,4) | NOT NULL |  |  |
| 36 | PHMARKETVALUEINSTRUMENTCCY | NUMBER(19,4) | NOT NULL |  |  |

## MARGINANALYSISRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINANALYSISRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINANALYSISCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 3 | STARTDATETIME | DATE | NULL |  |  |
| 4 | ENDDATETIME | DATE | NULL |  |  |
| 5 | EXCEPTIONMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 6 | INFOMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 7 | WARNINGMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 8 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 9 | CORRELATIONID | NVARCHAR2(100) | NULL |  |  |
| 10 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 11 | REQUESTEDDATETIME | DATE | NOT NULL |  |  |
| 12 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 13 | REPOMARGINTERMTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 14 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## MARGINCALCULATIONRESULTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCALCULATIONRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CALCULATIONDATE | DATE | NOT NULL |  |  |
| 3 | CALCULATIONTYPE | NUMBER(9,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 5 | AGREEMENTTYPENAME | NVARCHAR2(200) | NULL |  |  |
| 6 | PRINCIPALMANAGINGLOCATIONNAME | NVARCHAR2(200) | NULL |  |  |
| 7 | NETREQUIREMENT | NUMBER(19,4) | NULL |  |  |
| 8 | NETEXPOSURE | NUMBER(19,4) | NULL |  |  |
| 9 | DELIVERTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 10 | DELIVERTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 11 | RETURNTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 12 | RETURNTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 13 | THRESHOLD | NUMBER(18,0) | NULL |  |  |
| 14 | MINIMUMTRANSFERAMOUNT | NUMBER(18,0) | NULL |  |  |
| 15 | ROUNDINGMETHOD | NUMBER(9,0) | NULL |  |  |
| 16 | CREDITSUPPORTAMOUNT | NUMBER(19,4) | NULL |  |  |
| 17 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 18 | MARGINRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 19 | MARGINTERMTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 20 | ROUNDINGAMOUNT | NUMBER(18,0) | NULL |  |  |
| 21 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 22 | INCLUDESTRADEDAYS | NUMBER(9,0) | NULL |  |  |
| 23 | EXCLUDESTRADEDAYS | NUMBER(9,0) | NULL |  |  |
| 24 | AGREEMENTCURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 25 | NETREQUIREMENTFAVOROF | NUMBER(9,0) | NULL |  |  |
| 26 | NETEXPOSUREFAVOROF | NUMBER(9,0) | NULL |  |  |
| 27 | CREDITSUPPORTAMOUNTFAVOROF | NUMBER(9,0) | NULL |  |  |
| 28 | ISFULLRETURNPRINCIPAL | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 29 | ISFULLRETURNCOUNTERPARTY | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 30 | AGREEMENTCURRENCYFXRATE | NUMBER(21,6) | NULL |  |  |
| 31 | PRINTRADEADDITIONALMARGIN | NUMBER(19,4) | NULL |  |  |
| 32 | CPTYTRADEADDITIONALMARGIN | NUMBER(19,4) | NULL |  |  |
| 33 | PRINAGREEMENTADDITIONALMARGIN | NUMBER(19,4) | NULL |  |  |
| 34 | CPTYAGREEMENTADDITIONALMARGIN | NUMBER(19,4) | NULL |  |  |
| 35 | PRINTRADELOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 36 | CPTYTRADELOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 37 | PRINAGREEMENTLOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 38 | CPTYAGREEMENTLOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 39 | VARIATIONCOLLATERALPOSTED | NUMBER(19,4) | NULL |  |  |
| 40 | VARIATIONCOLLATERALHELD | NUMBER(19,4) | NULL |  |  |
| 41 | LOCKUPCOLLATERALPOSTED | NUMBER(19,4) | NULL |  |  |
| 42 | LOCKUPCOLLATERALHELD | NUMBER(19,4) | NULL |  |  |
| 43 | LOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 44 | LOCKUPCALCULATIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 45 | LOCKUPMARGINDUETO | NUMBER(9,0) | NOT NULL |  |  |
| 46 | TRADECOUNT | NUMBER(9,0) | NULL |  |  |
| 47 | ANALYZED | NUMBER(1,0) | NULL | `((0))` |  |
| 48 | VALUATIONDATE | DATE | NULL |  |  |
| 49 | COUNTERPARTYMANAGINGLOCATION | NVARCHAR2(200) | NULL |  |  |
| 50 | PRIORAGREEDDELIVERTOPRIN | NUMBER(19,4) | NULL |  |  |
| 51 | PRIORAGREEDDELIVERTOCPTY | NUMBER(19,4) | NULL |  |  |
| 52 | PRIORAGREEDRETURNTOPRIN | NUMBER(19,4) | NULL |  |  |
| 53 | PRIORAGREEDRETURNTOCPTY | NUMBER(19,4) | NULL |  |  |
| 54 | PRIORAGREEDLOCKUPDELIVERTOCPTY | NUMBER(19,4) | NULL |  |  |
| 55 | PRIORAGREEDLOCKUPDELIVERTOPRIN | NUMBER(19,4) | NULL |  |  |
| 56 | INTRANSITDELIVERTOPRIN | NUMBER(19,4) | NULL |  |  |
| 57 | INTRANSITDELIVERTOCPTY | NUMBER(19,4) | NULL |  |  |
| 58 | INTRANSITRETURNTOPRIN | NUMBER(19,4) | NULL |  |  |
| 59 | INTRANSITRETURNTOCPTY | NUMBER(19,4) | NULL |  |  |
| 60 | INTRANSITLOCKUPDELIVERTOCPTY | NUMBER(19,4) | NULL |  |  |
| 61 | INTRANSITLOCKUPDELIVERTOPRIN | NUMBER(19,4) | NULL |  |  |
| 62 | SETTLEDHELD | NUMBER(19,4) | NULL |  |  |
| 63 | SETTLEDPOSTED | NUMBER(19,4) | NULL |  |  |
| 64 | SETTLEDLOCKUPHELD | NUMBER(19,4) | NULL |  |  |
| 65 | SETTLEDLOCKUPPOSTED | NUMBER(19,4) | NULL |  |  |
| 66 | NONVALUATIONREASON | NUMBER(9,0) | NULL |  |  |
| 67 | ACCRUEDHELD | NUMBER(19,4) | NULL |  |  |
| 68 | ACCRUEDPOSTED | NUMBER(19,4) | NULL |  |  |
| 69 | ACCRUEDLOCKUPHELD | NUMBER(19,4) | NULL |  |  |
| 70 | ACCRUEDLOCKUPPOSTED | NUMBER(19,4) | NULL |  |  |
| 71 | AGREEMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 72 | BUSINESSLINE | NUMBER(9,0) | NOT NULL |  |  |
| 73 | PRINCIPALMANAGINGLOCATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 74 | PRINCIPALID | NUMBER(18,0) | NOT NULL |  |  |
| 75 | COUNTERPARTYID | NUMBER(18,0) | NOT NULL |  |  |
| 76 | TIMEZONE | NVARCHAR2(510) | NOT NULL |  |  |
| 77 | NOACTIONDETAIL | NVARCHAR2(500) | NULL |  |  |
| 78 | AGREEMENTSTATUS | NUMBER(9,0) | NOT NULL |  |  |
| 79 | AGREEMENTSTATUSDETAIL | NVARCHAR2(500) | NULL |  |  |
| 80 | POSTINGPARTY | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 81 | COLLATERALALLOCATIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 82 | PRIORAGREEDLOCKUPRETURNTOPRIN | NUMBER(19,4) | NULL |  |  |
| 83 | PRIORAGREEDLOCKUPRETURNTOCPTY | NUMBER(19,4) | NULL |  |  |
| 84 | INTRANSITLOCKUPRETURNTOPRIN | NUMBER(19,4) | NULL |  |  |
| 85 | INTRANSITLOCKUPRETURNTOCPTY | NUMBER(19,4) | NULL |  |  |
| 86 | LOCKUPMARGINDELIVERTOPRIN | NUMBER(19,4) | NULL |  |  |
| 87 | LOCKUPMARGINDELIVERTOCPTY | NUMBER(19,4) | NULL |  |  |
| 88 | LOCKUPMARGINRETURNTOPRIN | NUMBER(19,4) | NULL |  |  |
| 89 | LOCKUPMARGINRETURNTOCPTY | NUMBER(19,4) | NULL |  |  |
| 90 | LOCKUPMINIMUMTRANSFERAMOUNT | NUMBER(18,0) | NULL |  |  |
| 91 | LOCKUPROUNDINGAMOUNT | NUMBER(18,0) | NULL |  |  |
| 92 | LOCKUPROUNDINGMETHOD | NUMBER(9,0) | NULL |  |  |
| 93 | USEMTAONLOCKUPMARGINTERMS | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 94 | USEROUNDINGONLOCKUPMARGINTERMS | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 95 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 96 | AGREEMENTGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 97 | FXRATESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 98 | CENTRALCOUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 99 | LOCKUPTHRESHOLD | NUMBER(18,0) | NULL |  |  |
| 100 | AGREEMENTCOLLATERALMARGINTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 101 | LOCKUPISFULLRETURNTOCPTY | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 102 | LOCKUPISFULLRETURNTOPRIN | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 103 | IMRAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 104 | IMRAWDUETO | NUMBER(9,0) | NULL |  |  |
| 105 | IARAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 106 | IARAWDUETO | NUMBER(9,0) | NULL |  |  |
| 107 | IMIATIMESTAMPUTC | DATE | NULL |  |  |
| 108 | COUNTERPARTYTIMEZONE | NVARCHAR2(510) | NULL |  |  |

## MARGINCALLS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCALLID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CALCULATIONDATE | DATE | NOT NULL |  |  |
| 3 | CALCULATIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | VALUATIONDATE | DATE | NULL |  |  |
| 5 | NOACTIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 6 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 8 | AGREEMENTTYPENAME | NVARCHAR2(200) | NULL |  |  |
| 9 | PRINCIPALMANAGINGLOCATIONNAME | NVARCHAR2(200) | NULL |  |  |
| 10 | AGREEMENTCURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 11 | TOTALCOLLATERALHELD | NUMBER(19,4) | NULL |  |  |
| 12 | TOTALCOLLATERALPOSTED | NUMBER(19,4) | NULL |  |  |
| 13 | NETREQUIREMENT | NUMBER(19,4) | NULL |  |  |
| 14 | NETEXPOSURE | NUMBER(19,4) | NULL |  |  |
| 15 | DELIVERTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 16 | DELIVERTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 17 | RETURNTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 18 | RETURNTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 19 | NETTEDADDITIONALMARGIN | NUMBER(19,4) | NULL |  |  |
| 20 | NETTEDADDITIONALMARGINDUETO | NUMBER(9,0) | NOT NULL |  |  |
| 21 | THRESHOLD | NUMBER(18,0) | NULL |  |  |
| 22 | MINIMUMTRANSFERAMOUNT | NUMBER(18,0) | NULL |  |  |
| 23 | ROUNDINGMETHOD | NUMBER(9,0) | NOT NULL |  |  |
| 24 | MARGINTERMTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 25 | ROUNDINGAMOUNT | NUMBER(18,0) | NULL |  |  |
| 26 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 27 | EXCLUDESTRADEDAYS | NUMBER(9,0) | NOT NULL |  |  |
| 28 | NETREQUIREMENTFAVOROF | NUMBER(9,0) | NOT NULL |  |  |
| 29 | NETEXPOSUREFAVOROF | NUMBER(9,0) | NOT NULL |  |  |
| 30 | CALLTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 31 | CALLAMOUNTFAVOROF | NUMBER(9,0) | NOT NULL |  |  |
| 32 | ISFULLRETURNPRINCIPAL | NUMBER(1,0) | NOT NULL |  |  |
| 33 | ISFULLRETURNCOUNTERPARTY | NUMBER(1,0) | NOT NULL |  |  |
| 34 | LOCKUPCALCULATIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 35 | LOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 36 | LOCKUPMARGINDUETO | NUMBER(9,0) | NOT NULL |  |  |
| 37 | VARIATIONCOLLATERALHELD | NUMBER(19,4) | NULL |  |  |
| 38 | VARIATIONCOLLATERALPOSTED | NUMBER(19,4) | NULL |  |  |
| 39 | VARIATIONASSOCIATEDCALLAMOUNT | NUMBER(19,4) | NULL |  |  |
| 40 | VARIATIONASSOCIATEDCALLTYPE | NUMBER(9,0) | NULL |  |  |
| 41 | WORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 42 | TRANSITIONSTATUS | NUMBER(9,0) | NOT NULL |  |  |
| 43 | TRANSITIONCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 44 | SENTTIMESTAMP | DATE | NULL |  |  |
| 45 | TRANSITIONREQUESTEDTIMESTAMP | DATE | NULL |  |  |
| 46 | TRANSITIONENDTIMESTAMP | DATE | NULL |  |  |
| 47 | TRANSITIONERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 48 | MARGINCALCULATIONRESULTID | NUMBER(18,0) | NULL |  |  |
| 49 | NEWCALCULATIONRESULTID | NUMBER(18,0) | NULL |  |  |
| 50 | ISCANCELLED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 51 | COUNTERPARTYMANAGINGLOCATION | NVARCHAR2(200) | NULL |  |  |
| 52 | NOTIFICATIONTIME | DATE | NULL |  |  |
| 53 | AGREEDTOTAL | NUMBER(19,4) | NULL |  |  |
| 54 | AGREEDRETURN | NUMBER(19,4) | NULL |  |  |
| 55 | AGREEDDELIVER | NUMBER(19,4) | NULL |  |  |
| 56 | PRIORAGREEDDELIVERTOPRIN | NUMBER(19,4) | NULL |  |  |
| 57 | PRIORAGREEDDELIVERTOCPTY | NUMBER(19,4) | NULL |  |  |
| 58 | PRIORAGREEDRETURNTOPRIN | NUMBER(19,4) | NULL |  |  |
| 59 | PRIORAGREEDRETURNTOCPTY | NUMBER(19,4) | NULL |  |  |
| 60 | PRIORAGREEDLOCKUPDELIVERTOCPTY | NUMBER(19,4) | NULL |  |  |
| 61 | PRIORAGREEDLOCKUPDELIVERTOPRIN | NUMBER(19,4) | NULL |  |  |
| 62 | AGREEDLOCKUPDELIVER | NUMBER(19,4) | NULL |  |  |
| 63 | INTRANSITDELIVERTOPRIN | NUMBER(19,4) | NULL |  |  |
| 64 | INTRANSITDELIVERTOCPTY | NUMBER(19,4) | NULL |  |  |
| 65 | INTRANSITRETURNTOPRIN | NUMBER(19,4) | NULL |  |  |
| 66 | INTRANSITRETURNTOCPTY | NUMBER(19,4) | NULL |  |  |
| 67 | INTRANSITLOCKUPDELIVERTOCPTY | NUMBER(19,4) | NULL |  |  |
| 68 | INTRANSITLOCKUPDELIVERTOPRIN | NUMBER(19,4) | NULL |  |  |
| 69 | HELDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 70 | POSTEDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 71 | SETTLEDHELD | NUMBER(19,4) | NULL |  |  |
| 72 | SETTLEDPOSTED | NUMBER(19,4) | NULL |  |  |
| 73 | SETTLEDLOCKUPHELD | NUMBER(19,4) | NULL |  |  |
| 74 | SETTLEDLOCKUPPOSTED | NUMBER(19,4) | NULL |  |  |
| 75 | DISPUTEDATE | DATE | NULL |  |  |
| 76 | ISCOMPLETE | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 77 | COUNTERPARTYCALLAMOUNT | NUMBER(19,4) | NULL |  |  |
| 78 | DISPUTEAMOUNT | NUMBER(19,4) | NULL |  |  |
| 79 | TRANSITIONEDBY | NUMBER(18,0) | NULL |  |  |
| 80 | MOVEMENTSTOTALMARKETVALUE | NUMBER(19,4) | NULL |  |  |
| 81 | VALUATIONAGENT | NUMBER(9,0) | NOT NULL |  |  |
| 82 | REVIEWEDBY | NUMBER(18,0) | NULL |  |  |
| 83 | REVIEWEDBYTIMESTAMP | DATE | NULL |  |  |
| 84 | ACCRUEDHELD | NUMBER(19,4) | NULL |  |  |
| 85 | ACCRUEDPOSTED | NUMBER(19,4) | NULL |  |  |
| 86 | ACCRUEDLOCKUPHELD | NUMBER(19,4) | NULL |  |  |
| 87 | ACCRUEDLOCKUPPOSTED | NUMBER(19,4) | NULL |  |  |
| 88 | ISWAIVED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 89 | AGREEMENTCURRENCYFXRATE | NUMBER(21,6) | NULL |  |  |
| 90 | AGREEMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 91 | BUSINESSLINE | NUMBER(9,0) | NOT NULL |  |  |
| 92 | PRINCIPALMANAGINGLOCATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 93 | ACTIVEEXPIRYTIMESTAMP | DATE | NULL |  |  |
| 94 | PRINCIPALID | NUMBER(18,0) | NOT NULL |  |  |
| 95 | COUNTERPARTYID | NUMBER(18,0) | NOT NULL |  |  |
| 96 | TIMEZONE | NVARCHAR2(510) | NOT NULL |  |  |
| 97 | LASTEDITTIMESTAMP | DATE | NOT NULL |  |  |
| 98 | DISPUTECOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 99 | NOACTIONDETAIL | NVARCHAR2(500) | NULL |  |  |
| 100 | AGREEMENTSTATUS | NUMBER(9,0) | NOT NULL |  |  |
| 101 | AGREEMENTSTATUSDETAIL | NVARCHAR2(500) | NULL |  |  |
| 102 | POSTINGPARTY | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 103 | COLLATERALMARGINTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 104 | LOCKUPMARGINRETURN | NUMBER(19,4) | NULL |  |  |
| 105 | PRIORAGREEDLOCKUPRETURNTOPRIN | NUMBER(19,4) | NULL |  |  |
| 106 | PRIORAGREEDLOCKUPRETURNTOCPTY | NUMBER(19,4) | NULL |  |  |
| 107 | INTRANSITLOCKUPRETURNTOPRIN | NUMBER(19,4) | NULL |  |  |
| 108 | INTRANSITLOCKUPRETURNTOCPTY | NUMBER(19,4) | NULL |  |  |
| 109 | AGREEDLOCKUPRETURN | NUMBER(19,4) | NULL |  |  |
| 110 | COLLATERALALLOCATIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 111 | LOCKUPCOLLATERALHELD | NUMBER(19,4) | NULL |  |  |
| 112 | LOCKUPCOLLATERALPOSTED | NUMBER(19,4) | NULL |  |  |
| 113 | LOCKUPDELIVERTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 114 | LOCKUPDELIVERTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 115 | LOCKUPRETURNTOPRINCIPAL | NUMBER(19,4) | NULL |  |  |
| 116 | LOCKUPRETURNTOCOUNTERPARTY | NUMBER(19,4) | NULL |  |  |
| 117 | LOCKUPASSOCIATEDCALLTYPE | NUMBER(9,0) | NULL |  |  |
| 118 | LOCKUPASSOCIATEDCALLAMOUNT | NUMBER(19,4) | NULL |  |  |
| 119 | DISPUTECATEGORY | NVARCHAR2(2000) | NULL |  |  |
| 120 | WAIVECATEGORY | NVARCHAR2(2000) | NULL |  |  |
| 121 | USEMTAONLOCKUPMARGINTERMS | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 122 | USEROUNDINGONLOCKUPMARGINTERMS | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 123 | LOCKUPMINIMUMTRANSFERAMOUNT | NUMBER(18,0) | NULL |  |  |
| 124 | LOCKUPROUNDINGAMOUNT | NUMBER(18,0) | NULL |  |  |
| 125 | LOCKUPROUNDINGMETHOD | NUMBER(9,0) | NULL |  |  |
| 126 | DISPUTESTATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 127 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 128 | AGREEMENTGROUPNAME | NVARCHAR2(510) | NULL |  |  |
| 129 | GROUPCALLSHEETSENDSTATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 130 | GROUPCALLSHEETSENDERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 131 | FXRATESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 132 | WAIVEDBY | NUMBER(18,0) | NULL |  |  |
| 133 | WAIVEDTIMESTAMP | DATE | NULL |  |  |
| 134 | CLEARINGCLIENTID | NUMBER(18,0) | NULL |  |  |
| 135 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 136 | IMPORTWARNING | NVARCHAR2(1000) | NULL |  |  |
| 137 | COLLATERALHELDPERCCP | NUMBER(19,4) | NULL |  |  |
| 138 | COLLATERALPOSTEDPERCCP | NUMBER(19,4) | NULL |  |  |
| 139 | LOCKUPMARGINAMOUNTPERCCP | NUMBER(19,4) | NULL |  |  |
| 140 | NETEXPOSUREAMOUNTPERCCP | NUMBER(19,4) | NULL |  |  |
| 141 | LOCKUPMARGINAMOUNTPERCCPDUETO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 142 | NETEXPOSUREAMOUNTPERCCPFAVOROF | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 143 | CENTRALCOUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 144 | LOCKUPTHRESHOLD | NUMBER(18,0) | NULL |  |  |
| 145 | CALLAMOUNT | NUMBER(19,2) | NULL |  |  |
| 146 | SENTGROUPEDCOLLNOTICETIMESTAMP | DATE | NULL |  |  |
| 147 | CALLAMOUNTINSYSTEMCURRENCY | NUMBER(19,2) | NULL |  |  |
| 148 | COUNTERPARTYCALLTYPE | NUMBER(9,0) | NULL |  |  |
| 149 | ISINTRADAY | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 150 | PREVIOUSCALLAMOUNT | NUMBER(19,2) | NULL |  |  |
| 151 | PREVIOUSAGREEMENTCCYID | NUMBER(18,0) | NULL |  |  |
| 152 | PREVIOUSCALLTYPE | NUMBER(9,0) | NULL |  |  |
| 153 | ISREPLACEMENT | NUMBER(18,0) | NOT NULL | `(0)` |  |
| 154 | ASSOCIATEDPARTIALAGREEID | NUMBER(18,0) | NULL |  |  |
| 155 | REQUIREDAPPROVALLEVEL | NUMBER | NOT NULL |  |  |
| 156 | EXTERNALID | NVARCHAR2(100) | NULL |  |  |
| 157 | ISSUBSCRIBED | NUMBER(1,0) | NOT NULL |  |  |
| 158 | ISAUTOAPPROVABLE | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 159 | HASAUTOAPPROVALEXCEPTIONS | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 160 | HASAUTOAPPROVALOVERRIDES | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 161 | MESSAGINGCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 162 | HASMESSAGINGERROR | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 163 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `(1)` |  |
| 164 | IMRAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 165 | IMRAWDUETO | NUMBER(9,0) | NULL |  |  |
| 166 | IARAWEXPOSURE | NUMBER(21,6) | NULL |  |  |
| 167 | IARAWDUETO | NUMBER(9,0) | NULL |  |  |
| 168 | IMIATIMESTAMPUTC | DATE | NULL |  |  |
| 169 | COUNTERPARTYTIMEZONE | NVARCHAR2(510) | NULL |  |  |
| 170 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## MARGINCALLSAGA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ID | VARCHAR2(38) | NOT NULL |  |  |
| 2 | METADATA | CLOB | NOT NULL |  |  |
| 3 | DATA | CLOB | NOT NULL |  |  |
| 4 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |
| 5 | SAGATYPEVERSION | VARCHAR2(23) | NOT NULL |  |  |
| 6 | CONCURRENCY | NUMBER(9,0) | NOT NULL |  |  |
| 7 | CORR_ORIGINALCOMMANDID | NVARCHAR2(400) | NULL |  |  |

## MARGINCALLSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCALLSBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | PRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 4 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 5 | COUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 6 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 7 | CLEARINGCLIENT | NVARCHAR2(510) | NULL |  |  |
| 8 | CLEARINGCLIENTID | NUMBER(18,0) | NULL |  |  |
| 9 | MARGINTYPE | NVARCHAR2(510) | NULL |  |  |
| 10 | MARGINTYPEENUM | NUMBER(9,0) | NULL |  |  |
| 11 | CALLAMOUNT | NUMBER(19,4) | NULL |  |  |
| 12 | CALLTYPE | NVARCHAR2(510) | NULL |  |  |
| 13 | CALLTYPEENUM | NUMBER(9,0) | NULL |  |  |
| 14 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 15 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 16 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 17 | LOCKUPAMOUNT | NUMBER(19,4) | NULL |  |  |
| 18 | COLLATERALHELD | NUMBER(19,4) | NULL |  |  |
| 19 | COLLATERALPOSTED | NUMBER(19,4) | NULL |  |  |
| 20 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |

## MARGINCALLTRANSITIONHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCALLTRANSITIONHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINCALLID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | FROMWORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | TOWORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | TRANSITIONDATE | DATE | NOT NULL |  |  |
| 6 | TRANSITIONEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | TRANSITIONCOMMENT | NVARCHAR2(1000) | NULL |  |  |

## MARGINCONFIGURATIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINCONFIGURATIONNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 4 | ISREPO | NUMBER(1,0) | NOT NULL |  |  |
| 5 | REPOPARAMETER | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 6 | ISSECURITIESLENDING | NUMBER(1,0) | NOT NULL |  |  |
| 7 | SECURITIESLENDINGPARAMETER | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 8 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 10 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 11 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 12 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 13 | ISDELETED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 14 | ISOTC | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 15 | WORKFLOWCALCULATIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |

## MARGINCONFIGURATIONXAGREEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |

## MARGINCONFIGURATIONXCITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MANAGINGLOCATIONID | NUMBER(18,0) | NOT NULL |  |  |

## MARGINCONFIGURATIONXPRINCIPALS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRINCIPALID | NUMBER(18,0) | NOT NULL |  |  |

## MARGINCONFIGXGROUPS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |

## MARGINCREATEMOVEMENTSAGA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ID | VARCHAR2(38) | NOT NULL |  |  |
| 2 | METADATA | CLOB | NOT NULL |  |  |
| 3 | DATA | CLOB | NOT NULL |  |  |
| 4 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |
| 5 | SAGATYPEVERSION | VARCHAR2(23) | NOT NULL |  |  |
| 6 | CONCURRENCY | NUMBER(9,0) | NOT NULL |  |  |
| 7 | CORR_ORIGINALCOMMANDID | NVARCHAR2(400) | NULL |  |  |

## MARGINMESSAGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ERRORTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 3 | MESSAGETYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | ERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 5 | MARGINRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 7 | TOTALCOUNT | NUMBER(9,0) | NOT NULL |  |  |

## MARGINRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STARTDATETIME | DATE | NULL |  |  |
| 3 | ENDDATETIME | DATE | NULL |  |  |
| 4 | AGREEMENTCALCULATEDCOUNT | NUMBER(9,0) | NULL |  |  |
| 5 | EXCEPTIONMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 6 | INFOMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 7 | WARNINGMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 8 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 9 | CORRELATIONID | NVARCHAR2(100) | NULL |  |  |
| 10 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 11 | REQUESTEDDATETIME | DATE | NOT NULL |  |  |
| 12 | MARGINCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 13 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 14 | REPOMARGINTERMTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 15 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## MARGINTERMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | DELIVERROUNDINGMETHOD | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 3 | RETURNROUNDINGMETHOD | NUMBER(9,0) | NOT NULL | `((2))` |  |
| 4 | THRESHOLD | NUMBER(19,6) | NULL |  |  |
| 5 | MARGINTERMTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 6 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 7 | ISTHRESHOLDRATINGSBASED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 8 | ISMTARATINGSBASED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 9 | ISROUNDINGRATINGSBASED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 10 | ALLRATINGSREQUIRED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 11 | RATINGDISPUTEMETHOD | NUMBER(9,0) | NULL | `((0))` |  |
| 12 | REFERENCEAGENCYID | NUMBER(18,0) | NULL |  |  |
| 13 | ISADDITIONALRATINGSBASED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 14 | ISLOCKUPRATINGSBASED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 15 | DEBTSTRUCTURE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 16 | OVERRIDECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 17 | MINIMUMTRANSFERAMOUNTMETHOD | NUMBER(9,0) | NOT NULL |  |  |
| 18 | THRESHOLDMETHOD | NUMBER(9,0) | NULL |  |  |
| 19 | ROUNDINGAMOUNTMETHOD | NUMBER(9,0) | NOT NULL |  |  |
| 20 | DELIVERMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NOT NULL |  |  |
| 21 | RETURNMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NOT NULL |  |  |
| 22 | DELIVERROUNDINGAMOUNT | NUMBER(19,6) | NOT NULL |  |  |
| 23 | RETURNROUNDINGAMOUNT | NUMBER(19,6) | NOT NULL |  |  |

## MARGINTERMSBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINTERMSBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | MINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 5 | ROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 6 | DELIVERROUNDINGMETHOD | NVARCHAR2(510) | NULL |  |  |
| 7 | DELIVERROUNDINGMETHODENUM | NUMBER(9,0) | NULL |  |  |
| 8 | RETURNROUNDINGMETHOD | NVARCHAR2(510) | NULL |  |  |
| 9 | RETURNROUNDINGMETHODENUM | NUMBER(9,0) | NULL |  |  |
| 10 | THRESHOLD | NUMBER(19,6) | NULL |  |  |
| 11 | MARGINTERMTYPE | NVARCHAR2(510) | NULL |  |  |
| 12 | MARGINTERMTYPEENUM | NUMBER(9,0) | NULL |  |  |
| 13 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 14 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 15 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 16 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 17 | MINIMUMTRANSFERAMOUNTMETHOD | NVARCHAR2(100) | NULL |  |  |
| 18 | MTAMETHODENUM | NUMBER(9,0) | NULL |  |  |
| 19 | THRESHOLDMETHOD | NVARCHAR2(100) | NULL |  |  |
| 20 | THRESHOLDMETHODENUM | NUMBER(9,0) | NULL |  |  |
| 21 | ROUNDINGAMOUNTMETHOD | NVARCHAR2(100) | NULL |  |  |
| 22 | ROUNDINGAMOUNTMETHODENUM | NUMBER(9,0) | NULL |  |  |
| 23 | DELIVERMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 24 | RETURNMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 25 | DELIVERROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 26 | RETURNROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |

## MARGINTERMSXRATINGAGENCIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RATINGAGENCYID | NUMBER(18,0) | NOT NULL |  |  |

## MARGINTRANSITIONSAGA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ID | VARCHAR2(38) | NOT NULL |  |  |
| 2 | METADATA | CLOB | NOT NULL |  |  |
| 3 | DATA | CLOB | NOT NULL |  |  |
| 4 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |
| 5 | SAGATYPEVERSION | VARCHAR2(23) | NOT NULL |  |  |
| 6 | CONCURRENCY | NUMBER(9,0) | NOT NULL |  |  |
| 7 | CORR_ORIGINALCOMMANDID | NVARCHAR2(400) | NULL |  |  |

## MARKETINDEXES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARKETINDEXID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARKETINDEXNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | MARKETINDEXDESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 4 | DAYCOUNTCONVENTION | NUMBER(9,0) | NOT NULL |  |  |
| 5 | MARKETINDEXALIAS | NVARCHAR2(510) | NULL |  |  |
| 6 | MINTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |
| 7 | MAXTOLERANCEAMOUNT | NUMBER(14,5) | NULL |  |  |
| 8 | PERCENTTOLERANCE | NUMBER(14,5) | NULL |  |  |
| 9 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 10 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 11 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 12 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 13 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 14 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## MARKETINDEXRATES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARKETINDEXRATEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARKETINDEXID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | RATE | NUMBER(9,6) | NOT NULL |  |  |
| 4 | RATEDATE | DATE | NOT NULL |  |  |

## MARKETINDEXRATESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARKETINDEXRATESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARKETINDEXRATEID | NUMBER(18,0) | NULL |  |  |
| 3 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 4 | INDEXNAME | NVARCHAR2(200) | NULL |  |  |
| 5 | RATE | NUMBER(9,6) | NULL |  |  |
| 6 | RATEDATE | DATE | NULL |  |  |
| 7 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 8 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |

## MISMATCHREASONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MISMATCHREASONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRINVALUES | NVARCHAR2(510) | NULL |  |  |
| 3 | CPTYVALUES | NVARCHAR2(510) | NULL |  |  |
| 4 | INTERESTPAYMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | ISACTIVE | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 6 | WARNINGS | VARCHAR2(500) | NULL |  |  |

## MOVEMENTCONCENTRATIONBREACHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTCONCENTRATIONBREACHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | RULENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 4 | RULEDESCRIPTION | NVARCHAR2(4000) | NOT NULL |  |  |
| 5 | REASON | NVARCHAR2(1000) | NOT NULL |  |  |

## MOVEMENTELIGIBILITYBREACHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTELIGIBILITYBREACHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | RULENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 4 | REASON | NVARCHAR2(1000) | NOT NULL |  |  |
| 5 | INSTRUMENTIDENTIFER | NVARCHAR2(100) | NULL |  |  |

## MOVEMENTGROUPS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTVERIFICATIONRECORDID | NUMBER(18,0) | NULL |  |  |
| 3 | MOVEMENTSTATE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | MOVEMENTGROUPIDENTIFIER | NVARCHAR2(510) | NOT NULL |  |  |
| 6 | REFERENCEIDENTIFIER | NVARCHAR2(510) | NULL |  |  |
| 7 | MOVEMENTGROUPCOMMENT | NVARCHAR2(4000) | NULL |  |  |
| 8 | AFFECTEDPOSITION | NUMBER(9,0) | NOT NULL |  |  |
| 9 | ISLEGACY | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 10 | COLLATERALMARGINTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |

## MOVEMENTHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ROOTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | PARENTMOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | NOTIONAL | NUMBER(19,4) | NOT NULL |  |  |
| 6 | SETTLEMENTDATE | DATE | NOT NULL |  |  |
| 7 | REASON | NVARCHAR2(500) | NULL |  |  |
| 8 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 10 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 11 | MOVEMENTSTATUS | NUMBER(9,0) | NOT NULL |  |  |
| 12 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 13 | REQUIREDAPPROVALLEVEL | NUMBER | NOT NULL |  |  |
| 14 | ISPENDINGCANCELLATIONAPPROVAL | NUMBER(1,0) | NOT NULL |  |  |

## MOVEMENTORDISTRIBUTIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTID | NUMBER | NULL |  |  |
| 2 | DISTRIBUTIONID | NUMBER | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 5 | SETTLEMENTDATE | DATE | NULL |  |  |
| 6 | STATUS | NUMBER(9,0) | NULL |  |  |
| 7 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 8 | ISPENDINGCANCELLATIONAPPROVAL | NUMBER(1,0) | NULL |  |  |
| 9 | ORIGINATION | NUMBER | NULL |  |  |

## MOVEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | MOVEMENTTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 5 | SETTLEMENTDATE | DATE | NOT NULL |  |  |
| 6 | NOTIONAL | NUMBER(19,4) | NOT NULL |  |  |
| 7 | MARKETVALUEAGREEMENTCURRENCY | NUMBER(19,4) | NOT NULL |  |  |
| 8 | MARKETVALUESYSTEMCURRENCY | NUMBER(19,4) | NOT NULL |  |  |
| 9 | INCLUDEINCALCULATION | NUMBER(1,0) | NOT NULL | `((1))` |  |
| 10 | AGREEMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 11 | SYSTEMCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | MOVEMENTSTATUS | NUMBER(9,0) | NULL |  |  |
| 13 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 14 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 15 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 16 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 17 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 18 | ISROLLEDUP | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 19 | ISELIGIBLE | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 20 | PRICE | NUMBER(17,8) | NULL |  |  |
| 21 | VALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 22 | PRICESOURCE | NVARCHAR2(200) | NULL |  |  |
| 23 | VALUATIONQUOTE | NUMBER(9,0) | NULL |  |  |
| 24 | PRICEDATE | DATE | NULL |  |  |
| 25 | PRICEDATEADJUSTMENT | NUMBER(9,0) | NULL |  |  |
| 26 | ELIGIBLECOLLATERALNAME | NVARCHAR2(510) | NULL |  |  |
| 27 | MARKETVALUEINSTRUMENTCURRENCY | NUMBER(19,4) | NULL |  |  |
| 28 | CREATEREASON | NVARCHAR2(500) | NULL |  |  |
| 29 | REJECTREASON | NVARCHAR2(1000) | NULL |  |  |
| 30 | REVIEWEDBY | NUMBER(18,0) | NULL |  |  |
| 31 | REVIEWEDBYTIMESTAMP | DATE | NULL |  |  |
| 32 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 33 | PREHAIRCUTAGREEMENTCURRENCY | NUMBER(19,4) | NULL |  |  |
| 34 | ORIGINATION | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 35 | BOOKEDSETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NULL |  |  |
| 36 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 37 | ISUPLOADED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 38 | PREVIOUSMOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 39 | PREVIOUSMOVEMENTSTATUS | NUMBER(9,0) | NULL |  |  |
| 40 | ROOTID | NUMBER(18,0) | NULL |  |  |
| 41 | PHYSICALSETTLEMENT | NUMBER(1,0) | NOT NULL | `((1))` |  |
| 42 | PREHAIRCUTINSTRUMENTCURRENCY | NUMBER(19,4) | NULL |  |  |
| 43 | PREHAIRCUTSYSTEMCURRENCY | NUMBER(19,4) | NULL |  |  |
| 44 | PROFITANDLOSSTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 45 | NETTINGID | NVARCHAR2(72) | NULL |  |  |
| 46 | GROUPEDCOLLNOTICESENTDATETIME | DATE | NULL |  |  |
| 47 | ASSETPOOLID | NUMBER(18,0) | NULL |  |  |
| 48 | TRADEDATE | DATE | NULL |  |  |
| 49 | LEGACYREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 50 | REQUIREDAPPROVALLEVEL | NUMBER | NOT NULL |  |  |
| 51 | ISPENDINGCANCELLATIONAPPROVAL | NUMBER(1,0) | NOT NULL |  |  |
| 52 | CANCELREASON | NVARCHAR2(1000) | NULL |  |  |
| 53 | EXTERNALID | NVARCHAR2(300) | NULL |  |  |

## MOVEMENTSXPANDLMARGINRESULTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MARGINCALCULATIONRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |

## MOVEMENTTRANSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTTRANSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTSTATUS | NUMBER(9,0) | NOT NULL |  |  |
| 3 | WORKFLOWID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | WORKFLOWSTATETRANSITIONID | NUMBER(18,0) | NOT NULL |  |  |

## MOVEMENTVERIFICATIONRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTVERIFICATIONRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CHECKTIME | DATE | NOT NULL |  |  |
| 3 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |

## MUNICIPALREGIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MUNICIPALREGIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MUNICIPALREGIONNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## MUNICIPALSTATES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MUNICIPALSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MUNICIPALSTATENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## ORGANIZATIONTYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ORGANIZATIONTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ORGANIZATIONTYPENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | DISPUTEMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 10 | DISPUTEAMOUNT | NUMBER(19,4) | NULL |  |  |
| 11 | DISPUTECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 12 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## OTCANALYSISEXTDATAOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCANALYSISEXTDATAOVERRIDEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONFIELDDEFINITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | OTCANALYSISTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | STRINGVALUE | NVARCHAR2(500) | NULL |  |  |
| 5 | DATEVALUE | DATE | NULL |  |  |
| 6 | BOOLEANVALUE | NUMBER(1,0) | NULL |  |  |
| 7 | DECIMALVALUE | NUMBER(20,6) | NULL |  |  |

## OTCANALYSISTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCANALYSISTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SOURCEAGREEMENT | NVARCHAR2(510) | NULL |  |  |
| 3 | SOURCETRADETYPE | NVARCHAR2(510) | NULL |  |  |
| 4 | TRADETYPENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 5 | SOURCEPRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 6 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | SOURCECOUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 8 | COUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | PRIMARYTRADEREFERENCE | NVARCHAR2(200) | NOT NULL |  |  |
| 10 | SECONDARYTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 11 | DTCCTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 12 | COUNTERPARTYTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 13 | DEALREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 14 | TRADEDATE | DATE | NULL |  |  |
| 15 | MATURITYDATE | DATE | NULL |  |  |
| 16 | EFFECTIVEDATE | DATE | NULL |  |  |
| 17 | EXPOSUREAMOUNTDATE | DATE | NULL |  |  |
| 18 | EXPOSUREAMOUNTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 19 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 20 | EXCHANGEDNOTIONAL1CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 21 | EXCHANGEDNOTIONAL1 | NUMBER(19,4) | NULL |  |  |
| 22 | EXCHANGEDNOTIONAL2CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 23 | EXCHANGEDNOTIONAL2 | NUMBER(19,4) | NULL |  |  |
| 24 | UNDERLYINGINSTRUMENTIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 25 | STRIKEPRICE | NUMBER(19,4) | NULL |  |  |
| 26 | UNDERLYING | NVARCHAR2(510) | NULL |  |  |
| 27 | EXPOSURETRADECOMMENT | NVARCHAR2(510) | NULL |  |  |
| 28 | TRADERNAME | NVARCHAR2(200) | NULL |  |  |
| 29 | BOOK | NVARCHAR2(200) | NULL |  |  |
| 30 | DESK | NVARCHAR2(200) | NULL |  |  |
| 31 | CLIPSCODE | NVARCHAR2(510) | NULL |  |  |
| 32 | OPTIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 33 | SPREAD | NUMBER(19,4) | NULL |  |  |
| 34 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 35 | QUANTITY | NUMBER(19,4) | NULL |  |  |
| 36 | BUYSELL | NUMBER(9,0) | NULL |  |  |
| 37 | PUTCALL | NUMBER(9,0) | NULL |  |  |
| 38 | ADDITIONALMARGIN | NUMBER(19,4) | NULL |  |  |
| 39 | ADDITIONALMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 40 | ADDITIONALMARGINDUETO | NUMBER(9,0) | NULL |  |  |
| 41 | LOCKUPMARGIN | NUMBER(19,4) | NULL |  |  |
| 42 | LOCKUPMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 43 | LOCKUPMARGINDUETO | NUMBER(9,0) | NULL |  |  |
| 44 | PRINCIPALBRANCHNAME | NVARCHAR2(510) | NULL |  |  |
| 45 | COUNTERPARTYBRANCHNAME | NVARCHAR2(510) | NULL |  |  |
| 46 | SOURCEPRINCIPALBRANCH | NVARCHAR2(510) | NULL |  |  |
| 47 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(510) | NULL |  |  |
| 48 | MARGINCALCULATIONRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 49 | EXPOSUREINAGREEMENTCCY | NUMBER(19,4) | NULL |  |  |
| 50 | ADDITIONALMARGININAGREEMENTCCY | NUMBER(19,4) | NULL |  |  |
| 51 | LOCKUPMARGININAGREEMENTCCY | NUMBER(19,4) | NULL |  |  |
| 52 | ADDITIONALMARGINMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 53 | LOCKUPMARGINMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 54 | CLEARINGHOUSEREFERENCE | NVARCHAR2(60) | NULL |  |  |
| 55 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 56 | CLEARINGSTATUS | NVARCHAR2(100) | NULL |  |  |

## OTCCOMPARISONTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCCOMPARISONTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SOURCEAGREEMENT | NVARCHAR2(510) | NULL |  |  |
| 3 | SOURCETRADETYPE | NVARCHAR2(510) | NULL |  |  |
| 4 | SOURCEPRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 5 | SOURCECOUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 6 | PRIMARYTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 7 | SECONDARYTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 8 | DTCCTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 9 | COUNTERPARTYTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 10 | DEALREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 11 | TRADEDATE | DATE | NULL |  |  |
| 12 | MATURITYDATE | DATE | NULL |  |  |
| 13 | EFFECTIVEDATE | DATE | NULL |  |  |
| 14 | EXPOSUREAMOUNTDATE | DATE | NULL |  |  |
| 15 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 16 | EXCHANGEDNOTIONAL1 | NUMBER(19,4) | NULL |  |  |
| 17 | EXCHANGEDNOTIONAL2 | NUMBER(19,4) | NULL |  |  |
| 18 | UNDERLYINGINSTRUMENTIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 19 | STRIKEPRICE | NUMBER(19,4) | NULL |  |  |
| 20 | UNDERLYING | NVARCHAR2(510) | NULL |  |  |
| 21 | EXPOSURETRADECOMMENT | NVARCHAR2(510) | NULL |  |  |
| 22 | TRADERNAME | NVARCHAR2(200) | NULL |  |  |
| 23 | BOOK | NVARCHAR2(200) | NULL |  |  |
| 24 | DESK | NVARCHAR2(200) | NULL |  |  |
| 25 | CLIPSCODE | NVARCHAR2(510) | NULL |  |  |
| 26 | OPTIONTYPE | NUMBER(9,0) | NOT NULL | `(0)` |  |
| 27 | SPREAD | NUMBER(19,4) | NULL |  |  |
| 28 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 29 | QUANTITY | NUMBER(19,4) | NULL |  |  |
| 30 | BUYSELL | NUMBER(9,0) | NULL |  |  |
| 31 | PUTCALL | NUMBER(9,0) | NULL |  |  |
| 32 | ADDITIONALMARGIN | NUMBER(19,6) | NULL |  |  |
| 33 | ADDITIONALMARGINDUETO | NUMBER(9,0) | NULL |  |  |
| 34 | LOCKUPMARGIN | NUMBER(19,6) | NULL |  |  |
| 35 | LOCKUPMARGINDUETO | NUMBER(9,0) | NULL |  |  |
| 36 | SOURCEPRINCIPALBRANCH | NVARCHAR2(510) | NULL |  |  |
| 37 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(510) | NULL |  |  |
| 38 | ADDITIONALMARGINMETHOD | NUMBER(9,0) | NOT NULL | `(0)` |  |
| 39 | LOCKUPMARGINMETHOD | NUMBER(9,0) | NOT NULL | `(0)` |  |
| 40 | CLEARINGHOUSEREFERENCE | NVARCHAR2(60) | NULL |  |  |
| 41 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 42 | CLEARINGSTATUS | NVARCHAR2(100) | NULL |  |  |
| 43 | COMMONTRADEREFERENCE | NVARCHAR2(510) | NOT NULL |  |  |
| 44 | EXPOSUREAMOUNTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 45 | EXCHANGEDNOTIONAL1CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 46 | EXCHANGEDNOTIONAL2CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 47 | ADDITIONALMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 48 | LOCKUPMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |

## OTCCOMPARISONTRADESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCCOMPARISONTRADESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | AGREEMENT | NVARCHAR2(510) | NULL |  |  |
| 4 | TRADETYPE | NVARCHAR2(510) | NULL |  |  |
| 5 | PRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 6 | COUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 7 | PRIMARYTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 8 | SECONDARYTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 9 | DTCCTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 10 | COUNTERPARTYTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 11 | DEALREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 12 | TRADEDATE | DATE | NULL |  |  |
| 13 | MATURITYDATE | DATE | NULL |  |  |
| 14 | EFFECTIVEDATE | DATE | NULL |  |  |
| 15 | EXPOSUREAMOUNTDATE | DATE | NULL |  |  |
| 16 | EXPOSUREAMOUNTCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 17 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 18 | EXCHANGEDNOTIONAL1CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 19 | EXCHANGEDNOTIONAL1 | NUMBER(19,4) | NULL |  |  |
| 20 | EXCHANGEDNOTIONAL2CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 21 | EXCHANGEDNOTIONAL2 | NUMBER(19,4) | NULL |  |  |
| 22 | UNDERLYINGINSTRUMENTIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 23 | BUYSELL | NVARCHAR2(30) | NULL |  |  |
| 24 | PUTCALL | NVARCHAR2(30) | NULL |  |  |
| 25 | STRIKEPRICE | NUMBER(19,4) | NULL |  |  |
| 26 | UNDERLYING | NVARCHAR2(510) | NULL |  |  |
| 27 | EXPOSURETRADECOMMENT | NVARCHAR2(510) | NULL |  |  |
| 28 | TRADERNAME | NVARCHAR2(200) | NULL |  |  |
| 29 | BOOK | NVARCHAR2(200) | NULL |  |  |
| 30 | DESK | NVARCHAR2(200) | NULL |  |  |
| 31 | CLIPSCODE | NVARCHAR2(510) | NULL |  |  |
| 32 | OPTIONTYPE | NVARCHAR2(510) | NULL |  |  |
| 33 | OPTIONTYPEENUM | NUMBER(9,0) | NULL | `(0)` |  |
| 34 | SPREAD | NUMBER(19,4) | NULL |  |  |
| 35 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `(1)` |  |
| 36 | PUTCALLENUM | NUMBER(9,0) | NULL |  |  |
| 37 | BUYSELLENUM | NUMBER(9,0) | NULL |  |  |
| 38 | QUANTITY | NUMBER(19,4) | NULL |  |  |
| 39 | ADDITIONALMARGIN | NUMBER(19,6) | NULL |  |  |
| 40 | ADDITIONALMARGINCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 41 | ADDITIONALMARGINDUETO | NVARCHAR2(40) | NULL |  |  |
| 42 | ADDITIONALMARGINDUETOENUM | NUMBER(9,0) | NULL |  |  |
| 43 | LOCKUPMARGIN | NUMBER(19,6) | NULL |  |  |
| 44 | LOCKUPMARGINCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 45 | LOCKUPMARGINDUETO | NVARCHAR2(40) | NULL |  |  |
| 46 | LOCKUPMARGINDUETOENUM | NUMBER(9,0) | NULL |  |  |
| 47 | PRINCIPALBRANCH | NVARCHAR2(510) | NULL |  |  |
| 48 | COUNTERPARTYBRANCH | NVARCHAR2(510) | NULL |  |  |
| 49 | ADDITIONALMARGINMETHODENUM | NUMBER(9,0) | NULL |  |  |
| 50 | ADDITIONALMARGINMETHOD | NVARCHAR2(100) | NULL |  |  |
| 51 | LOCKUPMARGINMETHODENUM | NUMBER(9,0) | NULL |  |  |
| 52 | LOCKUPMARGINMETHOD | NVARCHAR2(100) | NULL |  |  |
| 53 | CLEARINGHOUSEREFERENCE | NVARCHAR2(60) | NULL |  |  |
| 54 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 55 | CLEARINGSTATUS | NVARCHAR2(100) | NULL |  |  |
| 56 | COMMONTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 57 | EXPOSUREAMOUNTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 58 | EXCHANGEDNOTIONAL1CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 59 | EXCHANGEDNOTIONAL2CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 60 | ADDITIONALMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 61 | LOCKUPMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |

## OTCEXTDATAOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCEXTDATAOVERRIDEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONFIELDDEFINITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | OTCTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | STRINGVALUE | NVARCHAR2(500) | NULL |  |  |
| 5 | DATEVALUE | DATE | NULL |  |  |
| 6 | BOOLEANVALUE | NUMBER(1,0) | NULL |  |  |
| 7 | DECIMALVALUE | NUMBER(20,6) | NULL |  |  |
| 8 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |

## OTCTRADEANALYSISEXTDATA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCTRADEANALYSISEXTDATAID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONDATA | NCLOB | NOT NULL |  |  |
| 3 | OTCMARGINANALYSISTRADEID | NUMBER(18,0) | NOT NULL |  |  |

## OTCTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | OTCTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SOURCEAGREEMENT | NVARCHAR2(510) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | SOURCETRADETYPE | NVARCHAR2(510) | NULL |  |  |
| 5 | TRADETYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | SOURCEPRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 7 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 8 | SOURCECOUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 9 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 10 | PRIMARYTRADEREFERENCE | NVARCHAR2(200) | NOT NULL |  |  |
| 11 | SECONDARYTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 12 | DTCCTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 13 | COUNTERPARTYTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 14 | DEALREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 15 | TRADEDATE | DATE | NULL |  |  |
| 16 | MATURITYDATE | DATE | NULL |  |  |
| 17 | EFFECTIVEDATE | DATE | NULL |  |  |
| 18 | EXPOSUREAMOUNTDATE | DATE | NULL |  |  |
| 19 | EXPOSUREAMOUNTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 20 | EXPOSUREAMOUNT | NUMBER(19,4) | NULL |  |  |
| 21 | EXCHANGEDNOTIONAL1CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 22 | EXCHANGEDNOTIONAL1 | NUMBER(19,4) | NULL |  |  |
| 23 | EXCHANGEDNOTIONAL2CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 24 | EXCHANGEDNOTIONAL2 | NUMBER(19,4) | NULL |  |  |
| 25 | UNDERLYINGINSTRUMENTIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 26 | STRIKEPRICE | NUMBER(19,4) | NULL |  |  |
| 27 | UNDERLYING | NVARCHAR2(510) | NULL |  |  |
| 28 | EXPOSURETRADECOMMENT | NVARCHAR2(510) | NULL |  |  |
| 29 | TRADERNAME | NVARCHAR2(200) | NULL |  |  |
| 30 | BOOK | NVARCHAR2(200) | NULL |  |  |
| 31 | DESK | NVARCHAR2(200) | NULL |  |  |
| 32 | CLIPSCODE | NVARCHAR2(510) | NULL |  |  |
| 33 | OPTIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 34 | SPREAD | NUMBER(19,4) | NULL |  |  |
| 35 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 36 | QUANTITY | NUMBER(19,4) | NULL |  |  |
| 37 | BUYSELL | NUMBER(9,0) | NULL |  |  |
| 38 | PUTCALL | NUMBER(9,0) | NULL |  |  |
| 39 | ADDITIONALMARGIN | NUMBER(19,6) | NULL |  |  |
| 40 | ADDITIONALMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 41 | ADDITIONALMARGINDUETO | NUMBER(9,0) | NULL |  |  |
| 42 | LOCKUPMARGIN | NUMBER(19,6) | NULL |  |  |
| 43 | LOCKUPMARGINCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 44 | LOCKUPMARGINDUETO | NUMBER(9,0) | NULL |  |  |
| 45 | PRINCIPALBRANCHID | NUMBER(18,0) | NULL |  |  |
| 46 | COUNTERPARTYBRANCHID | NUMBER(18,0) | NULL |  |  |
| 47 | SOURCEPRINCIPALBRANCH | NVARCHAR2(510) | NULL |  |  |
| 48 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(510) | NULL |  |  |
| 49 | ADDITIONALMARGINMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 50 | LOCKUPMARGINMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 51 | CLEARINGHOUSEREFERENCE | NVARCHAR2(60) | NULL |  |  |
| 52 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 53 | CLEARINGSTATUS | NVARCHAR2(100) | NULL |  |  |
| 54 | COMMONTRADEREFERENCE | NVARCHAR2(510) | NULL |  |  |

## PENDINGAGREEMENTMARGINS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PENDINGAGREEMENTMARGINID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTMARGINID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | REQUESTEDDATE | DATE | NOT NULL |  |  |
| 6 | PENDINGAPPROVALDATA | NCLOB | NOT NULL |  |  |
| 7 | APPROVALRECORDID | NUMBER(18,0) | NOT NULL |  |  |

## PENDINGAGREEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PENDINGAGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 4 | REQUESTEDDATE | DATE | NOT NULL |  |  |
| 5 | PENDINGAPPROVALDATA | NCLOB | NOT NULL |  |  |
| 6 | AGREEMENTNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 7 | PRINCIPALID | NUMBER(18,0) | NOT NULL |  |  |
| 8 | COUNTERPARTYID | NUMBER(18,0) | NOT NULL |  |  |
| 9 | PRINCIPALMANAGINGLOCATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 10 | AGREEMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 11 | BUSINESSLINE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 12 | SOURCEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 13 | AGREEMENTSTATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 14 | AGREEMENTSTATUSDETAILID | NUMBER(18,0) | NULL |  |  |
| 15 | APPROVALRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 16 | CLEARINGDIRECTION | NUMBER(9,0) | NOT NULL | `((0))` |  |

## PENDINGCONTACTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PENDINGCONTACTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CONTACTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | REQUESTEDDATE | DATE | NOT NULL |  |  |
| 6 | PENDINGAPPROVALDATA | NCLOB | NOT NULL |  |  |
| 7 | APPROVALRECORDID | NUMBER(18,0) | NOT NULL |  |  |

## PENDINGENTITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PENDINGENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 3 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 4 | REQUESTEDDATE | DATE | NOT NULL |  |  |
| 5 | PENDINGAPPROVALDATA | NCLOB | NOT NULL |  |  |
| 6 | APPROVALRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 7 | ENTITYNAME | NVARCHAR2(510) | NULL |  |  |

## PENDINGSETTLEMENTINSTRUCTIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PENDINGSETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | REQUESTEDDATE | DATE | NOT NULL |  |  |
| 6 | PENDINGAPPROVALDATA | NCLOB | NOT NULL |  |  |
| 7 | PARTY | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 8 | APPROVALRECORDID | NUMBER(18,0) | NOT NULL |  |  |

## PENDINGTRADECOVERAGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PENDINGTRADECOVERAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SPECIFICTRADECOVERAGEID | NUMBER(18,0) | NULL |  |  |
| 3 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 4 | REQUESTEDDATE | DATE | NOT NULL |  |  |
| 5 | PENDINGAPPROVALDATA | NCLOB | NOT NULL |  |  |
| 6 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 7 | APPROVALRECORDID | NUMBER(18,0) | NOT NULL |  |  |

## PLACEOFSETTLEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PLACEOFSETTLEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PLACEOFSETTLEMENTNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## POSITIONSTATEMENTHISTORIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | POSITIONSTATEMENTHISTORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | SENTTIMESTAMP | DATE | NOT NULL |  |  |

## PRICESOURCES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PRICESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRICESOURCENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | ISDEFAULT | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 10 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## PROFITANDLOSSES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PROFITANDLOSSID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COBDATE | DATE | NULL |  |  |
| 3 | SETTLEMENTDATE | DATE | NOT NULL |  |  |
| 4 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | TRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 6 | EXCHANGETRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 7 | CONSIDERATION | NUMBER(19,4) | NULL |  |  |
| 8 | COUPON | NUMBER(19,4) | NULL |  |  |
| 9 | CCPFEES | NUMBER(19,4) | NULL |  |  |
| 10 | PRICEALIGNEDINTEREST | NUMBER(19,4) | NULL |  |  |
| 11 | CASHFLOW | NUMBER(19,4) | NULL |  |  |
| 12 | EXCHANGERATE | NUMBER(21,6) | NULL |  |  |
| 13 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 14 | PRICEALIGNEDINTERESTRATE | NUMBER(9,6) | NULL |  |  |
| 15 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 16 | TAX | NUMBER(19,4) | NULL |  |  |
| 17 | CONSIDERATIONAPPLYTO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 18 | COUPONAPPLYTO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 19 | CCPFEESAPPLYTO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 20 | PRICEALIGNEDINTERESTAPPLYTO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 21 | CASHFLOWAPPLYTO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 22 | HELDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 23 | POSTEDMOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 24 | IMPORTRECORDID | NUMBER(18,0) | NULL |  |  |
| 25 | CLEARINGMEMBERFEES | NUMBER(19,4) | NULL |  |  |
| 26 | CLEARINGMEMBERFEESAPPLYTO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 27 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |

## PROFITANDLOSSESBULK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PROFITANDLOSSESBULKID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ISVALIDFORMOVE | NUMBER(1,0) | NULL | `((1))` |  |
| 4 | COBDATE | DATE | NULL |  |  |
| 5 | SETTLEMENTDATE | DATE | NULL |  |  |
| 6 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 8 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 9 | TRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 10 | EXCHANGETRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 11 | CONSIDERATION | NUMBER(19,4) | NULL |  |  |
| 12 | COUPON | NUMBER(19,4) | NULL |  |  |
| 13 | CCPFEES | NUMBER(19,4) | NULL |  |  |
| 14 | PRICEALIGNEDINTEREST | NUMBER(19,4) | NULL |  |  |
| 15 | CASHFLOW | NUMBER(19,4) | NULL |  |  |
| 16 | EXCHANGERATE | NUMBER(21,6) | NULL |  |  |
| 17 | MARKETINDEX | NVARCHAR2(200) | NULL |  |  |
| 18 | MARKETINDEXID | NUMBER(18,0) | NULL |  |  |
| 19 | PRICEALIGNEDINTERESTRATE | NUMBER(9,6) | NULL |  |  |
| 20 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 21 | TAX | NUMBER(19,4) | NULL |  |  |
| 22 | CONSIDERATIONAPPLYTOENUM | NUMBER(9,0) | NULL |  |  |
| 23 | COUPONAPPLYTOENUM | NUMBER(9,0) | NULL |  |  |
| 24 | CCPFEESAPPLYTOENUM | NUMBER(9,0) | NULL |  |  |
| 25 | PRICEALIGNEDINTAPPLYTOENUM | NUMBER(9,0) | NULL |  |  |
| 26 | CASHFLOWAPPLYTOENUM | NUMBER(9,0) | NULL |  |  |
| 27 | CONSIDERATIONAPPLYTO | NVARCHAR2(100) | NULL |  |  |
| 28 | COUPONAPPLYTO | NVARCHAR2(100) | NULL |  |  |
| 29 | CCPFEESAPPLYTO | NVARCHAR2(100) | NULL |  |  |
| 30 | PRICEALIGNEDINTERESTAPPLYTO | NVARCHAR2(100) | NULL |  |  |
| 31 | CASHFLOWAPPLYTO | NVARCHAR2(100) | NULL |  |  |
| 32 | CLEARINGMEMBERFEES | NUMBER(19,4) | NULL |  |  |
| 33 | CLEARINGMEMBERFEESAPPLYTO | NVARCHAR2(100) | NULL |  |  |
| 34 | CLEARINGMEMBERFEESAPPLYTOENUM | NUMBER(9,0) | NULL |  |  |
| 35 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |

## RATINGAGENCIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGAGENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RATINGAGENCYNAME | NVARCHAR2(500) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 5 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 8 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## RATINGBASEDMARGINTERMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGBASEDMARGINTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MARGINTERMID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | THRESHOLD | NUMBER(19,6) | NULL |  |  |
| 4 | ADDITIONALMARGIN | NUMBER(19,6) | NULL |  |  |
| 5 | LOCKUPMARGIN | NUMBER(19,6) | NULL |  |  |
| 6 | CREDITRATINGORDINALID | NUMBER(18,0) | NOT NULL |  |  |
| 7 | ADDITIONALMARGINMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 8 | LOCKUPMARGINMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 9 | THRESHOLDMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 10 | MINIMUMTRANSFERAMOUNTMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 11 | ROUNDINGAMOUNTMETHOD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 12 | DELIVERMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 13 | RETURNMINIMUMTRANSFERAMOUNT | NUMBER(19,6) | NULL |  |  |
| 14 | DELIVERROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |
| 15 | RETURNROUNDINGAMOUNT | NUMBER(19,6) | NULL |  |  |

## RATINGELIGIBILITYRULEBANDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGELIGIBILITYRULEBANDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RATINGELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | PARTYORDINALID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | INSTRUMENTORDINALID | NUMBER(18,0) | NULL |  |  |
| 5 | ISSUERORDINALID | NUMBER(18,0) | NULL |  |  |

## RATINGELIGIBILITYRULES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | RULENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 4 | INSTRUMENTDEBTSTRUCTURE | NUMBER(9,0) | NULL | `((1))` |  |
| 5 | ALLINSTRUMENTRATINGSREQUIRED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 6 | INSTRUMENTRATINGDISPUTEMETHOD | NUMBER(9,0) | NULL | `((0))` |  |
| 7 | INSTRUMENTREFERENCEAGENCYID | NUMBER(18,0) | NULL |  |  |
| 8 | PARTYDEBTSTRUCTURE | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | ALLPARTYRATINGSREQUIRED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 10 | PARTYRATINGDISPUTEMETHOD | NUMBER(9,0) | NULL | `((0))` |  |
| 11 | PARTYREFERENCEAGENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 12 | APPLIESTOVARIATIONHELD | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 13 | APPLIESTOVARIATIONPOSTED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 14 | APPLIESTOLOCKUPHELD | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 15 | APPLIESTOLOCKUPPOSTED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 16 | INSTRUMENTCLASS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 17 | ISSUERDEBTSTRUCTURE | NUMBER(9,0) | NULL |  |  |
| 18 | ISSUERRATINGDISPUTEMETHOD | NUMBER(9,0) | NULL |  |  |
| 19 | ISSUERREFERENCEAGENCYID | NUMBER(18,0) | NULL |  |  |
| 20 | ALLISSUERRATINGSREQUIRED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 21 | APPLIESTOGUARANTEEHELD | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 22 | APPLIESTOGUARANTEEPOSTED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 23 | APPLIESTOSURPLUSHELD | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 24 | APPLIESTOSURPLUSPOSTED | NUMBER(1,0) | NOT NULL | `((0))` |  |

## RATINGRULEXCOLLATERALBUCKETS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |

## RATINGRULEXINSTRUMENTAGENCIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RATINGAGENCYID | NUMBER(18,0) | NOT NULL |  |  |

## RATINGRULEXISSUERAGENCIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RATINGAGENCYID | NUMBER(18,0) | NOT NULL |  |  |

## RATINGRULEXPARTYAGENCIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGELIGIBILITYRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RATINGAGENCYID | NUMBER(18,0) | NOT NULL |  |  |

## RATINGWATCHES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RATINGWATCHID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RATINGWATCHNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## REPOANALYSISEXTDATAOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REPOANALYSISEXTDATAOVERRIDEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONFIELDDEFINITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | REPOANALYSISTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | STRINGVALUE | NVARCHAR2(500) | NULL |  |  |
| 5 | DATEVALUE | DATE | NULL |  |  |
| 6 | BOOLEANVALUE | NUMBER(1,0) | NULL |  |  |
| 7 | DECIMALVALUE | NUMBER(20,6) | NULL |  |  |

## REPOANALYSISTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REPOANALYSISTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | PRINCIPALNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | SOURCEPRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 5 | COUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | SOURCECOUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 7 | SOURCEAGREEMENT | NVARCHAR2(510) | NULL |  |  |
| 8 | TRADEREFERENCE | NVARCHAR2(200) | NOT NULL |  |  |
| 9 | TRADETYPENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 10 | SOURCETRADETYPE | NVARCHAR2(510) | NULL |  |  |
| 11 | EXPOSUREAMOUNT | NUMBER(21,6) | NULL |  |  |
| 12 | EXPOSUREAMOUNTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 13 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 14 | TRADESTARTDATE | DATE | NULL |  |  |
| 15 | TRADEENDDATE | DATE | NULL |  |  |
| 16 | REPORATE | NUMBER(12,8) | NULL |  |  |
| 17 | TRADEVALUE | NUMBER(21,6) | NULL |  |  |
| 18 | TRADECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 19 | FACTOR | NUMBER(12,8) | NULL |  |  |
| 20 | HAIRCUT | NUMBER(12,8) | NULL |  |  |
| 21 | HAIRCUTVALUE | NUMBER(21,6) | NULL |  |  |
| 22 | MARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 23 | CLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 24 | DIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 25 | INSTRUMENTIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 26 | INSTRUMENTDESCRIPTION | NVARCHAR2(200) | NULL |  |  |
| 27 | INSTRUMENTMATURITYDATE | DATE | NULL |  |  |
| 28 | INSTRUMENTCOUPON | NUMBER(14,8) | NULL |  |  |
| 29 | INSTRUMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 30 | EXPOSUREAMOUNTDATE | DATE | NULL |  |  |
| 31 | SECONDARYTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 32 | REPORATEDESCRIPTION | NVARCHAR2(200) | NULL |  |  |
| 33 | TRADEDCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 34 | TRADEDDIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 35 | MARKETCLOSINGYIELD | NUMBER(21,6) | NULL |  |  |
| 36 | COUPONACCRUALINTEREST | NUMBER(21,6) | NULL |  |  |
| 37 | INDEXRATIO | NUMBER(12,8) | NULL |  |  |
| 38 | BASEMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 39 | UPPERMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 40 | LOWERMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 41 | TRADEEXECUTIONDATE | DATE | NULL |  |  |
| 42 | PRINCIPALBRANCHNAME | NVARCHAR2(510) | NULL |  |  |
| 43 | COUNTERPARTYBRANCHNAME | NVARCHAR2(510) | NULL |  |  |
| 44 | SOURCEPRINCIPALBRANCH | NVARCHAR2(510) | NULL |  |  |
| 45 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(510) | NULL |  |  |
| 46 | MARGINCALCULATIONRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 47 | EXPOSUREINAGREEMENTCCY | NUMBER(19,4) | NULL |  |  |
| 48 | CLEARINGHOUSEREFERENCE | NVARCHAR2(60) | NULL |  |  |
| 49 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 50 | CLEARINGSTATUS | NVARCHAR2(100) | NULL |  |  |

## REPOEXTDATAOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REPOEXTDATAOVERRIDEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONFIELDDEFINITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | REPOTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | STRINGVALUE | NVARCHAR2(500) | NULL |  |  |
| 5 | DATEVALUE | DATE | NULL |  |  |
| 6 | BOOLEANVALUE | NUMBER(1,0) | NULL |  |  |
| 7 | DECIMALVALUE | NUMBER(20,6) | NULL |  |  |
| 8 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |

## REPOTRADEANALYSISEXTDATA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REPOTRADEANALYSISEXTDATAID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | EXTENSIONDATA | NCLOB | NOT NULL |  |  |
| 3 | REPOMARGINANALYSISTRADEID | NUMBER(18,0) | NOT NULL |  |  |

## REPOTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REPOTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 4 | SOURCEPRINCIPAL | NVARCHAR2(510) | NULL |  |  |
| 5 | COUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 6 | SOURCECOUNTERPARTY | NVARCHAR2(510) | NULL |  |  |
| 7 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 8 | SOURCEAGREEMENT | NVARCHAR2(510) | NULL |  |  |
| 9 | TRADEREFERENCE | NVARCHAR2(200) | NOT NULL |  |  |
| 10 | TRADETYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 11 | SOURCETRADETYPE | NVARCHAR2(510) | NULL |  |  |
| 12 | EXPOSUREAMOUNT | NUMBER(21,6) | NULL |  |  |
| 13 | EXPOSUREAMOUNTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 14 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 15 | TRADESTARTDATE | DATE | NULL |  |  |
| 16 | TRADEENDDATE | DATE | NULL |  |  |
| 17 | REPORATE | NUMBER(12,8) | NULL |  |  |
| 18 | TRADEVALUE | NUMBER(21,6) | NULL |  |  |
| 19 | TRADECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 20 | FACTOR | NUMBER(12,8) | NULL |  |  |
| 21 | HAIRCUT | NUMBER(12,8) | NULL |  |  |
| 22 | HAIRCUTVALUE | NUMBER(21,6) | NULL |  |  |
| 23 | MARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 24 | CLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 25 | DIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 26 | INSTRUMENTIDENTIFIER | NVARCHAR2(60) | NULL |  |  |
| 27 | INSTRUMENTDESCRIPTION | NVARCHAR2(200) | NULL |  |  |
| 28 | INSTRUMENTMATURITYDATE | DATE | NULL |  |  |
| 29 | INSTRUMENTCOUPON | NUMBER(14,8) | NULL |  |  |
| 30 | INSTRUMENTCURRENCYID | NUMBER(18,0) | NULL |  |  |
| 31 | EXPOSUREAMOUNTDATE | DATE | NULL |  |  |
| 32 | SECONDARYTRADEREFERENCE | NVARCHAR2(200) | NULL |  |  |
| 33 | REPORATEDESCRIPTION | NVARCHAR2(200) | NULL |  |  |
| 34 | TRADEDCLEANPRICE | NUMBER(17,8) | NULL |  |  |
| 35 | TRADEDDIRTYPRICE | NUMBER(17,8) | NULL |  |  |
| 36 | MARKETCLOSINGYIELD | NUMBER(21,6) | NULL |  |  |
| 37 | COUPONACCRUALINTEREST | NUMBER(21,6) | NULL |  |  |
| 38 | INDEXRATIO | NUMBER(12,8) | NULL |  |  |
| 39 | BASEMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 40 | UPPERMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 41 | LOWERMARKETVALUE | NUMBER(21,6) | NULL |  |  |
| 42 | TRADEEXECUTIONDATE | DATE | NULL |  |  |
| 43 | PRINCIPALBRANCHID | NUMBER(18,0) | NULL |  |  |
| 44 | COUNTERPARTYBRANCHID | NUMBER(18,0) | NULL |  |  |
| 45 | SOURCEPRINCIPALBRANCH | NVARCHAR2(510) | NULL |  |  |
| 46 | SOURCECOUNTERPARTYBRANCH | NVARCHAR2(510) | NULL |  |  |
| 47 | CLEARINGHOUSEREFERENCE | NVARCHAR2(60) | NULL |  |  |
| 48 | CLEARINGHOUSE | NVARCHAR2(510) | NULL |  |  |
| 49 | CLEARINGSTATUS | NVARCHAR2(100) | NULL |  |  |

## RULEFILTERPARAMETERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RULEFILTERPARAMETERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RULEFILTERID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ITEMID | NUMBER(18,0) | NOT NULL |  |  |

## RULEFILTERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RULEFILTERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CONCENTRATIONRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | FILTERTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | FILTERBY | NUMBER(9,0) | NOT NULL |  |  |
| 5 | SETOPERATOR | NUMBER(9,0) | NOT NULL | `((1))` |  |

## SCHEMAINFO

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VERSIONNAME | NUMBER(9,0) | NULL |  |  |
| 2 | HAVEPERIODSBEENSPLIT | NUMBER(1,0) | NOT NULL |  |  |
| 3 | HASEXTENSIONDATABEENCONVERTED | NUMBER(1,0) | NOT NULL |  |  |
| 4 | TRADEEXTLINKSREMOVED | NUMBER(1,0) | NOT NULL |  |  |

## SEASONINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SEASONINGID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SEASONINGNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## SERIALTASKQUEUE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SERIALTASKQUEUEID | NUMBER(18,0) | NOT NULL | `"TUQCEUCBCORE01"."ISEQ$$_709874".nextval` |  |
| 2 | PAYLOAD | VARCHAR2(255) | NOT NULL |  |  |
| 3 | COMMANDTYPE | VARCHAR2(1020) | NOT NULL |  |  |

## SETAGREEDAMOUNTSAGA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ID | VARCHAR2(38) | NOT NULL |  |  |
| 2 | METADATA | CLOB | NOT NULL |  |  |
| 3 | DATA | CLOB | NOT NULL |  |  |
| 4 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |
| 5 | SAGATYPEVERSION | VARCHAR2(23) | NOT NULL |  |  |
| 6 | CONCURRENCY | NUMBER(9,0) | NOT NULL |  |  |
| 7 | CORR_ORIGINALCOMMANDID | NVARCHAR2(400) | NULL |  |  |

## SETTLEMENTINSTRUCTIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMENTINSTRUCTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYID | NUMBER(18,0) | NULL |  |  |
| 3 | INSTRUCTIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | CUSTODIANID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | ACCOUNTNUMBER | NVARCHAR2(510) | NOT NULL |  |  |
| 6 | ACCOUNTNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 7 | BENEFICIARYNUMBER | NVARCHAR2(510) | NULL |  |  |
| 8 | BENEFICIARYNAME | NVARCHAR2(510) | NULL |  |  |
| 9 | ISOTC | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 10 | ISREPO | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 11 | ISSECLENDING | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 12 | SETTLEMENTINSTRUCTIONNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 13 | CASHINSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 14 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 15 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 16 | PARTY | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 17 | APPLIESTO | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 18 | APPLIESTOMARGIN | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 19 | ISCENTRALCLEARING | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 20 | ISCLIENTCLEARING | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 21 | SETTLEMENTOFFSET | NUMBER(9,0) | NOT NULL |  |  |
| 22 | REFERENCE | NVARCHAR2(510) | NULL |  |  |
| 23 | COMMENTS | NVARCHAR2(510) | NULL |  |  |
| 24 | MOVEMENTTYPE | NUMBER(9,0) | NOT NULL | `(3)` |  |
| 25 | MOVEMENTDIRECTION | NUMBER(9,0) | NOT NULL | `(3)` |  |
| 26 | PLACEOFSETTLEMENTID | NUMBER(18,0) | NULL |  |  |
| 27 | ISDEFAULT | NUMBER(1,0) | NOT NULL | `(0)` |  |
| 28 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## SETTLEMENTXCITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMOVEMENTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CITYID | NUMBER(18,0) | NOT NULL |  |  |

## SETTLEMOVEMENTCONFIGURATIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMOVEMENTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SETTLEMOVEMENTCONFIGNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | SETTLEMOVEMENTBEHAVIOR | NUMBER(9,0) | NOT NULL |  |  |
| 4 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 5 | ISDELETED | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 6 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 10 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 11 | MAXSETTLEMENTDATE | NUMBER(9,0) | NOT NULL | `((0))` |  |

## SETTLEMOVEMENTFILTERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMOVEMENTFILTERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SETTLEMOVEMENTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ENUMVALUE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | SETTLEMOVEMENTFILTERTYPE | NUMBER(9,0) | NOT NULL |  |  |

## SETTLEMOVEMENTMESSAGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMOVEMENTMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SETTLEMOVEMENTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ERRORTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | MESSAGETYPE | NUMBER(9,0) | NOT NULL |  |  |
| 5 | ERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 6 | TOTALCOUNT | NUMBER(9,0) | NOT NULL |  |  |
| 7 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |

## SETTLEMOVEMENTRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SETTLEMOVEMENTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SETTLEMOVEMENTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | STARTDATETIME | DATE | NULL |  |  |
| 4 | ENDDATETIME | DATE | NULL |  |  |
| 5 | EXCEPTIONMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 6 | INFOMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 7 | WARNINGMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 8 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 9 | CORRELATIONID | NVARCHAR2(100) | NULL |  |  |
| 10 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 11 | REQUESTEDDATETIME | DATE | NOT NULL |  |  |
| 12 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## SHAREDAPPROVALRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SHAREDAPPROVALRECORDID | NUMBER(19,0) | NOT NULL |  |  |
| 2 | TRACKEDDATATYPE | NVARCHAR2(510) | NULL |  |  |
| 3 | APPROVALNAME | NVARCHAR2(510) | NULL |  |  |
| 4 | DISPLAY | NCLOB | NOT NULL |  |  |
| 5 | REVISIONDATA | NCLOB | NOT NULL |  |  |
| 6 | ACTION | NVARCHAR2(510) | NULL |  |  |
| 7 | STATUS | NUMBER(9,0) | NULL |  |  |
| 8 | EXTERNALID | NVARCHAR2(510) | NULL |  |  |
| 9 | CREATEDBY | NVARCHAR2(510) | NULL |  |  |
| 10 | CREATEDDATE | TIMESTAMP(4) | NULL |  |  |
| 11 | APPROVEDBY | NVARCHAR2(510) | NULL |  |  |
| 12 | APPROVEDDATE | TIMESTAMP(4) | NULL |  |  |
| 13 | REJECTEDBY | NVARCHAR2(510) | NULL |  |  |
| 14 | REJECTEDDATE | TIMESTAMP(4) | NULL |  |  |
| 15 | REASON | NVARCHAR2(510) | NULL |  |  |
| 16 | RESUBMITTABLE | NUMBER(1,0) | NULL |  |  |

## SPECIFICTRADECOVERAGE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SPECIFICTRADECOVERAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |
| 4 | TRADECOVERAGETYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 5 | REFERENCEVALUE | NVARCHAR2(200) | NOT NULL |  |  |
| 6 | TRADEFIELD | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 7 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 8 | EXTENSIONFIELDDEFINITIONID | NUMBER(18,0) | NULL |  |  |

## STATEMENTDISCLAIMERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | STATEMENTDISCLAIMERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | PRINCIPALID | NUMBER(18,0) | NULL |  |  |
| 3 | DISCLAIMER | NCLOB | NOT NULL |  |  |
| 4 | IMAGEFORMAT | NUMBER(9,0) | NOT NULL |  |  |
| 5 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 6 | EMAILDISCLAIMER | NCLOB | NOT NULL |  |  |

## STOCKINDEXES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | STOCKINDEXID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STOCKINDEXNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## SUBSTITUTIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SUBSTITUTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | MOVEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | TRANSITIONEDBY | NUMBER(18,0) | NULL |  |  |
| 8 | TRANSITIONREQUESTEDTIMESTAMP | DATE | NULL |  |  |
| 9 | TRANSITIONENDTIMESTAMP | DATE | NULL |  |  |
| 10 | REVIEWEDBY | NUMBER(18,0) | NULL |  |  |
| 11 | REVIEWEDBYTIMESTAMP | DATE | NULL |  |  |
| 12 | POSITIONTYPE | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 13 | SUBSTITUTIONSTATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 14 | TRANSITIONERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 15 | TRANSITIONSTATUS | NUMBER(9,0) | NULL |  |  |
| 16 | SENTTIMESTAMP | DATE | NULL |  |  |
| 17 | SENTSTATUS | NUMBER(9,0) | NOT NULL |  |  |
| 18 | TRANSITIONCOMMENT | NVARCHAR2(1000) | NULL |  |  |
| 19 | REQUIREDAPPROVALLEVEL | NUMBER | NOT NULL |  |  |
| 20 | ACTIVEEXPIRYTIMESTAMP | DATE | NULL |  |  |
| 21 | TIMEZONE | NVARCHAR2(510) | NOT NULL |  |  |
| 22 | UUID | VARCHAR2(150) | NOT NULL |  |  |

## SUBSTRANSITIONHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SUBSTRANSITIONHISTORYID | NUMBER | NOT NULL | `"TUQCEUCBCORE01"."ISEQ$$_710099".nextval` |  |
| 2 | SUBSTITUTIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | FROMWORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | TOWORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | TRANSITIONDATE | DATE | NOT NULL |  |  |
| 6 | TRANSITIONEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | TRANSITIONCOMMENT | NVARCHAR2(1000) | NULL |  |  |

## SYS_EXPORT_SCHEMA_01

> Data Pump Master Table EXPORT                         SCHEMA                        

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PROCESS_ORDER | NUMBER | NULL |  |  |
| 2 | DUPLICATE | NUMBER | NULL |  |  |
| 3 | DUMP_FILEID | NUMBER | NULL |  |  |
| 4 | DUMP_POSITION | NUMBER | NULL |  |  |
| 5 | DUMP_LENGTH | NUMBER | NULL |  |  |
| 6 | DUMP_ORIG_LENGTH | NUMBER | NULL |  |  |
| 7 | DUMP_ALLOCATION | NUMBER | NULL |  |  |
| 8 | COMPLETED_ROWS | NUMBER | NULL |  |  |
| 9 | ERROR_COUNT | NUMBER | NULL |  |  |
| 10 | ELAPSED_TIME | NUMBER | NULL |  |  |
| 11 | OBJECT_TYPE_PATH | VARCHAR2(800) | NULL |  |  |
| 12 | OBJECT_PATH_SEQNO | NUMBER | NULL |  |  |
| 13 | OBJECT_TYPE | VARCHAR2(120) | NULL |  |  |
| 14 | IN_PROGRESS | CHAR(4) | NULL |  |  |
| 15 | OBJECT_NAME | VARCHAR2(2000) | NULL |  |  |
| 16 | OBJECT_LONG_NAME | VARCHAR2(4000) | NULL |  |  |
| 17 | OBJECT_SCHEMA | VARCHAR2(120) | NULL |  |  |
| 18 | ORIGINAL_OBJECT_SCHEMA | VARCHAR2(120) | NULL |  |  |
| 19 | ORIGINAL_OBJECT_NAME | VARCHAR2(4000) | NULL |  |  |
| 20 | PARTITION_NAME | VARCHAR2(120) | NULL |  |  |
| 21 | SUBPARTITION_NAME | VARCHAR2(120) | NULL |  |  |
| 22 | DATAOBJ_NUM | NUMBER | NULL |  |  |
| 23 | FLAGS | NUMBER | NULL |  |  |
| 24 | PROPERTY | NUMBER | NULL |  |  |
| 25 | TRIGFLAG | NUMBER | NULL |  |  |
| 26 | CREATION_LEVEL | NUMBER | NULL |  |  |
| 27 | COMPLETION_TIME | DATE | NULL |  |  |
| 28 | OBJECT_TABLESPACE | VARCHAR2(120) | NULL |  |  |
| 29 | SIZE_ESTIMATE | NUMBER | NULL |  |  |
| 30 | OBJECT_ROW | NUMBER | NULL |  |  |
| 31 | PROCESSING_STATE | CHAR(4) | NULL |  |  |
| 32 | PROCESSING_STATUS | CHAR(4) | NULL |  |  |
| 33 | BASE_PROCESS_ORDER | NUMBER | NULL |  |  |
| 34 | BASE_OBJECT_TYPE | VARCHAR2(120) | NULL |  |  |
| 35 | BASE_OBJECT_NAME | VARCHAR2(120) | NULL |  |  |
| 36 | BASE_OBJECT_SCHEMA | VARCHAR2(120) | NULL |  |  |
| 37 | ANCESTOR_PROCESS_ORDER | NUMBER | NULL |  |  |
| 38 | DOMAIN_PROCESS_ORDER | NUMBER | NULL |  |  |
| 39 | PARALLELIZATION | NUMBER | NULL |  |  |
| 40 | UNLOAD_METHOD | NUMBER | NULL |  |  |
| 41 | LOAD_METHOD | NUMBER | NULL |  |  |
| 42 | GRANULES | NUMBER | NULL |  |  |
| 43 | SCN | NUMBER | NULL |  |  |
| 44 | GRANTOR | VARCHAR2(120) | NULL |  |  |
| 45 | XML_CLOB | CLOB | NULL |  |  |
| 46 | PARENT_PROCESS_ORDER | NUMBER | NULL |  |  |
| 47 | NAME | VARCHAR2(120) | NULL |  |  |
| 48 | VALUE_T | VARCHAR2(4000) | NULL |  |  |
| 49 | VALUE_N | NUMBER | NULL |  |  |
| 50 | IS_DEFAULT | NUMBER | NULL |  |  |
| 51 | FILE_TYPE | NUMBER | NULL |  |  |
| 52 | USER_DIRECTORY | VARCHAR2(4000) | NULL |  |  |
| 53 | USER_FILE_NAME | VARCHAR2(4000) | NULL |  |  |
| 54 | FILE_NAME | VARCHAR2(4000) | NULL |  |  |
| 55 | EXTEND_SIZE | NUMBER | NULL |  |  |
| 56 | FILE_MAX_SIZE | NUMBER | NULL |  |  |
| 57 | PROCESS_NAME | VARCHAR2(120) | NULL |  |  |
| 58 | LAST_UPDATE | DATE | NULL |  |  |
| 59 | WORK_ITEM | VARCHAR2(120) | NULL |  |  |
| 60 | OBJECT_NUMBER | NUMBER | NULL |  |  |
| 61 | COMPLETED_BYTES | NUMBER | NULL |  |  |
| 62 | TOTAL_BYTES | NUMBER | NULL |  |  |
| 63 | METADATA_IO | NUMBER | NULL |  |  |
| 64 | DATA_IO | NUMBER | NULL |  |  |
| 65 | CUMULATIVE_TIME | NUMBER | NULL |  |  |
| 66 | PACKET_NUMBER | NUMBER | NULL |  |  |
| 67 | INSTANCE_ID | NUMBER | NULL |  |  |
| 68 | OLD_VALUE | VARCHAR2(4000) | NULL |  |  |
| 69 | SEED | NUMBER | NULL |  |  |
| 70 | LAST_FILE | NUMBER | NULL |  |  |
| 71 | USER_NAME | VARCHAR2(120) | NULL |  |  |
| 72 | OPERATION | VARCHAR2(120) | NULL |  |  |
| 73 | JOB_MODE | VARCHAR2(120) | NULL |  |  |
| 74 | QUEUE_TABNUM | NUMBER | NULL |  |  |
| 75 | CONTROL_QUEUE | VARCHAR2(120) | NULL |  |  |
| 76 | STATUS_QUEUE | VARCHAR2(120) | NULL |  |  |
| 77 | REMOTE_LINK | VARCHAR2(4000) | NULL |  |  |
| 78 | VERSION | NUMBER | NULL |  |  |
| 79 | JOB_VERSION | VARCHAR2(120) | NULL |  |  |
| 80 | DB_VERSION | VARCHAR2(120) | NULL |  |  |
| 81 | TIMEZONE | VARCHAR2(256) | NULL |  |  |
| 82 | STATE | VARCHAR2(120) | NULL |  |  |
| 83 | PHASE | NUMBER | NULL |  |  |
| 84 | GUID | RAW(16) | NULL |  |  |
| 85 | START_TIME | DATE | NULL |  |  |
| 86 | BLOCK_SIZE | NUMBER | NULL |  |  |
| 87 | METADATA_BUFFER_SIZE | NUMBER | NULL |  |  |
| 88 | DATA_BUFFER_SIZE | NUMBER | NULL |  |  |
| 89 | DEGREE | NUMBER | NULL |  |  |
| 90 | PLATFORM | VARCHAR2(404) | NULL |  |  |
| 91 | ABORT_STEP | NUMBER | NULL |  |  |
| 92 | INSTANCE | VARCHAR2(240) | NULL |  |  |
| 93 | CLUSTER_OK | NUMBER | NULL |  |  |
| 94 | SERVICE_NAME | VARCHAR2(400) | NULL |  |  |
| 95 | OBJECT_INT_OID | VARCHAR2(128) | NULL |  |  |

## SYS_EXPORT_SCHEMA_02

> Data Pump Master Table EXPORT                         SCHEMA                        

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PROCESS_ORDER | NUMBER | NULL |  |  |
| 2 | DUPLICATE | NUMBER | NULL |  |  |
| 3 | DUMP_FILEID | NUMBER | NULL |  |  |
| 4 | DUMP_POSITION | NUMBER | NULL |  |  |
| 5 | DUMP_LENGTH | NUMBER | NULL |  |  |
| 6 | DUMP_ORIG_LENGTH | NUMBER | NULL |  |  |
| 7 | DUMP_ALLOCATION | NUMBER | NULL |  |  |
| 8 | COMPLETED_ROWS | NUMBER | NULL |  |  |
| 9 | ERROR_COUNT | NUMBER | NULL |  |  |
| 10 | ELAPSED_TIME | NUMBER | NULL |  |  |
| 11 | OBJECT_TYPE_PATH | VARCHAR2(800) | NULL |  |  |
| 12 | OBJECT_PATH_SEQNO | NUMBER | NULL |  |  |
| 13 | OBJECT_TYPE | VARCHAR2(120) | NULL |  |  |
| 14 | IN_PROGRESS | CHAR(4) | NULL |  |  |
| 15 | OBJECT_NAME | VARCHAR2(2000) | NULL |  |  |
| 16 | OBJECT_LONG_NAME | VARCHAR2(4000) | NULL |  |  |
| 17 | OBJECT_SCHEMA | VARCHAR2(120) | NULL |  |  |
| 18 | ORIGINAL_OBJECT_SCHEMA | VARCHAR2(120) | NULL |  |  |
| 19 | ORIGINAL_OBJECT_NAME | VARCHAR2(4000) | NULL |  |  |
| 20 | PARTITION_NAME | VARCHAR2(120) | NULL |  |  |
| 21 | SUBPARTITION_NAME | VARCHAR2(120) | NULL |  |  |
| 22 | DATAOBJ_NUM | NUMBER | NULL |  |  |
| 23 | FLAGS | NUMBER | NULL |  |  |
| 24 | PROPERTY | NUMBER | NULL |  |  |
| 25 | TRIGFLAG | NUMBER | NULL |  |  |
| 26 | CREATION_LEVEL | NUMBER | NULL |  |  |
| 27 | COMPLETION_TIME | DATE | NULL |  |  |
| 28 | OBJECT_TABLESPACE | VARCHAR2(120) | NULL |  |  |
| 29 | SIZE_ESTIMATE | NUMBER | NULL |  |  |
| 30 | OBJECT_ROW | NUMBER | NULL |  |  |
| 31 | PROCESSING_STATE | CHAR(4) | NULL |  |  |
| 32 | PROCESSING_STATUS | CHAR(4) | NULL |  |  |
| 33 | BASE_PROCESS_ORDER | NUMBER | NULL |  |  |
| 34 | BASE_OBJECT_TYPE | VARCHAR2(120) | NULL |  |  |
| 35 | BASE_OBJECT_NAME | VARCHAR2(120) | NULL |  |  |
| 36 | BASE_OBJECT_SCHEMA | VARCHAR2(120) | NULL |  |  |
| 37 | ANCESTOR_PROCESS_ORDER | NUMBER | NULL |  |  |
| 38 | DOMAIN_PROCESS_ORDER | NUMBER | NULL |  |  |
| 39 | PARALLELIZATION | NUMBER | NULL |  |  |
| 40 | UNLOAD_METHOD | NUMBER | NULL |  |  |
| 41 | LOAD_METHOD | NUMBER | NULL |  |  |
| 42 | GRANULES | NUMBER | NULL |  |  |
| 43 | SCN | NUMBER | NULL |  |  |
| 44 | GRANTOR | VARCHAR2(120) | NULL |  |  |
| 45 | XML_CLOB | CLOB | NULL |  |  |
| 46 | PARENT_PROCESS_ORDER | NUMBER | NULL |  |  |
| 47 | NAME | VARCHAR2(120) | NULL |  |  |
| 48 | VALUE_T | VARCHAR2(4000) | NULL |  |  |
| 49 | VALUE_N | NUMBER | NULL |  |  |
| 50 | IS_DEFAULT | NUMBER | NULL |  |  |
| 51 | FILE_TYPE | NUMBER | NULL |  |  |
| 52 | USER_DIRECTORY | VARCHAR2(4000) | NULL |  |  |
| 53 | USER_FILE_NAME | VARCHAR2(4000) | NULL |  |  |
| 54 | FILE_NAME | VARCHAR2(4000) | NULL |  |  |
| 55 | EXTEND_SIZE | NUMBER | NULL |  |  |
| 56 | FILE_MAX_SIZE | NUMBER | NULL |  |  |
| 57 | PROCESS_NAME | VARCHAR2(120) | NULL |  |  |
| 58 | LAST_UPDATE | DATE | NULL |  |  |
| 59 | WORK_ITEM | VARCHAR2(120) | NULL |  |  |
| 60 | OBJECT_NUMBER | NUMBER | NULL |  |  |
| 61 | COMPLETED_BYTES | NUMBER | NULL |  |  |
| 62 | TOTAL_BYTES | NUMBER | NULL |  |  |
| 63 | METADATA_IO | NUMBER | NULL |  |  |
| 64 | DATA_IO | NUMBER | NULL |  |  |
| 65 | CUMULATIVE_TIME | NUMBER | NULL |  |  |
| 66 | PACKET_NUMBER | NUMBER | NULL |  |  |
| 67 | INSTANCE_ID | NUMBER | NULL |  |  |
| 68 | OLD_VALUE | VARCHAR2(4000) | NULL |  |  |
| 69 | SEED | NUMBER | NULL |  |  |
| 70 | LAST_FILE | NUMBER | NULL |  |  |
| 71 | USER_NAME | VARCHAR2(120) | NULL |  |  |
| 72 | OPERATION | VARCHAR2(120) | NULL |  |  |
| 73 | JOB_MODE | VARCHAR2(120) | NULL |  |  |
| 74 | QUEUE_TABNUM | NUMBER | NULL |  |  |
| 75 | CONTROL_QUEUE | VARCHAR2(120) | NULL |  |  |
| 76 | STATUS_QUEUE | VARCHAR2(120) | NULL |  |  |
| 77 | REMOTE_LINK | VARCHAR2(4000) | NULL |  |  |
| 78 | VERSION | NUMBER | NULL |  |  |
| 79 | JOB_VERSION | VARCHAR2(120) | NULL |  |  |
| 80 | DB_VERSION | VARCHAR2(120) | NULL |  |  |
| 81 | TIMEZONE | VARCHAR2(256) | NULL |  |  |
| 82 | STATE | VARCHAR2(120) | NULL |  |  |
| 83 | PHASE | NUMBER | NULL |  |  |
| 84 | GUID | RAW(16) | NULL |  |  |
| 85 | START_TIME | DATE | NULL |  |  |
| 86 | BLOCK_SIZE | NUMBER | NULL |  |  |
| 87 | METADATA_BUFFER_SIZE | NUMBER | NULL |  |  |
| 88 | DATA_BUFFER_SIZE | NUMBER | NULL |  |  |
| 89 | DEGREE | NUMBER | NULL |  |  |
| 90 | PLATFORM | VARCHAR2(404) | NULL |  |  |
| 91 | ABORT_STEP | NUMBER | NULL |  |  |
| 92 | INSTANCE | VARCHAR2(240) | NULL |  |  |
| 93 | CLUSTER_OK | NUMBER | NULL |  |  |
| 94 | SERVICE_NAME | VARCHAR2(400) | NULL |  |  |
| 95 | OBJECT_INT_OID | VARCHAR2(128) | NULL |  |  |

## TEMP_ENTITY_CLEANUP

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MIN_ENTITYID | NUMBER | NULL |  |  |
| 2 | ENTITY_TO_BE_USED | NUMBER | NULL |  |  |
| 3 | TO_BE_MERGED_ENTITY_ID | NUMBER | NULL |  |  |
| 4 | NDG | VARCHAR2(48) | NULL |  |  |
| 5 | AGREEMENTID | NUMBER | NULL |  |  |
| 6 | ENTITY_NAME | VARCHAR2(1020) | NULL |  |  |
| 7 | OLD_ENTITYNAME | VARCHAR2(1020) | NULL |  |  |
| 8 | AGREEMENTNAME | VARCHAR2(1020) | NULL |  |  |
| 9 | AGREEMENTSTATUS | VARCHAR2(32) | NULL |  |  |

## TLM_EMAIL_OD

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MESSAGEID | NVARCHAR2(400) | NOT NULL |  |  |
| 2 | DISPATCHED | NUMBER(1,0) | NOT NULL |  |  |
| 3 | DISPATCHEDAT | TIMESTAMP(6) | NULL |  |  |
| 4 | OPERATIONS | CLOB | NOT NULL |  |  |
| 5 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |

## TLM_EMAIL_TO

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ID | VARCHAR2(38) | NOT NULL |  |  |
| 2 | DESTINATION | NVARCHAR2(400) | NOT NULL |  |  |
| 3 | SAGAID | VARCHAR2(38) | NULL |  |  |
| 4 | STATE | BLOB | NULL |  |  |
| 5 | EXPIRETIME | DATE | NULL |  |  |
| 6 | HEADERS | CLOB | NOT NULL |  |  |
| 7 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |

## TLM_FOUNDATION_OD

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MESSAGEID | NVARCHAR2(400) | NOT NULL |  |  |
| 2 | DISPATCHED | NUMBER(1,0) | NOT NULL |  |  |
| 3 | DISPATCHEDAT | TIMESTAMP(6) | NULL |  |  |
| 4 | OPERATIONS | CLOB | NOT NULL |  |  |
| 5 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |

## TLM_FOUNDATION_SS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MESSAGETYPE | NVARCHAR2(400) | NOT NULL |  |  |
| 2 | SUBSCRIBER | NVARCHAR2(400) | NOT NULL |  |  |
| 3 | ENDPOINT | VARCHAR2(200) | NULL |  |  |
| 4 | PERSISTENCEVERSION | VARCHAR2(23) | NULL |  |  |

## TLM_FOUNDATION_TO

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ID | VARCHAR2(38) | NOT NULL |  |  |
| 2 | DESTINATION | NVARCHAR2(400) | NOT NULL |  |  |
| 3 | SAGAID | VARCHAR2(38) | NULL |  |  |
| 4 | STATE | BLOB | NULL |  |  |
| 5 | EXPIRETIME | DATE | NULL |  |  |
| 6 | HEADERS | CLOB | NOT NULL |  |  |
| 7 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |

## TLM_WORKFLOWAUTOMATION_OD

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MESSAGEID | NVARCHAR2(400) | NOT NULL |  |  |
| 2 | DISPATCHED | NUMBER(1,0) | NOT NULL |  |  |
| 3 | DISPATCHEDAT | TIMESTAMP(6) | NULL |  |  |
| 4 | OPERATIONS | CLOB | NOT NULL |  |  |
| 5 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |

## TLM_WORKFLOWAUTOMATION_SS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MESSAGETYPE | NVARCHAR2(400) | NOT NULL |  |  |
| 2 | SUBSCRIBER | NVARCHAR2(400) | NOT NULL |  |  |
| 3 | ENDPOINT | VARCHAR2(200) | NULL |  |  |
| 4 | PERSISTENCEVERSION | VARCHAR2(23) | NULL |  |  |

## TLM_WORKFLOWAUTOMATION_TO

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ID | VARCHAR2(38) | NOT NULL |  |  |
| 2 | DESTINATION | NVARCHAR2(400) | NOT NULL |  |  |
| 3 | SAGAID | VARCHAR2(38) | NULL |  |  |
| 4 | STATE | BLOB | NULL |  |  |
| 5 | EXPIRETIME | DATE | NULL |  |  |
| 6 | HEADERS | CLOB | NOT NULL |  |  |
| 7 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |

## TRADEASSIGNMENTCONFIGURATIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEASSIGNMENTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADEASSIGNMENTCONFIGNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | EXPOSURETRADETYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | ASSIGNMENTSCOPE | NUMBER(9,0) | NOT NULL |  |  |
| 5 | DESCRIPTION | NVARCHAR2(1000) | NULL |  |  |
| 6 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 9 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 10 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |

## TRADEASSIGNMENTMESSAGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEASSIGNMENTMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ERRORTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 3 | MESSAGETYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | ERRORCONTEXT | NVARCHAR2(1000) | NULL |  |  |
| 5 | TRADEASSIGNMENTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | TOTALCOUNT | NUMBER(9,0) | NOT NULL |  |  |

## TRADEASSIGNMENTRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEASSIGNMENTRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STARTDATETIME | DATE | NULL |  |  |
| 3 | ENDDATETIME | DATE | NULL |  |  |
| 4 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 5 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | WARNINGMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 7 | NUMBEROFTRADESASSIGNED | NUMBER(9,0) | NULL |  |  |
| 8 | CORRELATIONID | NVARCHAR2(100) | NULL |  |  |
| 9 | REQUESTEDDATETIME | DATE | NOT NULL |  |  |
| 10 | TRADEASSIGNMENTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 11 | INFOMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 12 | EXCEPTIONMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 13 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |
| 14 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NULL |  |  |

## TRADEASSIGNMENTRULES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEASSIGNMENTRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ADDITIONALCRITERIA | NVARCHAR2(4000) | NULL |  |  |
| 4 | INCLUDENEWTRADETYPES | NUMBER(1,0) | NOT NULL |  |  |

## TRADEASSIGNMENTRULESXCPTYBRANC

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEASSIGNMENTRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | BRANCHID | NUMBER(18,0) | NOT NULL |  |  |

## TRADEASSIGNMENTRULESXPRINBRANC

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEASSIGNMENTRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | BRANCHID | NUMBER(18,0) | NOT NULL |  |  |

## TRADEASSIGNMENTRULESXTRADETYPE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADEASSIGNMENTRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADETYPEID | NUMBER(18,0) | NOT NULL |  |  |

## TRADETYPEALIASES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADETYPEALIASID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADETYPEALIASNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | TRADETYPEALIASGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | TRADETYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |

## TRADETYPES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRADETYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADETYPENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## TRIPARTYCOLLPOSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYCOLLPOSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | INSTRUMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | CUSTODIANID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | COLLATERALPOSITIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 7 | COLLATERALMARGINTYPE | NUMBER(9,0) | NULL | `((0))` |  |
| 8 | NOTIONAL | NUMBER(19,4) | NOT NULL |  |  |
| 9 | ADJUSTEDMARKETVALUEAGREEMENT | NUMBER(19,4) | NOT NULL |  |  |
| 10 | PREHAIRCUTMARKETVALUEAGREEMENT | NUMBER(19,4) | NULL |  |  |
| 11 | VALUATIONPERCENTAGE | NUMBER(6,3) | NULL |  |  |
| 12 | FXRATE | NUMBER(21,6) | NULL |  |  |
| 13 | PRICE | NUMBER(17,8) | NULL |  |  |
| 14 | PRICEDATE | DATE | NULL |  |  |

## TRIPARTYECAGREEMENTRESULTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYECAGREEMENTRESULTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ECRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 5 | PRINCIPAL | NVARCHAR2(510) | NOT NULL |  |  |
| 6 | COUNTERPARTY | NVARCHAR2(510) | NOT NULL |  |  |
| 7 | BUSINESSLINE | NUMBER(9,0) | NOT NULL |  |  |
| 8 | AGREEMENTTYPE | NVARCHAR2(200) | NOT NULL |  |  |
| 9 | PMLOCATION | NVARCHAR2(200) | NOT NULL |  |  |
| 10 | CURRENCY | NVARCHAR2(6) | NOT NULL |  |  |
| 11 | TRIPARTYENCDATA | BLOB | NOT NULL |  |  |
| 12 | CONCENTRATIONRESULT | NUMBER(9,0) | NOT NULL |  |  |
| 13 | ELIGIBILITYRESULT | NUMBER(9,0) | NOT NULL |  |  |
| 14 | VALUATIONDIFFHELDABS | NUMBER(19,4) | NOT NULL | `NULL` |  |
| 15 | VALUATIONDIFFHELDISNEGATIVE | NUMBER(1,0) | NOT NULL | `NULL` |  |
| 16 | VALUATIONDIFFPOSTEDABS | NUMBER(19,4) | NOT NULL | `NULL` |  |
| 17 | VALUATIONDIFFPOSTEDISNEGATIVE | NUMBER(1,0) | NOT NULL | `NULL` |  |

## TRIPARTYECRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYECRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STARTDATETIME | DATE | NULL |  |  |
| 3 | ENDDATETIME | DATE | NULL |  |  |
| 4 | STATUS | NUMBER(9,0) | NOT NULL |  |  |
| 5 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | EXCEPTIONMESSAGESCOUNT | NUMBER(9,0) | NULL |  |  |
| 7 | AGREEMENTSCHECKED | NUMBER(9,0) | NULL |  |  |
| 8 | AGREEMENTSFAILED | NUMBER(9,0) | NULL |  |  |
| 9 | CORRELATIONID | NVARCHAR2(100) | NULL |  |  |
| 10 | REQUESTEDDATETIME | DATE | NOT NULL |  |  |
| 11 | COMPLETEDTIMESTAMPINUTC | DATE | NULL |  |  |

## TRIPARTYECREPORTINGDATA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TRIPARTYECREPORTINGDATAID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRIPARTYECREPORTINGDATA | BLOB | NOT NULL |  |  |

## T_AEC_ANVIL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COUNTERPARTY_NDG | NVARCHAR2(60) | NOT NULL |  |  |
| 2 | COUNTERPARTY_NAME | NVARCHAR2(510) | NULL |  |  |
| 3 | ANVIL_MATCH_CODE | NVARCHAR2(100) | NULL |  |  |
| 4 | LE_ID | NVARCHAR2(40) | NULL |  |  |

## T_AEC_ECB_ELIGBLE_ASSETS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ISIN_CODE | VARCHAR2(48) | NOT NULL |  |  |
| 2 | OTHER_REG_NUMBER | VARCHAR2(80) | NULL |  |  |
| 3 | LIQUIDITY_CLASS | CHAR(12) | NULL |  |  |
| 4 | ASSET_TYPE | CHAR(16) | NULL |  |  |
| 5 | REFERENCE_MARKET | CHAR(24) | NULL |  |  |
| 6 | DENOMINATION | CHAR(12) | NULL |  |  |
| 7 | ISSUANCE_DATE | TIMESTAMP(6) | NULL |  |  |
| 8 | MATURITY_DATE | TIMESTAMP(6) | NULL |  |  |
| 9 | ISSUER_CSD | CHAR(24) | NULL |  |  |
| 10 | COUPON_RATE_PERCENT | NUMBER(20,6) | NULL |  |  |
| 11 | ISSUER_NAME | VARCHAR2(1020) | NULL |  |  |
| 12 | ISSUER_OTHER_NAME | VARCHAR2(1020) | NULL |  |  |
| 13 | ISSUER_RESIDENCE | CHAR(16) | NULL |  |  |
| 14 | ISSUER_GROUP | CHAR(12) | NULL |  |  |
| 15 | GUARANTOR_NAME | VARCHAR2(1020) | NULL |  |  |
| 16 | GUARANTOR_OTHER_NAME | VARCHAR2(1020) | NULL |  |  |
| 17 | GUARANTOR_RESIDENCE | CHAR(16) | NULL |  |  |
| 18 | GUARANTOR_GROUP | CHAR(12) | NULL |  |  |
| 19 | COUPON_DEFINITION | CHAR(12) | NULL |  |  |
| 20 | VALUATION_HAIRCUT | NUMBER(20,6) | NULL |  |  |
| 21 | OWN_USE_COVERED_BONDS | VARCHAR2(12) | NULL |  |  |
| 22 | UPDATED_ON | TIMESTAMP(6) | NULL |  |  |
| 23 | CHANGE | VARCHAR2(40) | NULL |  |  |

## T_AEC_GCIF

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | COUNTERPARTY_NDG | NVARCHAR2(60) | NOT NULL |  |  |
| 2 | COUNTERPARTY_NAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | COUNTERPARTY_COUNTRY | NVARCHAR2(8) | NULL |  |  |
| 4 | COUNTERPARTY_GROUP_NAME | NVARCHAR2(510) | NULL |  |  |
| 5 | COUNTERPARTY_GROUP_SNDG | NVARCHAR2(60) | NULL |  |  |
| 6 | GROUP_LEADING_ENTITY_NAME | NVARCHAR2(510) | NULL |  |  |
| 7 | GROUP_LEADING_ENTITY_COUNTRY | NVARCHAR2(510) | NULL |  |  |
| 8 | COUNTERPARTY_LEI | NVARCHAR2(80) | NULL |  |  |
| 9 | ANVIL_MATCH_CODE | NVARCHAR2(100) | NULL |  |  |

## T_AEC_HISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | HISTORY_ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ARCHIVED_ON | DATE | NULL |  |  |
| 3 | CHECKED_BY | NVARCHAR2(60) | NULL |  |  |
| 4 | CHECKED_ON | DATE | NULL |  |  |
| 5 | COLLATERAL_INFO | NVARCHAR2(60) | NOT NULL |  |  |
| 6 | BUSINESS_LINE | NVARCHAR2(6) | NOT NULL |  |  |
| 7 | COUNTERPARTY_NDG | NVARCHAR2(60) | NOT NULL |  |  |
| 8 | SOURCES_EDIA | CLOB | NULL |  |  |
| 9 | SOURCES_ECB | CLOB | NULL |  |  |
| 10 | SOURCES_LIQUID_BONDS | CLOB | NULL |  |  |
| 11 | SOURCES_REGULATORY | CLOB | NULL |  |  |
| 12 | CALCULATED_MAXIMUM | NUMBER(19,4) | NULL |  |  |
| 13 | WARNINGS_EDIA | CLOB | NULL |  |  |
| 14 | WARNINGS_LIQUID_BONDS | CLOB | NULL |  |  |
| 15 | WARNINGS_REGULATORY | CLOB | NULL |  |  |
| 16 | WARNINGS_ECB | CLOB | NULL |  |  |
| 17 | REASONS_ECB | CLOB | NULL |  |  |
| 18 | REASONS_EDIA | CLOB | NULL |  |  |
| 19 | REASONS_LIQUID_BONDS | CLOB | NULL |  |  |
| 20 | REASONS_REGULATORY | CLOB | NULL |  |  |
| 21 | RESULT_EDIA | NUMBER(1,0) | NULL | `NULL` |  |
| 22 | RESULT_ECB | NUMBER(1,0) | NULL | `NULL` |  |
| 23 | RESULT_LIQUID_BONDS | NUMBER(1,0) | NULL | `NULL` |  |
| 24 | RESULT_REGULATORY | NUMBER(1,0) | NULL | `NULL` |  |
| 25 | SOURCES_TOXIC_ISINS | CLOB | NULL |  |  |
| 26 | REASON_TOXIC_ISINS | CLOB | NULL |  |  |
| 27 | RESULT_TOXIC_ISINS | NUMBER(1,0) | NULL |  |  |
| 28 | WARNINGS_TOXIC_ISINS | CLOB | NULL |  |  |

## T_AEC_LIQUID_BONDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ISIN_CODE | VARCHAR2(80) | NOT NULL |  |  |
| 2 | LIQUIDM | NUMBER(1,0) | NULL |  |  |
| 3 | UPDATED_ON | TIMESTAMP(6) | NULL |  |  |

## T_AEC_RULES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RULE_ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RULE_NAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | RULE_DESCRIPTION | NVARCHAR2(510) | NULL |  |  |
| 4 | OTC_RULE | NUMBER(1,0) | NOT NULL |  |  |
| 5 | SFT_RULE | NUMBER(1,0) | NOT NULL |  |  |
| 6 | CCP_RULE | NUMBER(1,0) | NOT NULL |  |  |

## T_AEC_RULES_ASSET_CLASSES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RULE_ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ASSET_CLASS_ORDINAL | NUMBER(9,0) | NOT NULL |  |  |
| 3 | RULE_CRITERIA_ID | NUMBER(18,0) | NOT NULL |  |  |

## T_AEC_RULES_CRITERIA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RULE_CRITERIA_ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CRITERIA_OPERATOR | NUMBER(9,0) | NOT NULL |  |  |
| 3 | CRITERIA_PROPERTY | NVARCHAR2(200) | NOT NULL |  |  |
| 4 | STRING_VALUE | NVARCHAR2(510) | NULL |  |  |
| 5 | NUMERIC_VALUE | NUMBER(20,6) | NULL |  |  |
| 6 | DATE_VALUE | DATE | NULL |  |  |
| 7 | BOOLEAN_VALUE | NUMBER(1,0) | NULL |  |  |
| 8 | APPLY_OTC | NUMBER(1,0) | NULL |  |  |
| 9 | APPLY_SFT | NUMBER(1,0) | NULL |  |  |
| 10 | APPLY_CCP | NUMBER(1,0) | NULL |  |  |

## T_AEC_STATIC_DATA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ORDINAL | NUMBER(9,0) | NOT NULL |  |  |
| 2 | CODE | VARCHAR2(100) | NOT NULL |  |  |
| 3 | SHORT_CODE | VARCHAR2(40) | NULL |  |  |
| 4 | STATIC_DATA_TYPE | VARCHAR2(100) | NOT NULL |  |  |
| 5 | DESCRIPTION | VARCHAR2(255) | NULL |  |  |

## T_AEC_TOXIC_ISINS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ISIN_CODE | VARCHAR2(80) | NOT NULL |  |  |
| 2 | UPDATED_ON | TIMESTAMP(6) | NULL |  |  |

## T_ANVIL_MOVEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ANVIL_MOVEMENTSID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CREATEDATE | DATE | NULL | `SYSDATE` |  |
| 3 | SENT2ANVILDATE | DATE | NULL |  |  |
| 4 | ALGOSETTLEMENTDATE | DATE | NULL |  |  |
| 5 | ANVIL_MATCH_CODE | NVARCHAR2(100) | NULL |  |  |
| 6 | ANVIL_TICKET | NVARCHAR2(20) | NULL |  |  |
| 7 | ANVIL_TRANTYPE | NVARCHAR2(20) | NULL |  |  |
| 8 | ALGO_MOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 9 | ALGO_AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 10 | ISIN | NVARCHAR2(40) | NULL |  |  |
| 11 | NOTIONAL | NUMBER(18,2) | NULL |  |  |
| 12 | CCY | NVARCHAR2(6) | NULL |  |  |
| 13 | ANVIL_STATE | NVARCHAR2(40) | NULL |  |  |
| 14 | ALGO_STATE | NVARCHAR2(40) | NULL |  |  |

## T_API_LOCK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | LOCK_ID | VARCHAR2(100) | NOT NULL |  |  |

## T_API_MOVEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | STATUS | NUMBER(5,0) | NOT NULL | `-1` |  |
| 4 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | ISRETURN | NUMBER(1,0) | NOT NULL |  |  |
| 6 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 7 | SETTLEMENTDATE | DATE | NULL |  |  |
| 8 | PHYSICALSETTLEMENT | NUMBER(1,0) | NULL |  |  |
| 9 | INSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 10 | INSTRUMENTIDENTIFIERTYPE | NVARCHAR2(2000) | NULL |  |  |
| 11 | REASON | NVARCHAR2(2000) | NULL |  |  |
| 12 | MARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 13 | AFFECTEDPARTY | NVARCHAR2(2000) | NULL |  |  |
| 14 | RECEIVINGBENEFICIARYNUMBER | NVARCHAR2(510) | NULL |  |  |
| 15 | RECEIVINGBENEFICIARYNAME | NVARCHAR2(510) | NULL |  |  |
| 16 | RECEIVINGACCOUNTNUMBER | NVARCHAR2(510) | NULL |  |  |
| 17 | RECEIVINGACCOUNTNAME | NVARCHAR2(510) | NULL |  |  |
| 18 | SENDINGBENEFICIARYNUMBER | NVARCHAR2(510) | NULL |  |  |
| 19 | SENDINGBENEFICIARYNAME | NVARCHAR2(510) | NULL |  |  |
| 20 | SENDINGACCOUNTNUMBER | NVARCHAR2(510) | NULL |  |  |
| 21 | SENDINGACCOUNTNAME | NVARCHAR2(510) | NULL |  |  |
| 22 | RECEIVINGCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 23 | SENDINGCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 24 | FAILURE_REASON | NVARCHAR2(200) | NULL |  |  |

## T_CMS_FAXOUTBOX

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | T_CMS_FAXOUTBOXID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SENTDATE | DATE | NOT NULL |  |  |
| 3 | RECEIVEDDATE | DATE | NULL |  |  |
| 4 | CMSSTATUS | NVARCHAR2(20) | NULL |  |  |
| 5 | COUNTERPARTYID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | COUNTERPARTYNAME | NVARCHAR2(510) | NULL |  |  |
| 7 | XMLMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 8 | XMLTEXT | CLOB | NOT NULL |  |  |
| 9 | DUEDATE | DATE | NULL |  |  |
| 10 | CTS | NUMBER | NULL |  |  |

## T_CMS_RECON_PERFORMED

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RP_AGREEMENT_ID | NUMBER | NULL |  |  |
| 2 | RP_AGREEMENT_NAME | VARCHAR2(255) | NULL |  |  |
| 3 | RP_RECON_PERFORMED_ON | DATE | NULL |  |  |
| 4 | RP_RECON_CREATED_ON | DATE | NULL |  |  |

## T_CMS_REPORTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TCR_ID | NUMBER | NOT NULL |  |  |
| 2 | TCR_CREATED_ON | DATE | NOT NULL |  |  |
| 3 | TCR_RECEIVEDDATE | DATE | NULL |  |  |
| 4 | TCR_REPORT_NAME | VARCHAR2(1020) | NOT NULL |  |  |
| 5 | TCR_FILENAME | VARCHAR2(1020) | NOT NULL |  |  |
| 6 | TCR_REPORT | BLOB | NULL |  |  |
| 7 | TCR_DELIVERED_ON | DATE | NULL |  |  |
| 8 | TCR_DELIVERED_TO | VARCHAR2(255) | NULL |  |  |

## T_CMS_STATIC_DATA_FROM_CMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SDFC_AGREEMENT_ID | NUMBER | NOT NULL |  |  |
| 2 | SDFC_NEXT_RECON_DATE | DATE | NOT NULL |  |  |
| 3 | SDFC_DATA_CHANGED | CHAR(1) | NOT NULL |  |  |
| 4 | SDFC_SEND_DATE | DATE | NULL |  |  |
| 5 | SDFC_CBASE_CONTACT | VARCHAR2(2000) | NULL |  |  |
| 6 | SDFC_FAX | VARCHAR2(30) | NULL |  |  |

## T_CMS_STATIC_DATA_TO_CMS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SDTC_AGREEMENT_ID | NUMBER | NOT NULL |  |  |
| 2 | SDTC_AGREEMENT_NAME | VARCHAR2(255) | NOT NULL |  |  |
| 3 | SDTC_NDG | NUMBER | NULL |  |  |
| 4 | SDTC_CP_SHORTCODE | VARCHAR2(255) | NULL |  |  |
| 5 | SDTC_MONITOR_STATUS | CHAR(1) | NOT NULL |  |  |
| 6 | SDTC_RECON_TOOL | VARCHAR2(40) | NOT NULL |  |  |
| 7 | SDTC_CP_TYPOLOGY | VARCHAR2(40) | NOT NULL |  |  |
| 8 | SDTC_TRADE_COUNT | NUMBER | NOT NULL |  |  |
| 9 | SDTC_CP_FREQUENCY | CHAR(1) | NULL |  |  |
| 10 | SDTC_RECON_FREQUENCY | CHAR(1) | NULL |  |  |
| 11 | SDTC_RECON_PROCESS | VARCHAR2(40) | NOT NULL |  |  |
| 12 | SDTC_LAST_RECON_DATE | DATE | NULL |  |  |
| 13 | SDTC_SEND_DATE | DATE | NULL |  |  |
| 14 | SDTC_NEXT_RECON_DATE | DATE | NULL |  |  |
| 15 | SDTC_TEMP_EXCLUDED | CHAR(1) | NULL |  |  |
| 16 | SDTC_HOLIDAY | DATE | NULL |  |  |
| 17 | SDTC_LEI | VARCHAR2(20) | NULL |  |  |
| 18 | SDTC_RECEIVED_DATE | DATE | NULL |  |  |
| 19 | SDTC_EMIR_DFA | VARCHAR2(20) | NOT NULL |  |  |
| 20 | SDTC_COLL_TRADE | VARCHAR2(40) | NOT NULL |  |  |
| 21 | SDTC_MARGIN_TYPE | VARCHAR2(20) | NULL |  |  |
| 22 | SDTC_COUNTERPARTY_ID | NUMBER | NULL |  |  |
| 23 | SDTC_DATE_WEEKLY | DATE | NULL |  |  |
| 24 | SDTC_DATE_QUARTERLY | DATE | NULL |  |  |
| 25 | SDTC_EMAIL | VARCHAR2(2000) | NULL |  |  |
| 26 | SDTC_CLIENT_MATCHCODE | VARCHAR2(30) | NULL |  |  |
| 27 | SDTC_LDB_ID | VARCHAR2(20) | NULL |  |  |
| 28 | SDTC_JURISDICTION | VARCHAR2(255) | NULL |  |  |
| 29 | SDTC_METHODOLOGY_USED | VARCHAR2(50) | NULL |  |  |
| 30 | SDTC_DATE_YEARLY | DATE | NULL |  |  |
| 31 | SDTC_COB_DATE | DATE | NULL |  |  |
| 32 | SDTC_AGREEMENT_CCY | NCHAR(6) | NULL |  |  |
| 33 | SDTC_IM_PHASE | VARCHAR2(50) | NULL |  |  |
| 34 | SDTC_CREDIT_OFFICER | VARCHAR2(255) | NULL |  |  |
| 35 | SDTC_RELATIONSHIP_MANAGER | VARCHAR2(255) | NULL |  |  |

## T_CMS_WBP_ALGO_RECON

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SDAR_PK | NUMBER | NOT NULL |  |  |
| 2 | SDAR_RECON_DATE | DATE | NOT NULL |  |  |
| 3 | SDAR_FILE | BLOB | NULL |  |  |
| 4 | SDAR_FILE_NAME | VARCHAR2(255) | NULL |  |  |
| 5 | SDAR_TYPE | VARCHAR2(100) | NULL |  |  |
| 6 | SDAR_CREATED_ON | DATE | NOT NULL |  |  |
| 7 | SDAR_CREATED_BY | VARCHAR2(40) | NOT NULL |  |  |
| 8 | SDAR_MODIFIED_ON | DATE | NULL |  |  |
| 9 | SDAR_MODIFIED_BY | VARCHAR2(40) | NULL |  |  |
| 10 | SDAR_LOADED_ON | DATE | NULL |  |  |
| 11 | SDAR_LOADED_BY | VARCHAR2(40) | NULL |  |  |
| 12 | SDAR_ERROR | CHAR(1) | NULL |  |  |

## T_CMT_AVISHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EVENTGROUPID | VARCHAR2(25) | NULL |  |  |
| 2 | USERID | CHAR(48) | NULL |  |  |
| 3 | EXECUTIONDATE | DATE | NULL |  |  |
| 4 | STATUS | CHAR(20) | NULL |  |  |
| 5 | CPTY | VARCHAR2(50) | NULL |  |  |
| 6 | CCY | CHAR(3) | NULL |  |  |
| 7 | AMOUNT | NUMBER(17,2) | NULL |  |  |
| 8 | POSTDIRECTION | CHAR(30) | NULL |  |  |
| 9 | VALUTA | DATE | NULL |  |  |
| 10 | CUSTODIANID | VARCHAR2(40) | NULL |  |  |
| 11 | ACCTNAME | VARCHAR2(60) | NULL |  |  |
| 12 | ACCTNUM | VARCHAR2(70) | NULL |  |  |
| 13 | BENEFNAME | VARCHAR2(60) | NULL |  |  |
| 14 | BENEFNUM | VARCHAR2(70) | NULL |  |  |
| 15 | THIRDBANK | VARCHAR2(40) | NULL |  |  |
| 16 | CPTYTYPE | VARCHAR2(20) | NULL |  |  |
| 17 | RADARSCREEN | CHAR(1) | NULL |  |  |

## T_CMT_CASHMOVEMENT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | T_CMT_CASHMOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CREATEDATE | DATE | NULL | `SYSDATE` |  |
| 3 | SETTLEMENTDATE | DATE | NOT NULL |  |  |
| 4 | BOOKINGVALUATIONDATE | DATE | NULL |  |  |
| 5 | ACCOUNT | NVARCHAR2(120) | NULL |  |  |
| 6 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 7 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 8 | ISDISTRIBUTION | NUMBER(1,0) | NULL |  |  |
| 9 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 10 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 11 | FXRATE | NUMBER(21,6) | NULL |  |  |
| 12 | PHYSICALSETTLEMENT | NUMBER(1,0) | NULL |  |  |
| 13 | MOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 14 | MOVEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 15 | STATUSALGO | NVARCHAR2(60) | NULL |  |  |
| 16 | ALGOSETTLEDDATE | DATE | NULL |  |  |
| 17 | STATUSBOOKING | NVARCHAR2(60) | NULL |  |  |
| 18 | RECEIVEDAMOUNT | NUMBER(19,4) | NULL |  |  |
| 19 | BOOKINGFILE | NVARCHAR2(1000) | NULL |  |  |
| 20 | BOOKINGRECEIVEDDATE | DATE | NULL |  |  |

## T_CMT_INTERESTBOOKED

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | T_CMT_INTERESTBOOKEDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CREATEDATE | DATE | NULL | `SYSDATE` |  |
| 3 | SETTLEMENTDATE | DATE | NOT NULL |  |  |
| 4 | ACCOUNT | NVARCHAR2(60) | NULL |  |  |
| 5 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 6 | AMOUNT | NUMBER(19,4) | NULL |  |  |
| 7 | CURRENCY | NVARCHAR2(6) | NULL |  |  |
| 8 | CURRENCYID | NUMBER(18,0) | NULL |  |  |
| 9 | FXRATE | NUMBER(21,6) | NULL |  |  |
| 10 | DISTRIBUTIONID | NUMBER(18,0) | NULL |  |  |
| 11 | STATUSALGO | NVARCHAR2(60) | NULL |  |  |
| 12 | ALGOSETTLEDDATE | DATE | NULL |  |  |
| 13 | ISSENTTOTPC | NUMBER(1,0) | NULL |  |  |
| 14 | SENTTOTPCDATE | DATE | NULL |  |  |
| 15 | ISSENTTOSAP | NUMBER(1,0) | NULL |  |  |
| 16 | SENTTOSAPDATE | DATE | NULL |  |  |

## T_CMT_MOVEMENTEMAILSENT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTEMAILSENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CREATEDATE | DATE | NULL | `SYSDATE` |  |
| 3 | MOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | ISDISTRIBUTION | NUMBER(1,0) | NULL |  |  |
| 5 | ISSENT100MIOEMAIL | NUMBER(1,0) | NULL |  |  |
| 6 | SENT100MIOEMAILDATE | DATE | NULL |  |  |
| 7 | ISSENTCHFEMAIL | NUMBER(1,0) | NULL |  |  |
| 8 | SENTCHFEMAILDATE | DATE | NULL |  |  |
| 9 | ISSENTPASEMAIL | NUMBER(1,0) | NULL |  |  |
| 10 | SENTPASEMAILDATE | DATE | NULL |  |  |

## T_CMT_MOVEMENTSENTTOANVIL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | T_CMT_MOVEMENTSENTTOANVILID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | ANVILMATCHCODE | NVARCHAR2(500) | NULL |  |  |
| 4 | SENTDATE | DATE | NOT NULL |  |  |
| 5 | SENDINGSTATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 6 | VALUTA | TIMESTAMP(6) | NULL |  |  |
| 7 | NOTIONAL | NUMBER(19,4) | NULL |  |  |

## T_CMT_PAYMENTHISTORY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | EVENTGROUPID | VARCHAR2(25) | NOT NULL |  |  |
| 2 | USERID | CHAR(48) | NULL |  |  |
| 3 | EXECUTIONDATE | DATE | NULL |  |  |
| 4 | STATUS | CHAR(20) | NULL |  |  |
| 5 | PAYMENTMETHOD | CHAR(20) | NULL |  |  |
| 6 | CPTY | VARCHAR2(560) | NULL |  |  |
| 7 | PRODUCT | VARCHAR2(20) | NULL |  |  |
| 8 | CCY | CHAR(3) | NULL |  |  |
| 9 | POSTDIRECTION | CHAR(30) | NULL |  |  |
| 10 | VALUTA | DATE | NULL |  |  |
| 11 | CUSTODIANID | VARCHAR2(40) | NULL |  |  |
| 12 | ACCTNAME | VARCHAR2(60) | NULL |  |  |
| 13 | ACCTNUM | VARCHAR2(70) | NULL |  |  |
| 14 | BENEFNAME | VARCHAR2(60) | NULL |  |  |
| 15 | BENEFNUM | VARCHAR2(70) | NULL |  |  |
| 16 | THIRDBANK | VARCHAR2(40) | NULL |  |  |
| 17 | CPTYTYPE | VARCHAR2(20) | NULL |  |  |
| 18 | AMOUNT | NUMBER(19,2) | NULL |  |  |
| 19 | RADARSCREEN | CHAR(1) | NULL |  |  |
| 20 | ENTITYMEMO | VARCHAR2(512) | NULL |  |  |
| 21 | NDG | VARCHAR2(20) | NULL |  |  |
| 22 | AGREEMENTNAME | VARCHAR2(255) | NULL |  |  |
| 23 | CREDITOFFICER | VARCHAR2(255) | NULL |  | Email address from KSB Contacts |

## T_IMC_ADDITIONAL_INFO

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | ORIGINATOR | VARCHAR2(600) | NULL |  |  |
| 3 | RECIPIENT | VARCHAR2(600) | NULL |  |  |
| 4 | TOTAL_ELIGIBLE_VALUE | VARCHAR2(80) | NULL |  |  |
| 5 | TOTAL_MESSAGE_VALUE | VARCHAR2(80) | NULL |  |  |
| 6 | TOTAL_STATEMENT_VALUE | VARCHAR2(80) | NULL |  |  |
| 7 | STATEMENTID | NUMBER(19,2) | NULL |  |  |

## T_IMC_ALL_SMR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VALUATIONDATETIME | TIMESTAMP(6) | NULL |  |  |
| 2 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 3 | COLLATERAL_NARRATIVE | VARCHAR2(1400) | NULL |  |  |

## T_IMC_BUNDESBANK_PLEDGE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER | NOT NULL | `"TUQCEUCBCORE01"."ISEQ$$_710319".nextval` |  |
| 2 | SENDER_MESSAGE_REF | VARCHAR2(64) | NULL |  |  |
| 3 | SENDER_COLL_TRANSACTION_REF | VARCHAR2(64) | NULL |  |  |
| 4 | CLIENT_COLL_INSTRUCTION_REF | VARCHAR2(64) | NULL |  |  |
| 5 | FORDERUNGSNUMMER | VARCHAR2(64) | NULL |  |  |
| 6 | EXECUTION_REQUEST_DATE | TIMESTAMP(6) | NOT NULL |  |  |
| 7 | COLL_INSTRUCTION_TYPE | VARCHAR2(16) | NOT NULL |  |  |
| 8 | CURRENCY | VARCHAR2(12) | NOT NULL |  |  |
| 9 | AMOUNT | NUMBER(19,2) | NOT NULL |  |  |
| 10 | ACCOUNT | VARCHAR2(140) | NULL |  |  |
| 11 | CREATED_BY | VARCHAR2(60) | NOT NULL |  |  |
| 12 | STATUS | VARCHAR2(80) | NOT NULL |  |  |
| 13 | WHEN_CREATED | TIMESTAMP(6) | NULL |  |  |
| 14 | WHEN_UPDATED | TIMESTAMP(6) | NULL |  |  |
| 15 | SWIFT_MESSAGE | CLOB | NULL |  |  |

## T_IMC_COLLATERAL_INSTRUCTION

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | AFFECTEDPOSITION | NUMBER(9,0) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(19,2) | NOT NULL |  |  |
| 4 | AGREEMENTNAME | VARCHAR2(1020) | NOT NULL |  |  |
| 5 | AGREEMENTTYPENAME | VARCHAR2(1020) | NOT NULL |  |  |
| 6 | CLIENTINSTRUCTIONREFERENCE | VARCHAR2(64) | NOT NULL |  |  |
| 7 | COLLATERALPOSITION | NUMBER(19,2) | NULL |  |  |
| 8 | COUNTERPARTYID | NUMBER(19,2) | NOT NULL |  |  |
| 9 | CREATIONDATE | TIMESTAMP(6) | NOT NULL |  |  |
| 10 | RECEIVE_PROVIDE_INDICATOR | VARCHAR2(16) | NOT NULL |  |  |
| 11 | CUSTODIANBIC | VARCHAR2(1020) | NOT NULL |  |  |
| 12 | CUSTODIANNAME | VARCHAR2(1020) | NULL | `'(decommissioned)'` |  |
| 13 | SETTLEMENTDATE | TIMESTAMP(6) | NOT NULL |  |  |
| 14 | MT527STATE | VARCHAR2(80) | NOT NULL |  |  |
| 15 | MT527TYPE | VARCHAR2(80) | NULL |  |  |
| 16 | MOVEMENTTYPE | NUMBER(9,0) | NULL |  |  |
| 17 | MOVEMENTWORKFLOWSTATE | NUMBER(10,0) | NOT NULL |  |  |
| 18 | ORIGINALMESSAGE | CLOB | NULL |  |  |
| 19 | PARTYIDENTIFIERRECEIVER | VARCHAR2(1020) | NOT NULL |  |  |
| 20 | PARTYIDENTIFIERSENDER | VARCHAR2(1020) | NOT NULL |  |  |
| 21 | PREVSENDERCOLLATERALREFERENCE | VARCHAR2(64) | NULL |  |  |
| 22 | PREVIOUSMESSAGEREFERENCE | VARCHAR2(64) | NULL |  |  |
| 23 | SEFAEACCOUNTRECEIVER | VARCHAR2(1020) | NOT NULL |  |  |
| 24 | SEFAEACCOUNTSENDER | VARCHAR2(1020) | NOT NULL |  |  |
| 25 | SENDERCOLLATERALREFERENCE | VARCHAR2(64) | NULL |  |  |
| 26 | SYSTEMCURRENCY | VARCHAR2(1020) | NOT NULL | `'EUR'` |  |
| 27 | TRANSACTIONAMOUNT | NUMBER(19,2) | NULL |  |  |
| 28 | TRANSACTIONCURRENCY | VARCHAR2(1020) | NOT NULL |  |  |
| 29 | UPDATEDTIME | TIMESTAMP(6) | NULL |  |  |
| 30 | USERNAME | VARCHAR2(1020) | NOT NULL |  |  |
| 31 | AGREEDAMOUNT | NUMBER(25,10) | NULL |  |  |
| 32 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 33 | COLL_INSTRUCTION_TYPE | VARCHAR2(4) | NOT NULL |  |  |
| 34 | MESSAGE_FUNCTION | VARCHAR2(4) | NOT NULL |  |  |
| 35 | WORKFLOWVARIATION | VARCHAR2(25) | NULL |  |  |
| 36 | TRIPARTYTRANSACTIONREFERENCE | VARCHAR2(16) | NULL |  |  |
| 37 | TRIPARTYINSTRUCTIONREFERENCE | VARCHAR2(16) | NULL |  |  |
| 38 | ELIGIBILITY_SET | VARCHAR2(120) | NULL |  |  |
| 39 | CANCEL_CAUSE | VARCHAR2(60) | NULL |  |  |
| 40 | CUSTODIAN | VARCHAR2(400) | NULL |  |  |
| 41 | SENDER_MESSAGE_REF | VARCHAR2(64) | NULL |  |  |

## T_IMC_COLLATERAL_STATUS_ADVICE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | CLIENTINSTRUCTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 3 | CLIENTTRANSACTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 4 | COLLATERALISED_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 5 | MT558STATE | VARCHAR2(80) | NOT NULL |  |  |
| 6 | NARRATIVE | VARCHAR2(1400) | NULL |  |  |
| 7 | ORIGINALMESSAGE | CLOB | NULL |  |  |
| 8 | MT558REASONCODE | VARCHAR2(80) | NULL |  |  |
| 9 | REMAINING_COLATERALISED_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 10 | REMAINING_SETTLED_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 11 | REQUIRED_MARGIN_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 12 | SENDERMESSAGEREFERENCE | VARCHAR2(64) | NOT NULL |  |  |
| 13 | SETTLED_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 14 | TRIPARTYINSTRUCTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 15 | TRIPARTYTRANSACTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 16 | UPDATEDTIME | TIMESTAMP(6) | NULL |  |  |
| 17 | FK_COLLATERAL_INSTRUCTION | NUMBER(19,2) | NULL |  |  |

## T_IMC_COLLEXPOSURE_STM

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | CUSTODIAN | VARCHAR2(128) | NULL |  |  |
| 3 | MESSAGEFREQUENCY | VARCHAR2(80) | NULL |  |  |
| 4 | MESSAGEPREPARATIONDATETIME | TIMESTAMP(6) | NULL |  |  |
| 5 | ORIGINALMESSAGE | CLOB | NULL |  |  |
| 6 | SENDERMESSAGEREFERENCE | VARCHAR2(80) | NULL |  |  |
| 7 | STATEMENT | VARCHAR2(80) | NULL |  |  |
| 8 | UPDATEDTIME | TIMESTAMP(6) | NULL |  |  |
| 9 | EXPTYPESUMM_ID | NUMBER(19,2) | NOT NULL |  |  |
| 10 | ALLSUMMY_ID | NUMBER(19,2) | NOT NULL |  |  |
| 11 | RECEIVE_PROVIDE_INDICATOR | VARCHAR2(16) | NULL |  |  |
| 12 | SENDER_MESSAGE_REF | VARCHAR2(80) | NULL |  |  |
| 13 | PAGE_NUMBER | NUMBER(5,0) | NULL |  |  |
| 14 | PAGE_CONTINUATION | VARCHAR2(16) | NULL |  |  |
| 15 | COLLATERAL_PARTY | VARCHAR2(1400) | NULL |  |  |
| 16 | ACCOUNT | VARCHAR2(140) | NULL |  |  |

## T_IMC_COLL_TRANSACTION

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(22,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | CUSTODIAN | VARCHAR2(60) | NOT NULL |  |  |
| 4 | OUR_TRANSACTION_REF | VARCHAR2(16) | NOT NULL |  |  |
| 5 | TRIPARTYTRANSACTIONREFERENCE | VARCHAR2(16) | NULL |  |  |
| 6 | TRANSACTION_STATE | VARCHAR2(25) | NOT NULL |  |  |
| 7 | MOVEMENT_MESSAGE_ID | NUMBER(22,0) | NULL |  |  |
| 8 | CANCELLATION_MESSAGE_ID | NUMBER(22,0) | NULL |  |  |
| 9 | LAST_MODIFIED | TIMESTAMP(6) | NOT NULL |  |  |
| 10 | TRADE_DATE | DATE | NULL |  |  |
| 11 | LAST_SUCCESSFUL_INSTR_ID | NUMBER(22,0) | NULL |  |  |

## T_IMC_CTPY_SMR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CTPYID | VARCHAR2(600) | NULL |  |  |
| 2 | TOTAL_VAL_OWN_COLLATERAL | VARCHAR2(80) | NULL |  |  |
| 3 | TOTAL_VAL_REUSED_COLLATERAL | VARCHAR2(80) | NULL |  |  |
| 4 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 5 | EXPTYPEID | NUMBER(19,2) | NULL |  |  |
| 6 | TRIPARTY_AGENT | VARCHAR2(600) | NULL |  |  |
| 7 | ELIGIBILITY_SET | VARCHAR2(120) | NULL |  |  |

## T_IMC_CUSTODIAN_WORKFLOW

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | CLIENTCOLLATERALINSTRUCTION | VARCHAR2(64) | NULL |  |  |
| 3 | CLIENTCOLLATERALTRANSACTION | VARCHAR2(64) | NULL |  |  |
| 4 | CUSTODIAN | VARCHAR2(1020) | NULL |  |  |
| 5 | CUSTODIANCOCKPITSTATUS | VARCHAR2(1020) | NULL |  |  |
| 6 | LATESTMESSAGESTATUS | VARCHAR2(1020) | NULL |  |  |
| 7 | UPDATEDBYMESSAGETYPE | VARCHAR2(1020) | NULL |  |  |
| 8 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 9 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |

## T_IMC_EXPSTM_SUMMARY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | INCOMING_COLLATERAL_PENDING | VARCHAR2(80) | NULL |  |  |
| 3 | MARGIN_AMMOUNT | VARCHAR2(80) | NULL |  |  |
| 4 | MARGINAMOUNTPERCENTAGE | NUMBER(21,0) | NULL |  |  |
| 5 | OUTGOING_COLLATERAL_PENDING | VARCHAR2(80) | NULL |  |  |
| 6 | REQUIRED_COLLATERAL | VARCHAR2(80) | NULL |  |  |
| 7 | TOTAL_CASH_FAILED_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 8 | TOTAL_EXPOSURE_AMMOUNT | VARCHAR2(80) | NULL |  |  |
| 9 | TOTAL_POSTED_COLLATERAL | VARCHAR2(80) | NULL |  |  |

## T_IMC_EXP_SMR

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | TOTAL_VAL_OWN_COLLATERAL | VARCHAR2(80) | NULL |  |  |
| 2 | TOTAL_VAL_REUSED_COLLATERAL | VARCHAR2(80) | NULL |  |  |
| 3 | PK | NUMBER(19,2) | NOT NULL |  |  |

## T_IMC_FIA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | COUPON_DATE | DATE | NULL |  |  |
| 3 | PRICE_CURRENCYCODE | VARCHAR2(12) | NULL |  |  |
| 4 | CURRENCY_DENO | VARCHAR2(12) | NULL |  |  |
| 5 | EXPIRY_DATE | DATE | NULL |  |  |
| 6 | FIAN_NARRATIVE | VARCHAR2(600) | NULL |  |  |
| 7 | QUANTITY | NUMBER(25,10) | NULL |  |  |
| 8 | INSTRUMENTTYPE | VARCHAR2(1020) | NULL |  |  |
| 9 | FLAG_QUALIFIER | VARCHAR2(80) | NULL |  |  |
| 10 | FLAG | VARCHAR2(4) | NULL |  |  |
| 11 | RESET_DATE | DATE | NULL |  |  |
| 12 | INDICATOR | VARCHAR2(80) | NULL |  |  |
| 13 | ISIN | VARCHAR2(48) | NULL |  |  |
| 14 | ISSUE_DATE | DATE | NULL |  |  |
| 15 | MATURITY_DATE | DATE | NULL |  |  |
| 16 | NUMBER_IDENT | VARCHAR2(120) | NULL |  |  |
| 17 | NUMBER_IDENT_QUALIFIER | VARCHAR2(80) | NULL |  |  |
| 18 | PLACE | VARCHAR2(200) | NULL |  |  |
| 19 | PRICE_QUALIFIER | VARCHAR2(80) | NULL |  |  |
| 20 | PRICE_CODE | VARCHAR2(80) | NULL |  |  |
| 21 | PRICE | NUMBER(25,10) | NULL |  |  |
| 22 | QUANTITY_CODE | VARCHAR2(80) | NULL |  |  |
| 23 | QUANTITY_QUALIFIER | VARCHAR2(80) | NULL |  |  |
| 24 | RATE_QUALIFIER | VARCHAR2(80) | NULL |  |  |
| 25 | RATE_VALUE | NUMBER(25,10) | NULL |  |  |
| 26 | SECURITYDESCRIPTOR | VARCHAR2(1020) | NULL |  |  |
| 27 | TYPE_FIN | VARCHAR2(200) | NULL |  |  |
| 28 | FINID | NUMBER(19,2) | NULL |  |  |

## T_IMC_FIN

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | ACRU | VARCHAR2(80) | NULL |  |  |
| 3 | AGGR_BALANCE | NUMBER(25,10) | NOT NULL |  |  |
| 4 | AVAI_BALANCE | NUMBER(25,10) | NULL |  |  |
| 5 | BOOK | VARCHAR2(80) | NULL |  |  |
| 6 | CAOP | VARCHAR2(16) | NULL |  |  |
| 7 | COVA | VARCHAR2(80) | NULL |  |  |
| 8 | EXCH_CODE | VARCHAR2(56) | NULL |  |  |
| 9 | EXCH_RATE | NUMBER(25,10) | NULL |  |  |
| 10 | INSTRUMENTTYPE | VARCHAR2(1020) | NULL |  |  |
| 11 | HOLD_NARRATIVE | VARCHAR2(600) | NULL |  |  |
| 12 | HOLD | VARCHAR2(80) | NULL |  |  |
| 13 | ISIN | VARCHAR2(48) | NULL |  |  |
| 14 | NAVL_BALANCE | NUMBER(25,10) | NULL |  |  |
| 15 | DAAC | NUMBER(10,0) | NULL |  |  |
| 16 | PRICE_CODE | VARCHAR2(16) | NULL |  |  |
| 17 | PRICE_CURRENCY | VARCHAR2(12) | NULL |  |  |
| 18 | PRICE_DATE | DATE | NULL |  |  |
| 19 | PRICE_QUALIFIER | VARCHAR2(16) | NULL |  |  |
| 20 | PRICE_SOURCE | VARCHAR2(160) | NULL |  |  |
| 21 | PRICE_SOURCECODE | VARCHAR2(16) | NULL |  |  |
| 22 | PRICE_VALUE | NUMBER(25,10) | NULL |  |  |
| 23 | SECURITYDESCRIPTOR | VARCHAR2(1020) | NULL |  |  |
| 24 | SUBSAFEID | NUMBER(19,2) | NULL |  |  |

## T_IMC_LINK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | LINK | VARCHAR2(200) | NULL |  |  |
| 3 | REFERENCE | VARCHAR2(80) | NULL |  |  |
| 4 | LINKID | NUMBER(19,2) | NULL |  |  |

## T_IMC_QUANTITY_BREAKDOWN

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | BOOK | VARCHAR2(80) | NULL |  |  |
| 3 | HOLD | VARCHAR2(80) | NULL |  |  |
| 4 | LOTS_BALANCE | NUMBER(25,10) | NULL |  |  |
| 5 | LOTS_PRICE_CODE | VARCHAR2(16) | NULL |  |  |
| 6 | LOTS_DATE | TIMESTAMP(6) | NULL |  |  |
| 7 | LOTS_NUMBER | VARCHAR2(120) | NULL |  |  |
| 8 | LOTS_PRICE_VALUE | NUMBER(25,10) | NULL |  |  |
| 9 | PRICE_INDICATOR | VARCHAR2(16) | NULL |  |  |
| 10 | SUBBALANCEID | NUMBER(19,2) | NULL |  |  |
| 11 | FINID | NUMBER(19,2) | NULL |  |  |

## T_IMC_SCHEDULED_CANCEL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(18,0) | NOT NULL |  |  |
| 2 | CUSTODIAN | VARCHAR2(60) | NOT NULL |  |  |
| 3 | PLAN_DATE | DATE | NOT NULL |  |  |
| 4 | IS_DONE | NUMBER(1,0) | NOT NULL |  |  |
| 5 | PLANNED_EXECUTION | TIMESTAMP(6) | NOT NULL |  |  |
| 6 | ACTUAL_EXECUTION | TIMESTAMP(6) | NULL |  |  |
| 7 | NUM_INSTRUCTIONS_CANCELLED | NUMBER(9,0) | NULL |  |  |

## T_IMC_SECURDTL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | INSTRUMENTTYPE | VARCHAR2(1020) | NULL |  |  |
| 3 | ISIN | VARCHAR2(48) | NULL |  |  |
| 4 | MARKETPRICE | NUMBER(27,8) | NULL |  |  |
| 5 | SECURITYCURRENCY | VARCHAR2(1020) | NULL |  |  |
| 6 | SECURITYDESCRIPTOR | VARCHAR2(1020) | NULL |  |  |
| 7 | SECURITYQUANTITY | NUMBER(19,2) | NULL |  |  |
| 8 | VALDTLSID | NUMBER(19,2) | NULL |  |  |
| 9 | PRICE_QUALIFIER | VARCHAR2(16) | NULL |  |  |
| 10 | PRICE_CODE | VARCHAR2(16) | NULL |  |  |
| 11 | PRICE_CURRENCY | VARCHAR2(12) | NULL |  |  |
| 12 | XEMAC_TYPE | VARCHAR2(4) | NULL |  |  |
| 13 | XEMAC_BASKET | VARCHAR2(40) | NULL |  |  |
| 14 | XEMAC_PLACE_OF_SETTLEMENT | VARCHAR2(40) | NULL |  |  |
| 15 | XEMAC_SECURITY_DESCRIPTION | VARCHAR2(400) | NULL |  |  |
| 16 | XEMAC_ALLOCATION_TYPE | VARCHAR2(200) | NULL |  |  |
| 17 | SAFEKEEPING_ACCOUNT | VARCHAR2(600) | NULL |  |  |

## T_IMC_STATEMENT_OF_HOLDING

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | ACTIVITYFLAG | VARCHAR2(4) | NOT NULL |  |  |
| 3 | CONTINUATION_INDICATOR | VARCHAR2(16) | NOT NULL |  |  |
| 4 | STATEMENTFREQUENCY | VARCHAR2(16) | NOT NULL |  |  |
| 5 | MESSAGE_FUNCTION | VARCHAR2(16) | NOT NULL |  |  |
| 6 | ORIGINALMESSAGE | CLOB | NULL |  |  |
| 7 | PAGE_NUMBER | NUMBER(10,0) | NOT NULL |  |  |
| 8 | PREPARATIONDATETIME | TIMESTAMP(6) | NULL |  |  |
| 9 | SAFEKEEPINGACCOUNT | VARCHAR2(240) | NOT NULL |  |  |
| 10 | SENDERMESSAGEREFERENCE | VARCHAR2(80) | NOT NULL |  |  |
| 11 | STATEMENT_NR | VARCHAR2(1020) | NULL |  |  |
| 12 | STATEMENTBASIS | VARCHAR2(16) | NOT NULL |  |  |
| 13 | STATEMENTCODE | VARCHAR2(16) | NOT NULL |  |  |
| 14 | STATEMENTDATETIME | TIMESTAMP(6) | NOT NULL |  |  |
| 15 | STATEMENTTYPE | VARCHAR2(16) | NOT NULL |  |  |
| 16 | CONS | VARCHAR2(4) | NOT NULL |  |  |
| 17 | LAST_UPDATE | TIMESTAMP(6) | NOT NULL |  |  |
| 18 | CUSTODIAN | VARCHAR2(512) | NULL |  |  |
| 19 | ALGO_IMPORTRECORDID | NUMBER(18,0) | NULL |  |  |
| 20 | ALGO_IMPORT_DATETIME | TIMESTAMP(6) | NULL |  |  |
| 21 | IS_CURRENT_IN_ALGO | NUMBER(1,0) | NULL |  |  |
| 22 | PURPOSE | VARCHAR2(40) | NULL |  |  |

## T_IMC_SUB_BALANCE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | ACRU | VARCHAR2(80) | NULL |  |  |
| 3 | AGGR_BALANCE | NUMBER(25,10) | NOT NULL |  |  |
| 4 | AVAI_BALANCE | NUMBER(25,10) | NULL |  |  |
| 5 | BOOK | VARCHAR2(80) | NULL |  |  |
| 6 | PRICE_CURRENCYCODE | VARCHAR2(12) | NULL |  |  |
| 7 | COVA | VARCHAR2(80) | NULL |  |  |
| 8 | EXCH_CODE | VARCHAR2(56) | NULL |  |  |
| 9 | EXCH_RATE | NUMBER(25,10) | NULL |  |  |
| 10 | COLA | VARCHAR2(16) | NULL |  |  |
| 11 | HOLD | VARCHAR2(80) | NULL |  |  |
| 12 | NAVL_BALANCE | NUMBER(25,10) | NULL |  |  |
| 13 | DAAC | NUMBER(10,0) | NULL |  |  |
| 14 | PLACE | VARCHAR2(200) | NULL |  |  |
| 15 | PLACE_CODE | VARCHAR2(16) | NULL |  |  |
| 16 | PLACE_QUALIFIER | VARCHAR2(80) | NULL |  |  |
| 17 | PRICE_CODE | VARCHAR2(16) | NULL |  |  |
| 18 | PRICE_QUALIFIER | VARCHAR2(16) | NULL |  |  |
| 19 | PRICE_VALUE | NUMBER(25,10) | NULL |  |  |
| 20 | PRICE_DATE | TIMESTAMP(6) | NULL |  |  |
| 21 | SUBB_NARRATIVE | VARCHAR2(600) | NULL |  |  |
| 22 | FINID | NUMBER(19,2) | NULL |  |  |

## T_IMC_SUB_SAFE_ACCOUNT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | ACTIVITYFLAG | VARCHAR2(4) | NULL |  |  |
| 3 | PARTY | VARCHAR2(240) | NULL |  |  |
| 4 | SAFEPLACE | VARCHAR2(200) | NULL |  |  |
| 5 | SAFEACCOUNT | VARCHAR2(200) | NULL |  |  |
| 6 | STATEMENTID | NUMBER(19,2) | NULL |  |  |

## T_IMC_TMP_TPY_INSTR_REF

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK_COLLATERAL_STATUS_ADVICE | NUMBER(19,2) | NOT NULL |  |  |
| 2 | CLIENTTRANSACTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 3 | CLIENTINSTRUCTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 4 | TRIPARTYTRANSACTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 5 | TRIPARTYINSTRUCTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 6 | CUST | VARCHAR2(1020) | NULL |  |  |

## T_IMC_TMP_TPY_TX_REF

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK_COLLATERAL_STATUS_ADVICE | NUMBER(19,2) | NOT NULL |  |  |
| 2 | CLIENTTRANSACTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 3 | TRIPARTYTRANSACTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 4 | CUST | VARCHAR2(1020) | NULL |  |  |

## T_IMC_TRANDTL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | CLIENTTRANSACTIONREFERENCE | VARCHAR2(64) | NOT NULL |  |  |
| 3 | CUSTODIANTRANSACTIONREFERENCE | VARCHAR2(64) | NOT NULL |  |  |
| 4 | EXECUTIONREQUESTDATE | TIMESTAMP(6) | NULL |  |  |
| 5 | INCOMING_COLLATERAL_PENDING | VARCHAR2(80) | NULL |  |  |
| 6 | MARGIN_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 7 | MARGIN_AMOUNT_PERCENTAGE | NUMBER(19,2) | NULL |  |  |
| 8 | OUTGOING_COLLATERAL_PENDING | VARCHAR2(80) | NULL |  |  |
| 9 | PRICING_RATE_AGREED | NUMBER(19,2) | NULL |  |  |
| 10 | REQUIRED_COLLATERAL | VARCHAR2(80) | NULL |  |  |
| 11 | TOTAL_FAILED_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 12 | TOTAL_EXPOSURE_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 13 | TOTAL_POSTED_COLLATERAL | VARCHAR2(80) | NULL |  |  |
| 14 | TRANSACTION_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 15 | TRANSACTIONCOVERAGESTATUS | VARCHAR2(80) | NULL |  |  |
| 16 | CTPTYSUMMID | NUMBER(19,2) | NULL |  |  |
| 17 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 18 | ALGO_IMPORTRECORDID | NUMBER(18,0) | NULL |  |  |
| 19 | ALGO_IMPORT_DATETIME | TIMESTAMP(6) | NULL |  |  |
| 20 | IS_CURRENT_IN_ALGO | NUMBER(1,0) | NULL |  |  |

## T_IMC_VALDTL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | ACCURED_INTEREST_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 3 | AKT_MARKET_VAL_BEFOREVALUATION | VARCHAR2(80) | NULL |  |  |
| 4 | AKT_MARKET_VAL_POSTVALUATION | VARCHAR2(80) | NULL |  |  |
| 5 | CLEAN_PRICE_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 6 | EXCHANGECODE | VARCHAR2(80) | NULL |  |  |
| 7 | EXCHANGERATE | NUMBER(29,8) | NULL |  |  |
| 8 | MARKET_VAL_BEFOREVALUATION | VARCHAR2(80) | NULL |  |  |
| 9 | MARKET_VAL_POSTVALUATION | VARCHAR2(80) | NULL |  |  |
| 10 | SETTLEMENTDATE | TIMESTAMP(6) | NULL |  |  |
| 11 | VALUATIONFACTOR | NUMBER(29,8) | NULL |  |  |
| 12 | TRANSDTLID | NUMBER(19,2) | NULL |  |  |

## T_IMC_VM_LOCKUP_AGREEMENT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(22,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |

## T_JOB_STATUS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | JOB_STATUSID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | IMPORTDATE | DATE | NULL | `SYSDATE` |  |
| 3 | JOB_NAME | NVARCHAR2(40) | NULL |  |  |
| 4 | TXT | NVARCHAR2(1000) | NULL |  |  |
| 5 | STATUS | NUMBER(19,2) | NULL |  |  |
| 6 | T2 | NUMBER(19,2) | NULL |  |  |
| 7 | ROOT_CAUSE_IM | NVARCHAR2(200) | NULL |  |  |
| 8 | ROOT_CAUSE_VM | NVARCHAR2(200) | NULL |  |  |

## T_PAS_SENT_MOVEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | SENDDATE | DATE | NULL | `SYSDATE` |  |
| 3 | STATUS | NUMBER(18,0) | NULL |  |  |
| 4 | DISTRIBUTION | NUMBER(1,0) | NOT NULL |  |  |

## T_QCE_CT_BUCKETREQUESTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REQUEST_ID | NUMBER(19,2) | NOT NULL | `"TUQCEUCBCORE01"."ISEQ$$_713573".nextval` |  |
| 2 | CREATED | TIMESTAMP(6) | NULL |  |  |
| 3 | IMPORT_STARTED | TIMESTAMP(6) | NULL |  |  |
| 4 | IMPORT_ENDED | TIMESTAMP(6) | NULL |  |  |
| 5 | REQUEST_STATUS | NUMBER(10,0) | NULL |  |  |
| 6 | FILE_NAME | NVARCHAR2(100) | NULL |  |  |
| 7 | USER_ID | NVARCHAR2(20) | NULL |  |  |
| 8 | VARIANT | NUMBER(10,0) | NULL |  |  |
| 9 | IMPORT_RECORD_ID | NUMBER(18,0) | NULL |  |  |

## T_QCE_CT_BUCKETREQUESTSXAGREEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REQUEST_ID | NUMBER(19,2) | NOT NULL |  |  |
| 2 | AGREEMENT_ID | NUMBER(19,2) | NOT NULL |  |  |

## T_QCE_CT_MOVEMENTOVERRIDES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MOVEMENT_ID | NUMBER(19,0) | NULL |  |  |
| 2 | REASON | VARCHAR2(255) | NULL |  |  |
| 3 | STATUS | NUMBER(10,0) | NULL | `1` | possible values: 1 [new] ; 2 [processed] |
| 4 | RECEIVED | TIMESTAMP(6) | NULL |  |  |
| 5 | PROCESSED | TIMESTAMP(6) | NULL |  |  |
| 6 | USER_ID | NUMBER(19,0) | NULL |  |  |
| 7 | DISTRIBUTION_ID | NUMBER(19,0) | NULL |  |  |
| 8 | MOVEMENTOVERRIDE_ID | NUMBER(19,0) | NOT NULL | `"TUQCEUCBCORE01"."ISEQ$$_710111".nextval` |  |

## T_QCE_CT_TRIOPTIMA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REPORT_ID | NUMBER | NOT NULL |  |  |
| 2 | REPORT | BLOB | NULL |  |  |
| 3 | ORIGINAL_FILE_NAME | VARCHAR2(255) | NOT NULL |  |  |
| 4 | SHORT_CODE | VARCHAR2(255) | NOT NULL |  |  |
| 5 | AGREEMENT_NAME | VARCHAR2(255) | NOT NULL |  |  |
| 6 | TYPE | VARCHAR2(255) | NOT NULL |  |  |
| 7 | MTM_DATE | DATE | NOT NULL |  |  |
| 8 | UPLOAD_TO_TRIOPTIMA | TIMESTAMP(6) | NULL |  |  |
| 9 | FILE_NAME_UPLOADED | VARCHAR2(255) | NULL |  |  |
| 10 | USERNAME | VARCHAR2(255) | NULL |  |  |
| 11 | UPLOAD_TO_ARCHIVE_PLUS | TIMESTAMP(6) | NULL |  |  |
| 12 | UPLOAD_FAILED | NUMBER(1,0) | NOT NULL |  |  |
| 13 | UPLOAD_ATTEMPTS | NUMBER(2,0) | NOT NULL |  |  |
| 14 | UPLOAD_TO_CT | DATE | NOT NULL | `sysdate` |  |

## T_VOSI_ISIN_BLACKLIST

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ISIN | NVARCHAR2(40) | NULL |  |  |
| 2 | SOURCE | NUMBER | NOT NULL | `1` |  |

## T_WTM_LOCK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | LOCK_ID | VARCHAR2(100) | NOT NULL |  |  |

## T_WTM_REQUEST

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | REQUEST_ID | NUMBER | NOT NULL | `"TUQCEUCBCORE01"."ISEQ$$_710263".nextval` |  |
| 2 | TRANSFER_REFERENCE | NVARCHAR2(60) | NOT NULL |  |  |
| 3 | DISTRIBUTIONID | NUMBER | NULL |  |  |
| 4 | MOVEMENTID | NUMBER | NULL |  |  |
| 5 | CANCELS_REQUEST_ID | NUMBER | NULL |  |  |
| 6 | WHEN_SENT | TIMESTAMP(6) | NOT NULL |  |  |
| 7 | PROCESSING_ORG | NVARCHAR2(10) | NOT NULL |  |  |
| 8 | CAPITAL_ACCOUNT | NVARCHAR2(28) | NOT NULL |  |  |
| 9 | TRANSFER_REFERENCE_STORNO | NVARCHAR2(60) | NULL |  |  |
| 10 | PEER_SIMULATION_MODUS | NVARCHAR2(4) | NOT NULL |  |  |
| 11 | STORNO_FLAG | NVARCHAR2(2) | NULL |  |  |
| 12 | PEER_INCOME_TYPE | NVARCHAR2(10) | NOT NULL |  |  |
| 13 | INTEREST_AMOUNT_EUR | NUMBER(19,2) | NOT NULL |  |  |
| 14 | INTEREST_AMOUNT_CCY | NUMBER(19,2) | NULL |  |  |
| 15 | INTEREST_CCY | NVARCHAR2(6) | NULL |  |  |
| 16 | INTEREST_VALUE_DATE | DATE | NOT NULL |  |  |
| 17 | DELIVERY_SYSTEM | NVARCHAR2(16) | NOT NULL |  |  |
| 18 | CONVERSION_RATE | NUMBER(19,9) | NULL |  |  |
| 19 | CUSTOMER_NUMBER | NVARCHAR2(18) | NOT NULL |  |  |
| 20 | FLAG_POSTING_VOUCHER | NVARCHAR2(2) | NOT NULL |  |  |
| 21 | INTEREST_START_DATE | DATE | NOT NULL |  |  |
| 22 | INTEREST_END_DATE | DATE | NOT NULL |  |  |
| 23 | NARRATIVE_KEY | NVARCHAR2(4) | NULL |  |  |
| 24 | SUBJECT_AREA | NVARCHAR2(4) | NULL |  |  |
| 25 | SUBJECT_SUB_AREA | NVARCHAR2(4) | NULL |  |  |
| 26 | XML_TEXT | CLOB | NULL |  |  |

## T_WTM_RESPONSE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | RESPONSE_ID | NUMBER | NOT NULL | `"TUQCEUCBCORE01"."ISEQ$$_710214".nextval` |  |
| 2 | WHEN_RECEIVED | TIMESTAMP(6) | NOT NULL |  |  |
| 3 | REQUEST_ID | NUMBER | NULL |  |  |
| 4 | DISTRIBUTIONID | NUMBER | NULL |  |  |
| 5 | MOVEMENTID | NUMBER | NULL |  |  |
| 6 | PROCESSING_ORG | NVARCHAR2(10) | NOT NULL |  |  |
| 7 | TRANSFER_REFERENCE | NVARCHAR2(60) | NOT NULL |  |  |
| 8 | TRANSFER_REFERENCE_STORNO | NVARCHAR2(60) | NULL |  |  |
| 9 | STORNO_FLAG | NVARCHAR2(2) | NULL |  |  |
| 10 | INTEREST_VALUE_DATE | DATE | NOT NULL |  |  |
| 11 | RETURN_CODE | NVARCHAR2(4) | NOT NULL |  |  |
| 12 | REASON_CODE | NVARCHAR2(12) | NULL |  |  |
| 13 | ERROR_TEXT | NVARCHAR2(240) | NULL |  |  |
| 14 | EXECUTION_STATUS | NVARCHAR2(6) | NOT NULL |  |  |
| 15 | ERROR_HANDLING_STATUS | NVARCHAR2(6) | NULL |  |  |
| 16 | TAX_EXEMPTION | NVARCHAR2(10) | NULL |  |  |
| 17 | ALLOWANCE_AMOUNT | NUMBER(19,2) | NULL |  |  |
| 18 | TAX_NETTO_BASIS_EUR | NUMBER(19,2) | NULL |  |  |
| 19 | OTHER_DEBIT_LOSS_EUR | NUMBER(19,2) | NULL |  |  |
| 20 | TAX_EXEMPT_AMOUNT_EUR | NUMBER(19,2) | NULL |  |  |
| 21 | FLAT_TAX_EUR | NUMBER(19,2) | NULL |  |  |
| 22 | FLAT_TAX_RATE | NUMBER(15,8) | NULL |  |  |
| 23 | SOLI_TAX_EUR | NUMBER(19,2) | NULL |  |  |
| 24 | SOLI_TAX_RATE | NUMBER(15,8) | NULL |  |  |
| 25 | CHURCH_TAX_EUR1 | NUMBER(19,2) | NULL |  |  |
| 26 | RELIGIOUS_DENOMINATION1 | NVARCHAR2(4) | NULL |  |  |
| 27 | CHURCH_TAX_RATE1 | NUMBER(15,8) | NULL |  |  |
| 28 | CHURCH_TAX_COUNTRY1 | NVARCHAR2(4) | NULL |  |  |
| 29 | CHURCH_TAX_ACCOUNT1 | NVARCHAR2(28) | NULL |  |  |
| 30 | CHURCH_PRO_TAX_RATE1 | NUMBER(15,8) | NULL |  |  |
| 31 | CHURCH_TAX_EUR2 | NUMBER(19,2) | NULL |  |  |
| 32 | RELIGIOUS_DENOMINATION2 | NVARCHAR2(4) | NULL |  |  |
| 33 | CHURCH_TAX_RATE2 | NUMBER(15,8) | NULL |  |  |
| 34 | CHURCH_TAX_COUNTRY2 | NVARCHAR2(4) | NULL |  |  |
| 35 | CHURCH_TAX_ACCOUNT2 | NVARCHAR2(28) | NULL |  |  |
| 36 | CHURCH_PRO_TAX_RATE2 | NUMBER(15,8) | NULL |  |  |
| 37 | B_TAX_NETTO_BASIS | NUMBER(19,2) | NULL |  |  |
| 38 | B_FLAT_TAX_AMOUNT | NUMBER(19,2) | NULL |  |  |
| 39 | B_SOLI_AMOUNT | NUMBER(19,2) | NULL |  |  |
| 40 | B_CHURCH_TAX_AMOUNT | NUMBER(19,2) | NULL |  |  |
| 41 | B_OTHER_DEBIT_LOSS_EUR | NUMBER(19,2) | NULL |  |  |
| 42 | B_TAX_EXEMPT_AMOUNT_EUR | NUMBER(19,2) | NULL |  |  |
| 43 | A_TAX_NETTO_BASIS | NUMBER(19,2) | NULL |  |  |
| 44 | A_FLAT_TAX_AMOUNT | NUMBER(19,2) | NULL |  |  |
| 45 | A_SOLI_AMOUNT | NUMBER(19,2) | NULL |  |  |
| 46 | A_CHURCH_TAX_AMOUNT | NUMBER(19,2) | NULL |  |  |
| 47 | A_OTHER_DEBIT_LOSS_EUR | NUMBER(19,2) | NULL |  |  |
| 48 | A_TAX_EXEMPT_AMOUNT_EUR | NUMBER(19,2) | NULL |  |  |
| 49 | NO_TAX_VOUCHER | NUMBER(10,0) | NULL |  |  |
| 50 | NON_ASSESSMENT_CERTIFICATE | NVARCHAR2(32) | NULL |  |  |
| 51 | NO_ZASTER | NVARCHAR2(20) | NULL |  |  |
| 52 | NO_NV | NVARCHAR2(18) | NULL |  |  |
| 53 | NV_TYPE | NVARCHAR2(4) | NULL |  |  |
| 54 | XML_TEXT | CLOB | NULL |  |  |

## T_WTM_SENDSTATE

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | SENDSTATEID | NUMBER | NOT NULL | `"TUQCEUCBCORE01"."ISEQ$$_709906".nextval` |  |
| 2 | DISTRIBUTIONID | NUMBER | NULL |  |  |
| 3 | MOVEMENTID | NUMBER | NULL |  |  |
| 4 | SENDSTATE | NVARCHAR2(60) | NOT NULL |  |  |
| 5 | LAST_REQUEST_ID | NUMBER | NULL |  |  |
| 6 | WHEN_UPDATED | TIMESTAMP(6) | NOT NULL |  |  |
| 7 | ADDITIONAL_INFORMATION | NVARCHAR2(1000) | NULL |  |  |

## UNASSIGNEDOTCTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | UNASSIGNEDOTCTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADEREFERENCE | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | CREATEDDATE | DATE | NOT NULL |  |  |

## UNASSIGNEDREPOTRADES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | UNASSIGNEDREPOTRADEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | TRADEREFERENCE | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | IMPORTCONFIGURATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | CREATEDDATE | DATE | NOT NULL |  |  |

## USERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | USERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERSID | NCHAR(64) | NULL |  |  |
| 3 | FIRSTNAME | NVARCHAR2(200) | NULL |  |  |
| 4 | LASTNAME | NVARCHAR2(200) | NULL |  |  |
| 5 | EMAILADDRESS | NVARCHAR2(1000) | NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL |  |  |
| 9 | PHONENUMBER | NVARCHAR2(200) | NULL |  |  |
| 10 | AGREEMENTSCOPEID | NUMBER(18,0) | NULL |  |  |
| 11 | LASTSUCCESSFULLOGIN | DATE | NULL |  |  |
| 12 | LASTFAILEDLOGINATTEMPT | DATE | NULL |  |  |
| 13 | DATEACCEPTEDTERMSANDCONDITIONS | DATE | NULL |  |  |
| 14 | LASTLOGOUT | DATE | NULL |  |  |
| 15 | USERNAME | VARCHAR2(1424) | NULL |  |  |
| 16 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## USERSTATEMENTCOLUMNFILTERS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | USERSTATEMENTCOLUMNFILTERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERSTATEMENTCOLUMNID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | FILTERTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | FILTERVALUE | VARCHAR2(400) | NOT NULL |  |  |

## USERSTATEMENTCOLUMNS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | USERSTATEMENTCOLUMNID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERSTATEMENTDEFINITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | COLUMNNAME | VARCHAR2(400) | NOT NULL |  |  |
| 4 | COLUMNSEQUENCE | NUMBER(5,0) | NULL |  |  |
| 5 | COLUMNWIDTH | NUMBER(19,6) | NULL |  |  |
| 6 | CUSTOMCOLUMNNAME | NVARCHAR2(200) | NOT NULL | `NULL` |  |

## USERSTATEMENTDEFINITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | USERSTATEMENTDEFINITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | STATEMENTDEFINITIONIDENTIFIER | NVARCHAR2(200) | NULL |  |  |
| 4 | STATEMENTNAME | NVARCHAR2(200) | NULL |  |  |
| 5 | DELIVERYFORMAT | NUMBER(9,0) | NOT NULL | `1` |  |
| 6 | DELIVERYMETHOD | NUMBER(9,0) | NOT NULL | `1` |  |
| 7 | EMAILRECIPIENTS | NCLOB | NOT NULL | `NULL` |  |
| 8 | LOGOPATH | NVARCHAR2(2000) | NULL |  |  |

## USERSTATEMENTFILLERCOLUMNS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | USERSTATEMENTFILLERCOLUMNID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERSTATEMENTDEFINITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | COLUMNNAME | VARCHAR2(100) | NOT NULL |  |  |
| 4 | COLUMNSEQUENCE | NUMBER(5,0) | NULL |  |  |
| 5 | COLUMNWIDTH | NUMBER(19,6) | NULL |  |  |
| 6 | COLUMNVALUE | NVARCHAR2(2000) | NOT NULL |  |  |
| 7 | COLUMNTYPE | NVARCHAR2(200) | NOT NULL |  |  |

## USERSTATEMENTFILTERCHOICES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | USERSTATEMENTFILTERCHOICEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERSTATEMENTDEFINITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | PREFILTERID | NVARCHAR2(200) | NOT NULL | `NULL` |  |
| 4 | PREFILTERVALUEID | NVARCHAR2(200) | NOT NULL | `NULL` |  |

## USERSXAGREEMENTRESPONSIBILITY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | AGREEMENTRESPONSIBILITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERID | NUMBER(18,0) | NOT NULL |  |  |

## USERS_BAK_231119

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | USERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERSID | NCHAR(64) | NULL |  |  |
| 3 | FIRSTNAME | NVARCHAR2(200) | NULL |  |  |
| 4 | LASTNAME | NVARCHAR2(200) | NULL |  |  |
| 5 | EMAILADDRESS | NVARCHAR2(1000) | NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL |  |  |
| 9 | PHONENUMBER | NVARCHAR2(200) | NULL |  |  |
| 10 | AGREEMENTSCOPEID | NUMBER(18,0) | NULL |  |  |
| 11 | LASTSUCCESSFULLOGIN | DATE | NULL |  |  |
| 12 | LASTFAILEDLOGINATTEMPT | DATE | NULL |  |  |
| 13 | DATEACCEPTEDTERMSANDCONDITIONS | DATE | NULL |  |  |
| 14 | LASTLOGOUT | DATE | NULL |  |  |

## USERS_BAK_23112019

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | USERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERNAME | NVARCHAR2(256) | NOT NULL |  |  |
| 3 | USERSID | NCHAR(64) | NULL |  |  |
| 4 | FIRSTNAME | NVARCHAR2(200) | NULL |  |  |
| 5 | LASTNAME | NVARCHAR2(200) | NULL |  |  |
| 6 | EMAILADDRESS | NVARCHAR2(1000) | NULL |  |  |
| 7 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 9 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL |  |  |
| 10 | PHONENUMBER | NVARCHAR2(200) | NULL |  |  |
| 11 | AGREEMENTSCOPEID | NUMBER(18,0) | NULL |  |  |
| 12 | LASTSUCCESSFULLOGIN | DATE | NULL |  |  |
| 13 | LASTFAILEDLOGINATTEMPT | DATE | NULL |  |  |
| 14 | DATEACCEPTEDTERMSANDCONDITIONS | DATE | NULL |  |  |
| 15 | LASTLOGOUT | DATE | NULL |  |  |

## USERS_USERNAME_EMPTY

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | USERID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | USERSID | NCHAR(64) | NULL |  |  |
| 3 | FIRSTNAME | NVARCHAR2(200) | NULL |  |  |
| 4 | LASTNAME | NVARCHAR2(200) | NULL |  |  |
| 5 | EMAILADDRESS | NVARCHAR2(1000) | NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | PHONENUMBER | NVARCHAR2(200) | NULL |  |  |
| 10 | AGREEMENTSCOPEID | NUMBER(18,0) | NULL |  |  |
| 11 | LASTSUCCESSFULLOGIN | DATE | NULL |  |  |
| 12 | LASTFAILEDLOGINATTEMPT | DATE | NULL |  |  |
| 13 | DATEACCEPTEDTERMSANDCONDITIONS | DATE | NULL |  |  |
| 14 | LASTLOGOUT | DATE | NULL |  |  |
| 15 | USERNAME | VARCHAR2(1424) | NULL |  |  |

## VIEW_AGREEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VIEW_VERSION | CHAR(4) | NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | AGREEMENTNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 4 | AGREEMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | PRINCIPALID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | COUNTERPARTYID | NUMBER(18,0) | NOT NULL |  |  |
| 7 | PRINCIPALMANAGINGLOCATIONID | NUMBER(18,0) | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL |  |  |
| 9 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 10 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 11 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 12 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 13 | AGREEMENTCURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 14 | VALUATIONAGENT | NUMBER(9,0) | NOT NULL |  |  |
| 15 | SOURCEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 16 | INCLUDESTRADEDAYS | NUMBER(9,0) | NOT NULL |  |  |
| 17 | EXCLUDESTRADEDAYS | NUMBER(9,0) | NOT NULL |  |  |
| 18 | CALCULATIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 19 | PRINCIPALCREDITPROVIDERID | NUMBER(18,0) | NULL |  |  |
| 20 | COUNTERPARTYCREDITPROVIDERID | NUMBER(18,0) | NULL |  |  |
| 21 | LOCKUPCALCULATIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 22 | MARGINVALUATIONTIMINGID | NUMBER(18,0) | NULL |  |  |
| 23 | NOTIFICATIONTIME | DATE | NULL |  |  |
| 24 | NOTIFICATIONTIMECITYID | NUMBER(18,0) | NULL |  |  |
| 25 | NOTIFICATIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 26 | COUNTERPARTYMANAGINGLOCATIONID | NUMBER(18,0) | NULL |  |  |
| 27 | DISPUTEMETHOD | NUMBER(9,0) | NOT NULL |  |  |
| 28 | DISPUTEAMOUNT | NUMBER(19,4) | NULL |  |  |
| 29 | DISPUTECURRENCYID | NUMBER(18,0) | NULL |  |  |
| 30 | COLLATERALVALUATIONQUOTE | NUMBER(9,0) | NOT NULL |  |  |
| 31 | COLLATERALPRICESOURCEID | NUMBER(18,0) | NULL |  |  |
| 32 | INCLUDEVARIATIONACCRUAL | NUMBER(1,0) | NOT NULL |  |  |
| 33 | INTERESTPAYMENTPREFERENCE | NUMBER(9,0) | NULL |  |  |
| 34 | INTERESTPAYMENTCALENDARID | NUMBER(18,0) | NULL |  |  |
| 35 | INTERESTPAYMENTTIMINGID | NUMBER(18,0) | NULL |  |  |
| 36 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 37 | SIGNATUREDATE | DATE | NULL |  |  |
| 38 | AMENDMENTDATE | DATE | NULL |  |  |
| 39 | MASTERAGREEMENTDATE | DATE | NULL |  |  |
| 40 | AGREEMENTSTATUS | NUMBER(9,0) | NOT NULL |  |  |
| 41 | AGREEMENTSTATUSDETAILID | NUMBER(18,0) | NULL |  |  |
| 42 | GOVERNINGLAWID | NUMBER(18,0) | NULL |  |  |
| 43 | VERSIONYEAR | NUMBER(9,0) | NULL |  |  |
| 44 | POSTINGPARTY | NUMBER(9,0) | NOT NULL |  |  |
| 45 | BUSINESSLINE | NUMBER(9,0) | NOT NULL |  |  |
| 46 | COLLATERALALLOCATIONTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 47 | AVAILABLEFORREHYPOTHECATION | NUMBER(9,0) | NOT NULL |  |  |
| 48 | TRIPARTYVARIATIONCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 49 | TRIPARTYLOCKUPCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 50 | INCLUDELOCKUPACCRUAL | NUMBER(1,0) | NOT NULL |  |  |
| 51 | CASHSETTLEMENTOFFSET | NUMBER(9,0) | NOT NULL |  |  |
| 52 | DEBTSETTLEMENTOFFSET | NUMBER(9,0) | NOT NULL |  |  |
| 53 | NETINTERESTPAYMENTS | NUMBER(1,0) | NOT NULL |  |  |
| 54 | USEMTAONLOCKUPMARGINTERMS | NUMBER(1,0) | NOT NULL |  |  |
| 55 | USEROUNDINGONLOCKUPMARGINTERMS | NUMBER(1,0) | NOT NULL |  |  |
| 56 | INTERESTROUNDINGMETHOD | NUMBER(9,0) | NOT NULL |  |  |
| 57 | INTERESTAPPLYPRECISIONTO | NUMBER(9,0) | NOT NULL |  |  |
| 58 | PRICEADJUSTMENT | NUMBER(9,0) | NOT NULL |  |  |
| 59 | FXRATESOURCEID | NUMBER(18,0) | NULL |  |  |
| 60 | CLEARINGCLIENTID | NUMBER(18,0) | NULL |  |  |
| 61 | CLEARINGDIRECTION | NUMBER(9,0) | NOT NULL |  |  |
| 62 | COLLATERALMARGINTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 63 | CENTRALCOUNTERPARTYID | NUMBER(18,0) | NULL |  |  |
| 64 | EXTANVILMATCHCODE | NVARCHAR2(500) | NULL |  |  |
| 65 | ALLOWINTRADAYCALCULATION | NUMBER(1,0) | NOT NULL |  |  |
| 66 | INTRADAYTOLERANCE | NUMBER(18,0) | NULL |  |  |
| 67 | AGREEMENTGROUPID | NUMBER(18,0) | NULL |  |  |
| 68 | SPLITTOLERANCEMETHOD | NUMBER(10,0) | NOT NULL |  |  |
| 69 | SPLITTOLERANCEAMOUNT | NUMBER(21,6) | NULL |  |  |
| 70 | SPLITTOLERANCECURRENCYID | NUMBER(19,0) | NULL |  |  |
| 71 | AGREEMENTNAME1 | NVARCHAR2(320) | NULL |  |  |
| 72 | AGREEMENTNAME2 | NVARCHAR2(4000) | NULL |  |  |
| 73 | MATCHCODE | NVARCHAR2(40) | NULL |  |  |
| 74 | MANDANT | NVARCHAR2(8) | NULL |  |  |
| 75 | FILIALE | NVARCHAR2(8) | NULL |  |  |
| 76 | NDG | NVARCHAR2(24) | NULL |  |  |
| 77 | KONTO_NR_EXTERN | NVARCHAR2(60) | NULL |  |  |
| 78 | KONTO_NR_EXTERN2 | NVARCHAR2(60) | NULL |  |  |
| 79 | PRINPOSTINGMETHOD | NVARCHAR2(20) | NULL |  |  |
| 80 | CPTYPOSTINGMETHOD | NVARCHAR2(20) | NULL |  |  |
| 81 | AGREEMENTNO | VARCHAR2(40) | NULL |  |  |
| 82 | LIQUIDITY | VARCHAR2(1) | NULL |  |  |
| 83 | ELIGIBILITY | VARCHAR2(1) | NULL |  |  |
| 84 | CCP_FLAG | CHAR(1) | NULL |  |  |
| 85 | AGREEMENTCCYRATE2 | VARCHAR2(16) | NULL |  |  |
| 86 | ANVILMATCHCODE | NVARCHAR2(40) | NULL |  |  |
| 87 | AGREEMENTTYPENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 88 | AGREEMENTCURRENCY | NCHAR(6) | NOT NULL |  |  |
| 89 | TERMINATIONCURRENCY | NVARCHAR2(6) | NULL |  |  |
| 90 | CLIENTMATCHCODE | NVARCHAR2(30) | NULL |  |  |
| 91 | IM_NONCOMPLIANT | VARCHAR2(1) | NULL |  |  |
| 92 | SUPERNDG | NVARCHAR2(40) | NULL |  |  |
| 93 | GM_CODE | NVARCHAR2(40) | NULL |  |  |
| 94 | LIGHTCSD | VARCHAR2(1) | NULL |  |  |
| 95 | ESTER_DUE_DATE | VARCHAR2(8) | NULL |  |  |
| 96 | ESTER_NON_COMPLIANT | VARCHAR2(1) | NULL |  |  |
| 97 | ESTER_READY | VARCHAR2(1) | NULL |  |  |
| 98 | CSA_TYPE | NVARCHAR2(20) | NULL |  |  |

## VIEW_COLLATERALPOSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | VIEW_VERSION | CHAR(4) | NULL |  |  |
| 2 | SUM_NOTIONAL | NUMBER | NULL |  |  |
| 3 | COLLATERALPRICESOURCEID | NUMBER | NULL |  |  |
| 4 | POSITIONTYPE | NUMBER | NULL |  |  |
| 5 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 6 | MOVEMENTSTATUS_ID | NUMBER | NULL |  |  |
| 7 | MOVEMENTSTATUS | VARCHAR2(255) | NULL |  |  |
| 8 | SUM_NOTIONAL1 | NUMBER | NULL |  |  |
| 9 | INSTRUMENTID | NUMBER(18,0) | NULL |  |  |
| 10 | MAXSETDATE | VARCHAR2(10) | NULL |  |  |
| 11 | MINSETDATE | VARCHAR2(10) | NULL |  |  |
| 12 | COLLATERALMARGINTYPE | NUMBER(9,0) | NULL |  |  |
| 13 | INSTRUMENTTYPEID | NUMBER(18,0) | NOT NULL |  |  |
| 14 | INSTRUMENTCLASS | NUMBER(9,0) | NULL |  |  |
| 15 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 16 | INSTRUMENTTYPENAME | NVARCHAR2(510) | NOT NULL |  |  |
| 17 | ISIN | NCHAR(24) | NULL |  |  |
| 18 | ISSUERID | NUMBER(18,0) | NULL |  |  |
| 19 | ISSUEDATE | VARCHAR2(10) | NULL |  |  |
| 20 | MATURITYDATE | VARCHAR2(10) | NULL |  |  |
| 21 | PRICETERMS | NUMBER | NULL |  |  |
| 22 | NEXTCOUPONDATE | VARCHAR2(10) | NULL |  |  |
| 23 | INSTRUMENT | NVARCHAR2(536) | NULL |  |  |
| 24 | CCY | NCHAR(6) | NULL |  |  |
| 25 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 26 | ORDINAL | NUMBER | NULL |  |  |
| 27 | DEBTSTRUCTURE | NUMBER(9,0) | NULL |  |  |
| 28 | FXRATE | NUMBER | NULL |  |  |
| 29 | FXRATESOURCEID | NUMBER | NULL |  |  |
| 30 | COLLATERALBUCKETID | NUMBER | NULL |  |  |
| 31 | MIDCLEANPRICE | NUMBER | NULL |  |  |
| 32 | MIDDIRTYPRICE | NUMBER | NULL |  |  |
| 33 | COUPONINTERESTACCRUEDTODATE | NUMBER | NULL |  |  |
| 34 | INTERESTTERMS | NVARCHAR2(964) | NULL |  |  |
| 35 | INTRANSIT | NUMBER | NULL |  |  |

## V_CMS_CURRENTFXRATES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | CURRENCYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | RATE | NUMBER(21,6) | NOT NULL |  |  |
| 3 | RATEDATE | DATE | NOT NULL |  |  |
| 4 | FXRATESOURCEID | NUMBER(18,0) | NOT NULL |  |  |
| 5 | CODE | NCHAR(6) | NOT NULL |  |  |
| 6 | FXRATESOURCENAME | NVARCHAR2(200) | NOT NULL |  |  |

## V_IMC_CUSTODIAN_MOVEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | agreementId | NUMBER(18,0) | NOT NULL |  |  |
| 2 | movementId | NUMBER(18,0) | NOT NULL |  |  |
| 3 | partyIdentifierSender | NVARCHAR2(510) | NULL |  |  |
| 4 | safeAccountSender | NVARCHAR2(510) | NULL |  |  |
| 5 | partyIdentifierReceiver | NVARCHAR2(510) | NULL |  |  |
| 6 | safeAccountReceiver | NVARCHAR2(510) | NULL |  |  |
| 7 | custodianName | NVARCHAR2(510) | NULL |  |  |
| 8 | custodianBic | NVARCHAR2(500) | NULL |  |  |
| 9 | agreementTypeName | NVARCHAR2(200) | NULL |  |  |
| 10 | agreementName | NVARCHAR2(510) | NOT NULL |  |  |
| 11 | userName | VARCHAR2(1424) | NULL |  |  |
| 12 | counterpartyId | NUMBER(18,0) | NOT NULL |  |  |
| 13 | receiveProvideIndicator | CHAR(4) | NULL |  |  |
| 14 | movementGroupId | NUMBER(18,0) | NOT NULL |  |  |
| 15 | movementType | NUMBER(9,0) | NOT NULL |  |  |
| 16 | affectedPosition | NUMBER(9,0) | NOT NULL |  |  |
| 17 | movementStatus | NUMBER(9,0) | NULL |  |  |
| 18 | settlementDate | DATE | NOT NULL |  |  |
| 19 | creationDate | DATE | NOT NULL |  |  |
| 20 | updateDate | DATE | NULL |  |  |
| 21 | notional | NUMBER(19,4) | NOT NULL |  |  |
| 22 | collateralPosition | NUMBER | NULL |  |  |
| 23 | transactionCurrency | VARCHAR2(48) | NULL |  |  |
| 24 | previousMovementId | NUMBER(18,0) | NULL |  |  |
| 25 | eligibilitySet | NVARCHAR2(500) | NULL |  |  |
| 26 | workflowVariation | VARCHAR2(4000) | NULL |  |  |

## V_IMC_ENTITIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ENTITYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | ENTITYNAME | NVARCHAR2(510) | NOT NULL |  |  |
| 3 | ENTITYTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 4 | DOMICILEID | NUMBER(18,0) | NULL |  |  |
| 5 | INDUSTRYSECTORID | NUMBER(18,0) | NULL |  |  |
| 6 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL |  |  |
| 7 | LEGALNAME | NVARCHAR2(1000) | NULL |  |  |
| 8 | SOURCEREFERENCE | NVARCHAR2(510) | NULL |  |  |
| 9 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 10 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 11 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 12 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 13 | ORGANIZATIONTYPEID | NUMBER(18,0) | NULL |  |  |
| 14 | PARENTENTITYID | NUMBER(18,0) | NULL |  |  |
| 15 | LASTEDITTIMESTAMP | DATE | NULL |  |  |
| 16 | BANKIDENTIFIERCODE | NVARCHAR2(500) | NULL |  |  |
| 17 | MONITORSHORTPOSITIONS | NUMBER(1,0) | NOT NULL |  |  |
| 18 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## V_IMC_EXPOSURE_STATTEMENT_DETAIL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | SENDERMESSAGEREFERENCE | VARCHAR2(80) | NULL |  |  |
| 3 | MESSAGEFREQUENCY | VARCHAR2(80) | NULL |  |  |
| 4 | MESSAGEPREPARATIONDATETIME | TIMESTAMP(6) | NULL |  |  |
| 5 | CUSTODIAN | VARCHAR2(128) | NULL |  |  |
| 6 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 7 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 8 | ISIN | VARCHAR2(48) | NULL |  |  |
| 9 | MARKETPRICE | NUMBER(27,8) | NULL |  |  |
| 10 | SECURITYQUANTITY | NUMBER(19,2) | NULL |  |  |
| 11 | TRANSACTION_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 12 | MARKET_VAL_BEFOREVALUATION | VARCHAR2(80) | NULL |  |  |
| 13 | CLEAN_PRICE_AMOUNT | VARCHAR2(80) | NULL |  |  |
| 14 | VALUATIONFACTOR | NUMBER(29,8) | NULL |  |  |
| 15 | SECURITYCURRENCY | VARCHAR2(1020) | NULL |  |  |
| 16 | EXCHANGECODE | VARCHAR2(80) | NULL |  |  |
| 17 | EXCHANGERATE | NUMBER(29,8) | NULL |  |  |
| 18 | CTPYID | VARCHAR2(600) | NULL |  |  |
| 19 | ALGO_IMPORT_DATETIME | TIMESTAMP(6) | NULL |  |  |
| 20 | ORIGINALMESSAGE | CLOB | NULL |  |  |

## V_IMC_MT569_BY_AGREEMENT

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PRIMARY_KEY | NUMBER | NULL |  |  |
| 2 | MESSAGE_REFERENCE | VARCHAR2(80) | NULL |  |  |
| 3 | MESSAGEPREPARATIONDATETIME | TIMESTAMP(6) | NULL |  |  |
| 4 | CUSTODIAN | VARCHAR2(128) | NULL |  |  |
| 5 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 6 | AGREEMENTNAME | VARCHAR2(1020) | NULL |  |  |
| 7 | TOTAL_EXPOSURE_AMMOUNT | VARCHAR2(80) | NULL |  |  |
| 8 | MARGIN_AMMOUNT | VARCHAR2(80) | NULL |  |  |
| 9 | TOTAL_POSTED_COLLATERAL | VARCHAR2(80) | NULL |  |  |
| 10 | ALGO_IMPORT_DATETIME | TIMESTAMP(6) | NULL |  |  |
| 11 | IS_CURRENT_IN_ALGO | NUMBER | NULL |  |  |

## V_IMC_STATEMENT_OF_HOLDINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NULL |  |  |
| 2 | SENDERMESSAGEREFERENCE | VARCHAR2(80) | NOT NULL |  |  |
| 3 | STATEMENTDATETIME | TIMESTAMP(6) | NOT NULL |  |  |
| 4 | SAFEKEEPINGACCOUNT | VARCHAR2(240) | NOT NULL |  |  |
| 5 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | ISIN | VARCHAR2(48) | NULL |  |  |
| 7 | SECURITYDESCRIPTOR | VARCHAR2(1020) | NULL |  |  |
| 8 | AGGR_BALANCE | NUMBER(25,10) | NULL |  |  |
| 9 | HOLD | VARCHAR2(80) | NULL |  |  |
| 10 | CUSTODIAN | VARCHAR2(512) | NULL |  |  |
| 11 | ORIGINALMESSAGE | CLOB | NULL |  |  |
| 12 | ALGO_IMPORT_DATETIME | TIMESTAMP(6) | NULL |  |  |
| 13 | IS_CURRENT_IN_ALGO | NUMBER(1,0) | NULL |  |  |

## V_IM_MOVEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | MOVEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 4 | STATUS | VARCHAR2(1020) | NULL |  |  |
| 5 | SWIFTINSTRUCTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 6 | SWIFTTRANSACTIONREFERENCE | VARCHAR2(64) | NULL |  |  |
| 7 | AGREEMENTNAME | VARCHAR2(4000) | NULL |  |  |
| 8 | CURRENCY | VARCHAR2(1020) | NULL |  |  |
| 9 | NOTIONAL | NUMBER(19,2) | NULL |  |  |
| 10 | CUSTODIAN | VARCHAR2(1020) | NULL |  |  |
| 11 | SETTLEMENTDATE | TIMESTAMP(6) | NULL |  |  |
| 12 | DIRECTION | VARCHAR2(23) | NULL |  |  |
| 13 | SENDER | VARCHAR2(1020) | NULL |  |  |
| 14 | RECEIVER | VARCHAR2(1020) | NULL |  |  |
| 15 | MESSAGE_FUNCTION | VARCHAR2(4) | NULL |  |  |
| 16 | COLL_INSTRUCTION_TYPE | VARCHAR2(4) | NULL |  |  |
| 17 | SENDER_MESSAGE_REF | VARCHAR2(64) | NULL |  |  |
| 18 | ORIGINALMESSAGE | CLOB | NULL |  |  |
| 19 | CANCEL_CAUSE | VARCHAR2(60) | NULL |  |  |
| 20 | UPDATEDTIME | TIMESTAMP(6) | NULL |  |  |
| 21 | COLLATERAL_INSTRUCTION_PK | NUMBER(19,2) | NULL |  |  |
| 22 | AGREEMENTSTATUS | NUMBER(9,0) | NULL |  |  |
| 23 | LATESTPK | NUMBER | NULL |  |  |

## V_VM_MOVEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | VARCHAR2(41) | NULL |  |  |
| 2 | MOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | AGREEMENTID | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | VARCHAR2(1020) | NULL |  |  |
| 5 | CURRENCY | CHAR(3) | NULL |  |  |
| 6 | INSTRUMENTREFERENCE | VARCHAR2(250) | NULL |  |  |
| 7 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 8 | DIRECTION | VARCHAR2(23) | NULL |  |  |
| 9 | MOVEMENTSTATUS | VARCHAR2(255) | NULL |  |  |
| 10 | SETTLEMENTDATE | DATE | NULL |  |  |
| 11 | INTERNALCASHACCOUNT | VARCHAR2(250) | NULL |  |  |
| 12 | PAYMENTTYPE | VARCHAR2(50) | NULL |  |  |
| 13 | ISDISTRIBUTION | NUMBER | NULL |  |  |

## WAIVECATEGORIES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WAIVECATEGORYID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WAIVECATEGORYNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | DESCRIPTION | NVARCHAR2(500) | NULL |  |  |
| 4 | CREATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | UPDATEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 6 | CREATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 7 | UPDATEDTIMESTAMP | DATE | NOT NULL |  |  |
| 8 | CONCURRENCYVERSION | NUMBER(9,0) | NOT NULL | `((1))` |  |
| 9 | DISPLAYORDER | NUMBER(9,0) | NOT NULL |  |  |
| 10 | UUID | NVARCHAR2(100) | NOT NULL |  |  |

## WFSTATES_24032025

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | WORKFLOWSTATENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 4 | DISPLAYORDINAL | NUMBER(9,0) | NULL |  |  |
| 5 | WORKFLOWSTATESHORTNAME | NVARCHAR2(40) | NULL |  |  |
| 6 | LIFETIME | NUMBER(9,0) | NOT NULL |  |  |
| 7 | WORKFLOWSTATEIDENTIFIER | NUMBER(9,0) | NOT NULL |  |  |
| 8 | ISACTIVE | NUMBER(1,0) | NOT NULL |  |  |
| 9 | DISPUTESTATUSRULE | NVARCHAR2(1000) | NULL |  |  |
| 10 | ALLOWGROUPEDUPLOAD | NUMBER(1,0) | NOT NULL |  |  |
| 11 | WORKFLOWGROUPINGID | NUMBER(18,0) | NULL |  |  |
| 12 | CUSTOMRECALCBEHAVIOR | NUMBER(9,0) | NULL |  |  |

## WORKFLOWGROUPINGS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWGROUPINGID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWGROUPINGNAME | NVARCHAR2(200) | NOT NULL |  |  |
| 3 | WORKFLOWGROUPINGTYPE | NUMBER(18,0) | NOT NULL |  |  |
| 4 | DISPLAYORDER | NUMBER(18,0) | NOT NULL |  |  |

## WORKFLOWS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWTYPE | NUMBER(9,0) | NOT NULL |  |  |
| 3 | INITIALSTATEID | NUMBER(18,0) | NOT NULL |  |  |

## WORKFLOWSTATES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | WORKFLOWSTATENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 4 | DISPLAYORDINAL | NUMBER(9,0) | NULL |  |  |
| 5 | WORKFLOWSTATESHORTNAME | NVARCHAR2(40) | NULL |  |  |
| 6 | LIFETIME | NUMBER(9,0) | NOT NULL |  |  |
| 7 | WORKFLOWSTATEIDENTIFIER | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 8 | ISACTIVE | NUMBER(1,0) | NOT NULL | `((1))` |  |
| 9 | DISPUTESTATUSRULE | NVARCHAR2(1000) | NULL |  |  |
| 10 | ALLOWGROUPEDUPLOAD | NUMBER(1,0) | NOT NULL | `((0))` |  |
| 11 | WORKFLOWGROUPINGID | NUMBER(18,0) | NULL |  |  |
| 12 | CUSTOMRECALCBEHAVIOR | NUMBER(9,0) | NULL |  |  |

## WORKFLOWSTATES_BAK231119

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | WORKFLOWSTATENAME | NVARCHAR2(200) | NOT NULL |  |  |
| 4 | DISPLAYORDINAL | NUMBER(9,0) | NULL |  |  |
| 5 | WORKFLOWSTATESHORTNAME | NVARCHAR2(40) | NULL |  |  |
| 6 | LIFETIME | NUMBER(9,0) | NOT NULL |  |  |
| 7 | EXCLUDEFROMINTRADAYCALCULATION | NUMBER(1,0) | NOT NULL |  |  |
| 8 | RECALCULATIONBEHAVIOR | NUMBER(9,0) | NOT NULL |  |  |
| 9 | WORKFLOWSTATEIDENTIFIER | NUMBER(9,0) | NOT NULL |  |  |
| 10 | ISACTIVE | NUMBER(1,0) | NOT NULL |  |  |
| 11 | DISPUTESTATUSRULE | NVARCHAR2(1000) | NULL |  |  |
| 12 | ALLOWGROUPEDUPLOAD | NUMBER(1,0) | NOT NULL |  |  |

## WORKFLOWSTATETRANSITIONS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWSTATETRANSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | NEXTWORKFLOWSTATEID | NUMBER(18,0) | NULL |  |  |
| 4 | TRANSITIONPERMISSION | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | WORKFLOWSTATETRANSITIONNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | SERVERTRANSITIONTYPE | NVARCHAR2(1000) | NULL |  |  |
| 7 | ALLOWMULTIPLE | NUMBER(1,0) | NOT NULL | `((1))` |  |
| 8 | CLIENTTRANSITIONTYPE | NVARCHAR2(1000) | NULL |  |  |
| 9 | ISACTIVE | NUMBER(1,0) | NOT NULL | `((1))` |  |
| 10 | ISDEFAULT | NUMBER(1,0) | NOT NULL |  |  |
| 11 | ACTIONTYPE | NUMBER(10,0) | NULL |  |  |
| 12 | CLIENTTRANSITIONENUM | NUMBER(18,0) | NULL |  |  |
| 13 | CLIENTTRANSITIONPROMPT | NVARCHAR2(400) | NULL |  |  |

## WORKFLOWSTATETRANSITIONS_BAK

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWSTATETRANSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | NEXTWORKFLOWSTATEID | NUMBER(18,0) | NULL |  |  |
| 4 | TRANSITIONPERMISSION | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | WORKFLOWSTATETRANSITIONNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | SERVERTRANSITIONTYPE | NVARCHAR2(1000) | NULL |  |  |
| 7 | ALLOWMULTIPLE | NUMBER(1,0) | NOT NULL |  |  |
| 8 | CLIENTTRANSITIONTYPE | NVARCHAR2(1000) | NULL |  |  |
| 9 | ISACTIVE | NUMBER(1,0) | NOT NULL |  |  |
| 10 | ISDEFAULT | NUMBER(1,0) | NOT NULL |  |  |
| 11 | ACTIONTYPE | NUMBER(10,0) | NULL |  |  |

## WORKFLOWUPLOADDATA

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWUPLOADDATAID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWUPLOADRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | FILEDATA | BLOB | NOT NULL |  |  |

## WORKFLOWUPLOADMESSAGES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWUPLOADMESSAGEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MESSAGETYPE | NUMBER(9,0) | NOT NULL |  |  |
| 3 | ERRORTEXT | NVARCHAR2(1000) | NULL |  |  |
| 4 | IDFROMFILE | NUMBER(18,0) | NULL |  |  |
| 5 | AGREEMENTNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | WORKFLOWUPLOADRECORDID | NUMBER(18,0) | NOT NULL |  |  |

## WORKFLOWUPLOADRECORDS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWUPLOADRECORDID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | STARTDATETIME | DATE | NULL |  |  |
| 3 | ENDDATETIME | DATE | NULL |  |  |
| 4 | REQUESTEDBY | NUMBER(18,0) | NOT NULL |  |  |
| 5 | AGREEMENTGROUPID | NUMBER(18,0) | NOT NULL |  |  |
| 6 | STATUS | NUMBER(9,0) | NOT NULL | `((0))` |  |
| 7 | REQUESTEDTIME | DATE | NOT NULL |  |  |
| 8 | EXCEPTIONCOUNT | NUMBER(9,0) | NULL |  |  |
| 9 | WARNINGCOUNT | NUMBER(9,0) | NULL |  |  |
| 10 | INFORMATIONCOUNT | NUMBER(9,0) | NULL |  |  |
| 11 | FILENAME | NVARCHAR2(1000) | NOT NULL |  |  |
| 12 | UPLOADEDROWCOUNT | NUMBER(9,0) | NOT NULL |  |  |
| 13 | WORKFLOWUPLOADSHEETTYPE | NUMBER(9,0) | NOT NULL |  |  |

## WRONGWAYRISKRULES

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WRONGWAYRISKRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | AGREEMENTID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | APPLIESTOVARIATIONHELD | NUMBER(1,0) | NOT NULL |  |  |
| 4 | APPLIESTOLOCKUPHELD | NUMBER(1,0) | NOT NULL |  |  |
| 5 | APPLIESTOVARIATIONPOSTED | NUMBER(1,0) | NOT NULL |  |  |
| 6 | APPLIESTOLOCKUPPOSTED | NUMBER(1,0) | NOT NULL |  |  |
| 7 | APPLIESTOGUARANTEEHELD | NUMBER(1,0) | NOT NULL |  |  |
| 8 | APPLIESTOGUARANTEEPOSTED | NUMBER(1,0) | NOT NULL |  |  |
| 9 | APPLIESTOSURPLUSHELD | NUMBER(1,0) | NOT NULL |  |  |
| 10 | APPLIESTOSURPLUSPOSTED | NUMBER(1,0) | NOT NULL |  |  |
| 11 | UUID | NVARCHAR2(100) | NULL |  |  |

## WRONGWAYRISKRULESXBUCKETS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WRONGWAYRISKRULEID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | COLLATERALBUCKETID | NUMBER(18,0) | NOT NULL |  |  |

## ZZZ_API_MOVEMENTS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | ID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | MOVEMENTID | NUMBER(18,0) | NULL |  |  |
| 3 | STATUS | NUMBER(18,0) | NULL |  |  |
| 4 | AGREEMENTNAME | NVARCHAR2(2000) | NULL |  |  |
| 5 | ISRETURN | NUMBER(1,0) | NULL |  |  |
| 6 | NOTIONAL | NUMBER(19,4) | NULL |  |  |
| 7 | SETTLEMENTDATE | DATE | NULL |  |  |
| 8 | PHYSICALSETTLEMENT | NUMBER(1,0) | NULL |  |  |
| 9 | INSTRUMENTIDENTIFIER | NVARCHAR2(2000) | NULL |  |  |
| 10 | INSTRUMENTIDENTIFIERTYPE | NVARCHAR2(2000) | NULL |  |  |
| 11 | REASON | NVARCHAR2(2000) | NULL |  |  |
| 12 | MARGINTYPE | NVARCHAR2(2000) | NULL |  |  |
| 13 | AFFECTEDPARTY | NVARCHAR2(2000) | NULL |  |  |
| 14 | RECEIVINGBENEFICIARYNUMBER | NVARCHAR2(510) | NULL |  |  |
| 15 | RECEIVINGBENEFICIARYNAME | NVARCHAR2(510) | NULL |  |  |
| 16 | RECEIVINGACCOUNTNUMBER | NVARCHAR2(510) | NULL |  |  |
| 17 | RECEIVINGACCOUNTNAME | NVARCHAR2(510) | NULL |  |  |
| 18 | SENDINGBENEFICIARYNUMBER | NVARCHAR2(510) | NULL |  |  |
| 19 | SENDINGBENEFICIARYNAME | NVARCHAR2(510) | NULL |  |  |
| 20 | SENDINGACCOUNTNUMBER | NVARCHAR2(510) | NULL |  |  |
| 21 | SENDINGACCOUNTNAME | NVARCHAR2(510) | NULL |  |  |
| 22 | RECEIVINGCUSTODIANID | NUMBER(18,0) | NULL |  |  |
| 23 | SENDINGCUSTODIANID | NUMBER(18,0) | NULL |  |  |

## ZZZ_PRE_CHG00265383_WFL

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWSTATETRANSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | NEXTWORKFLOWSTATEID | NUMBER(18,0) | NULL |  |  |
| 4 | TRANSITIONPERMISSION | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | WORKFLOWSTATETRANSITIONNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | SERVERTRANSITIONTYPE | NVARCHAR2(1000) | NULL |  |  |
| 7 | ALLOWMULTIPLE | NUMBER(1,0) | NOT NULL |  |  |
| 8 | CLIENTTRANSITIONTYPE | NVARCHAR2(1000) | NULL |  |  |
| 9 | ISACTIVE | NUMBER(1,0) | NOT NULL |  |  |
| 10 | ISDEFAULT | NUMBER(1,0) | NOT NULL |  |  |
| 11 | ACTIONTYPE | NUMBER(10,0) | NULL |  |  |
| 12 | CLIENTTRANSITIONENUM | NUMBER(18,0) | NULL |  |  |
| 13 | CLIENTTRANSITIONPROMPT | NVARCHAR2(400) | NULL |  |  |

## ZZZ_TLM_FOUNDATION_OD

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MESSAGEID | NVARCHAR2(400) | NOT NULL |  |  |
| 2 | DISPATCHED | NUMBER(1,0) | NOT NULL |  |  |
| 3 | DISPATCHEDAT | TIMESTAMP(6) | NULL |  |  |
| 4 | OPERATIONS | CLOB | NOT NULL |  |  |
| 5 | PERSISTENCEVERSION | VARCHAR2(23) | NOT NULL |  |  |

## ZZZ_TLM_FOUNDATION_SS

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | MESSAGETYPE | NVARCHAR2(400) | NOT NULL |  |  |
| 2 | SUBSCRIBER | NVARCHAR2(400) | NOT NULL |  |  |
| 3 | ENDPOINT | VARCHAR2(200) | NULL |  |  |
| 4 | PERSISTENCEVERSION | VARCHAR2(23) | NULL |  |  |

## ZZZ_WORKFLOW_PRE_CHG00262819

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | WORKFLOWSTATETRANSITIONID | NUMBER(18,0) | NOT NULL |  |  |
| 2 | WORKFLOWSTATEID | NUMBER(18,0) | NOT NULL |  |  |
| 3 | NEXTWORKFLOWSTATEID | NUMBER(18,0) | NULL |  |  |
| 4 | TRANSITIONPERMISSION | NVARCHAR2(100) | NOT NULL |  |  |
| 5 | WORKFLOWSTATETRANSITIONNAME | NVARCHAR2(510) | NULL |  |  |
| 6 | SERVERTRANSITIONTYPE | NVARCHAR2(1000) | NULL |  |  |
| 7 | ALLOWMULTIPLE | NUMBER(1,0) | NOT NULL |  |  |
| 8 | CLIENTTRANSITIONTYPE | NVARCHAR2(1000) | NULL |  |  |
| 9 | ISACTIVE | NUMBER(1,0) | NOT NULL |  |  |
| 10 | ISDEFAULT | NUMBER(1,0) | NOT NULL |  |  |
| 11 | ACTIONTYPE | NUMBER(10,0) | NULL |  |  |
| 12 | CLIENTTRANSITIONENUM | NUMBER(18,0) | NULL |  |  |
| 13 | CLIENTTRANSITIONPROMPT | NVARCHAR2(400) | NULL |  |  |

## Z_IMC_COLLATERAL_INS_20210724

| # | Column | Type | Nullable | Default | Comment |
|---|--------|------|----------|---------|--------|
| 1 | PK | NUMBER(19,2) | NOT NULL |  |  |
| 2 | MT527STATE | VARCHAR2(80) | NOT NULL |  |  |

