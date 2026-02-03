# Algo Database Schema — Constraints

Generated: 2026-02-03 13:04 | Schema: TUQCEUCBCORE01 | Database: PDQCEQ10

**340 primary keys, 61 unique constraints**

## ACADIAALIAS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ACADIAALIAS | PRIMARY KEY | ACADIAALIASID |

## AGREEMENTALIASES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTALIASES | PRIMARY KEY | AGREEMENTALIASID |

## AGREEMENTEXPOSUREDIFFERENCES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTEXPOSUREDIFFERENCE | PRIMARY KEY | AGREEMENTEXPOSUREDIFFERENCEID |

## AGREEMENTGROUPS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTGROUPS | PRIMARY KEY | AGREEMENTGROUPID |
| AGREEMENTGROUPS_UUID | UNIQUE | UUID |

## AGREEMENTGROUPSXUSERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTGROUPSXUSERS | PRIMARY KEY | AGREEMENTGROUPID, USERID |

## AGREEMENTMARGINS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTMARGINS | PRIMARY KEY | AGREEMENTMARGINID |

## AGREEMENTMARGINSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTMARGINSBULK | PRIMARY KEY | AGREEMENTMARGINSBULKID |

## AGREEMENTNOTES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTNOTES | PRIMARY KEY | AGREEMENTNOTEID |

## AGREEMENTRESPBUSINESSLINES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTRESPBUSINESSLINES | PRIMARY KEY | AGREEMENTRESPBUSINESSLINEID |

## AGREEMENTRESPONSIBILITIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTRESPONSIBILITIES | PRIMARY KEY | AGREEMENTRESPONSIBILITYID |
| AGREEMENTRESPONSIBILITIES_UUID | UNIQUE | UUID |

## AGREEMENTRESPXCOUNTERPARTIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTRESPXCOUNTERPARTIE | PRIMARY KEY | AGREEMENTRESPONSIBILITYID, COUNTERPARTYID |

## AGREEMENTRESPXCPTYORGANIZATION

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTRESPXCPTYORGANIZAT | PRIMARY KEY | AGREEMENTRESPONSIBILITYID, ORGANIZATIONTYPEID |

## AGREEMENTRESPXEXCLUDEDAGREEMEN

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTRESPXEXCLUDEDAGREE | PRIMARY KEY | RESPID, AGREEMENTID |

## AGREEMENTRESPXINCLUDEDAGREEMEN

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTRESPXINCLUDEDAGREE | PRIMARY KEY | RESPID, AGREEMENTID |

## AGREEMENTRESPXPRINCIPALS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTRESPXPRINCIPALS | PRIMARY KEY | AGREEMENTRESPONSIBILITYID, PRINCIPALID |

## AGREEMENTRESPXPRINMANAGINGLOCA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTRESPXPRINMANAGINGL | PRIMARY KEY | AGREEMENTRESPONSIBILITYID, CITYID |

## AGREEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTS | PRIMARY KEY | AGREEMENTID |
| AGREEMENTS_UUID | UNIQUE | UUID |

## AGREEMENTSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTSBULK | PRIMARY KEY | AGREEMENTSBULKID |

## AGREEMENTSCOPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTSCOPES | PRIMARY KEY | AGREEMENTSCOPEID |
| AGREEMENTSCOPES_UUID | UNIQUE | UUID |

## AGREEMENTSCOPESXENTITIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTSCOPESXENTITIES | PRIMARY KEY | AGREEMENTSCOPEID, ENTITYID |

## AGREEMENTSTATUSDETAILS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTSTATUSDETAILS | PRIMARY KEY | AGREEMENTSTATUSDETAILID |
| AGREEMENTSTATUSDETAILS_UUID | UNIQUE | UUID |

## AGREEMENTSXCONTACTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTSXCONTACTS | PRIMARY KEY | AGREEMENTID, CONTACTID |

## AGREEMENTSXEXTDATAOVERRIDES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTSXEXTDATAOVERRIDES | PRIMARY KEY | AGREEMENTID, EXTENSIONDATAOVERRIDEID |

## AGREEMENTSXHOLIDAYCALENDARS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTSXHOLIDAYCALENDARS | PRIMARY KEY | AGREEMENTID, HOLIDAYCALENDARID |

## AGREEMENTTYPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTTYPES | PRIMARY KEY | AGREEMENTTYPEID |
| AGREEMENTTYPES_UUID | UNIQUE | UUID |

## AGREEMENTTYPESXTRADETYPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTTYPESXTRADETYPES | PRIMARY KEY | AGREEMENTTYPEID, TRADETYPEID |

## ALIASESBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ALIASESBULK | PRIMARY KEY | ALIASESBULKID |

## ALIASGROUPS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ALIASGROUPS | PRIMARY KEY | ALIASGROUPID |
| ALIASGROUPS_UUID | UNIQUE | UUID |

## ANALYSISCONFIGSXMARGINCONFIGS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ANALYSISCONFIGSXMARGINCONFI | PRIMARY KEY | MARGINANALYSISCONFIGURATIONID, MARGINCONFIGURATIONID |

## APPROVALCHANGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_APPROVALCHANGES | PRIMARY KEY | APPROVALCHANGEID |

## APPROVALRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_APPROVALRECORDS | PRIMARY KEY | APPROVALRECORDID |

## APPROVALTRANSITIONHISTORY

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_APPROVALTRANSITIONHISTORY | PRIMARY KEY | APPROVALTRANSITIONHISTORYID |

## ASSETPOOLBALANCES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ASSETPOOLBALANCES | PRIMARY KEY | ASSETPOOLBALANCEID |

## ASSETPOOLBALANCESBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ASSETPOOLBALANCESBULK | PRIMARY KEY | ASSETPOOLBALANCESBULKID |

## ASSETPOOLS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ASSETPOOLS | PRIMARY KEY | ASSETPOOLID |

## ASSIGNEDOTCTRADES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ASSIGNEDOTCTRADES | PRIMARY KEY | ASSIGNEDOTCTRADEID |

## ASSIGNEDREPOTRADES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ASSIGNEDREPOTRADES | PRIMARY KEY | ASSIGNEDREPOTRADEID |

## AUDITCHANGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AUDITCHANGES | PRIMARY KEY | AUDITCHANGEID |

## AUDITRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AUDITRECORDS | PRIMARY KEY | AUDITRECORDID |

## BASICELIGIBILITYBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_BASICELIGIBILITYBULK | PRIMARY KEY | BASICELIGIBILITYBULKID |

## BASICELIGIBILITYCHANGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_BASICELIGIBILITYCHANGES | PRIMARY KEY | BASICELIGIBILITYCHANGEID |

## BATCH_JOB_EXECUTION

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044380 | PRIMARY KEY | JOB_EXECUTION_ID |

## BATCH_JOB_EXECUTION_CONTEXT

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044325 | PRIMARY KEY | JOB_EXECUTION_ID |

## BATCH_JOB_INSTANCE

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044288 | PRIMARY KEY | JOB_INSTANCE_ID |
| JOB_INST_UN | UNIQUE | JOB_NAME, JOB_KEY |

## BATCH_STEP_EXECUTION

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044798 | PRIMARY KEY | STEP_EXECUTION_ID |

## BATCH_STEP_EXECUTION_CONTEXT

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044707 | PRIMARY KEY | STEP_EXECUTION_ID |

## BONDPURPOSES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_BONDPURPOSES | PRIMARY KEY | BONDPURPOSEID |
| BONDPURPOSES_UUID | UNIQUE | UUID |

## BOOKDIFFERENCES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_BOOKDIFFERENCES | PRIMARY KEY | BOOKDIFFERENCEID |

## BOOKEDSETTLEMENTINSTRUCTIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_BOOKEDSETTLEMENTINSTRUCTION | PRIMARY KEY | BOOKEDSETTLEMENTINSTRUCTIONID |

## BRANCHALIASES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_BRANCHALIASES | PRIMARY KEY | BRANCHALIASID |

## BRANCHES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_BRANCHES | PRIMARY KEY | BRANCHID |

## CACHEDAGREEMENTXAGREEMENTRESP

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CACHEDAGREEMENTXRESP | PRIMARY KEY | AGREEMENTRESPONSIBILITYID, AGREEMENTID |

## CBREACHESXECPOSITIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CBREACHESXECPOSITIONS | PRIMARY KEY | CONCENTRATIONBREACHID, ECPOSITIONID |

## CITIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CITIES | PRIMARY KEY | CITYID |
| CITIES_UUID | UNIQUE | UUID |

## CMOABSASSETCLASSES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CMOABSASSETCLASSES | PRIMARY KEY | CMOABSASSETCLASSID |
| CMOABSASSETCLASSES_UUID | UNIQUE | UUID |

## COLLATERALBUCKETRATINGBANDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALBUCKETRATINGBANDS | PRIMARY KEY | COLLATERALBUCKETRATINGBANDID |

## COLLATERALBUCKETS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALBUCKETS | PRIMARY KEY | COLLATERALBUCKETID |
| COLLATERALBUCKETS_UUID | UNIQUE | UUID |

## COLLATERALBUCKETXCURRENCIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALBUCKETXCURRENCIES | PRIMARY KEY | CURRENCYID, COLLATERALBUCKETID |

## COLLATERALBUCKETXINSTRUMENTTYP

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALBUCKETXINSTRUMENT | PRIMARY KEY | INSTRUMENTTYPEID, COLLATERALBUCKETID |

## COLLATERALBUCKETXISSUERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALBUCKETXISSUERS | PRIMARY KEY | ENTITYID, COLLATERALBUCKETID |

## COLLATERALBUCKETXRAINSTRUMENT

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALBUCKETXRAINSTRUME | PRIMARY KEY | COLLATERALBUCKETID, RATINGAGENCYID |

## COLLATERALBUCKETXRAISSUER

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALBUCKETXRAISSUER | PRIMARY KEY | COLLATERALBUCKETID, RATINGAGENCYID |

## COLLATERALGROUPS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALGROUPS | PRIMARY KEY | COLLATERALGROUPID |
| COLLATERALGROUPS_UUID | UNIQUE | UUID |

## COLLATERALGROUPXCOLLATERALBUCK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALGROUPXCOLLATERALB | PRIMARY KEY | COLLATERALGROUPID, COLLATERALBUCKETID |

## COLLATERALPOSITIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALPOSITIONS | PRIMARY KEY | COLLATERALPOSITIONID |

## COLLATERALPOSITIONSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALPOSITIONSBULK | PRIMARY KEY | COLLATERALPOSITIONSBULKID |

## COLLATERALTYPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALTYPES | PRIMARY KEY | COLLATERALTYPEID |
| COLLATERALTYPES_UUID | UNIQUE | UUID |

## COLLELIGEXTRACTCONFIGURATIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLELIGEXTRACTCONFIGURATIO | PRIMARY KEY | COLLELIGEXTRACTCONFIGURATIONID |
| CONFIGURATIONNAME_UNIQ | UNIQUE | COLLELIGEXTRACTCONFIGNAME |

## COLLELIGEXTRACTMESSAGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLELIGEXTRACTMESSAGES | PRIMARY KEY | COLLELIGEXTRACTMESSAGEID |

## COLLELIGEXTRACTRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLELIGEXTRACTRECORDS | PRIMARY KEY | COLLELIGEXTRACTRECORDID |

## COLLEXTRACTXCITIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLEXTRACTXCITIES | PRIMARY KEY | COLLCONFIGID, CITYID |

## CONCENTRATIONBREACHES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CONCENTRATIONBREACHES | PRIMARY KEY | CONCENTRATIONBREACHID |

## CONCENTRATIONRULECHANGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CONCENTRATIONRULECHANGES | PRIMARY KEY | CONCENTRATIONRULECHANGEID |

## CONCENTRATIONRULES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CONCENTRATIONRULES | PRIMARY KEY | CONCENTRATIONRULEID |

## CONTACTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CONTACTS | PRIMARY KEY | CONTACTID |
| CONTACTS_UUID | UNIQUE | UUID |

## COUNTERPARTYMARGINDETAILS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COUNTERPARTYMARGINDETAILS | PRIMARY KEY | COUNTERPARTYMARGINDETAILID |

## COUNTRIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COUNTRIES | PRIMARY KEY | COUNTRYID |
| COUNTRIES_UUID | UNIQUE | UUID |

## COUPONTYPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COUPONTYPES | PRIMARY KEY | COUPONTYPEID |
| COUPONTYPES_UUID | UNIQUE | UUID |

## CREDITRATINGORDINALS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CREDITRATINGORDINALS | PRIMARY KEY | CREDITRATINGORDINALID |

## CREDITRATINGS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CREDITRATINGS | PRIMARY KEY | CREDITRATINGID |

## CURRENCIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CURRENCIES | PRIMARY KEY | CURRENCYID |

## CUSTOMSTATEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CUSTOMSTATEMENTS | PRIMARY KEY | CUSTOMSTATEMENTID |
| CUSTOMSTATEMENTS_UUID | UNIQUE | UUID |

## CUSTOMSTATEMENTWRITERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CUSTOMSTATEMENTWRITERS | PRIMARY KEY | CUSTOMSTATEMENTWRITERID |

## DATETIMINGS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_DATETIMINGS | PRIMARY KEY | DATETIMINGID |

## DEBTINSTRUMENTPRICES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_DEBTINSTRUMENTPRICES | PRIMARY KEY | DEBTINSTRUMENTPRICEID |

## DEBTINSTRUMENTPRICESBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_DEBTINSTRUMENTPRICESBULK | PRIMARY KEY | DEBTINSTRUMENTPRICESBULKID |

## DISPUTECATEGORIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_DISPUTECATEGORIES | PRIMARY KEY | DISPUTECATEGORYID |
| DISPUTECATEGORIES_UUID | UNIQUE | UUID |

## DISPUTECLASSIFICATIONRESULTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_DISPUTECLASSRESULTS | PRIMARY KEY | DISPUTECLASSIFICATIONRESULTID |

## DISTRIBUTIONHISTORY

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_DISTRIBUTIONHISTORY | PRIMARY KEY | DISTRIBUTIONHISTORYID |

## DISTRIBUTIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_DISTRIBUTIONS | PRIMARY KEY | DISTRIBUTIONID |

## ECAGREEMENTRESULTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ECAGREEMENTRESULTS | PRIMARY KEY | ECAGREEMENTRESULTID |

## ECPOSITIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ECPOSITIONS | PRIMARY KEY | ECPOSITIONID |

## ECRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ECRECORDS | PRIMARY KEY | ECRECORDID |

## ELIGIBILITYBREACHES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ELIGIBILITYBREACHES | PRIMARY KEY | ELIGIBILITYBREACHID |

## ELIGIBILITYBREACHESXECPOSITION

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ELIGIBILITYBREACHESXECPOSIT | PRIMARY KEY | ELIGIBILITYBREACHID, ECPOSITIONID |

## ELIGIBILITYRULEBUCKETCHANGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ELIGIBILITYRULEBUCKETCHANGE | PRIMARY KEY | ELIGIBILITYRULEBUCKETCHANGEID |

## ELIGIBILITYRULECHANGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ELIGIBILITYRULECHANGES | PRIMARY KEY | ELIGIBILITYRULECHANGEID |

## ELIGIBILITYRULECRITERIA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ELIGIBILITYRULECRITERIA | PRIMARY KEY | ELIGIBILITYRULECRITERIAID |

## ELIGIBILITYRULES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ELIGIBILITYRULES | PRIMARY KEY | ELIGIBILITYRULEID |

## ELIGIBILITYRULESXCOLLATBUCKETS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ELIGIBILITYRULESXCOLLATBUCK | PRIMARY KEY | ELIGIBILITYRULEID, COLLATERALBUCKETID |

## ELIGIBLECOLLATERALS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ELIGIBLECOLLATERALS | PRIMARY KEY | ELIGIBLECOLLATERALID |

## ENTITIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ENTITIES | PRIMARY KEY | ENTITYID |
| ENTITIES_UUID | UNIQUE | UUID |

## ENTITIESBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ENTITIESBULK | PRIMARY KEY | ENTITIESBULKID |

## ENTITIESXCREDITRATINGS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ENTITIESXCREDITRATINGS | PRIMARY KEY | ENTITYID, CREDITRATINGID |

## ENTITIESXEXTDATAOVERRIDES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ENTITIESXEXTDATAOVERRIDES | PRIMARY KEY | ENTITYID, EXTENSIONDATAOVERRIDEID |

## ENTITYALIASES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ENTITYALIASES | PRIMARY KEY | ENTITYALIASID |

## ENTITYGROUPALIASES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ENTITYGROUPALIASES | PRIMARY KEY | ENTITYGROUPALIASID |

## ENTITYGROUPS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ENTITYGROUPS | PRIMARY KEY | ENTITYGROUPID |
| ENTITYGROUPS_UUID | UNIQUE | UUID |

## ENTITYRATINGSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ENTITYRATINGSBULK | PRIMARY KEY | ENTITYRATINGSBULKID |

## EQUITYINSTRUMENTPRICES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EQUITYINSTRUMENTPRICES | PRIMARY KEY | EQUITYINSTRUMENTPRICEID |

## EQUITYINSTRUMENTPRICESBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EQUITYINSTRUMENTPRICESBULK | PRIMARY KEY | EQUITYINSTRUMENTPRICESBULKID |

## EXACTDATETIMINGS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXACTDATETIMINGS | PRIMARY KEY | EXACTDATETIMINGID |

## EXCHANGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXCHANGES | PRIMARY KEY | EXCHANGEID |
| EXCHANGES_UUID | UNIQUE | UUID |

## EXPOSURESTATEMENTHISTORIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXPOSURESTATEMENTHISTORIES | PRIMARY KEY | EXPOSURESTATEMENTHISTORYID |

## EXPOSURETRADEOVERRIDES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXPOSURETRADEOVERRIDES | PRIMARY KEY | EXPOSURETRADEOVERRIDEID |

## EXPOSURETRADEOVERRIDESBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXPOSURETRADEOVERRIDESBULK | PRIMARY KEY | EXPOSURETRADEOVERRIDESBULKID |

## EXTENSIONDATAOVERRIDES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXTENSIONDATAOVERRIDES | PRIMARY KEY | EXTENSIONDATAOVERRIDEID |

## EXTENSIONFIELDDEFINITIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXTENSIONFIELDDEFINITIONS | PRIMARY KEY | EXTENSIONFIELDDEFINITIONID |
| EXTENSIONFIELDDEFINITIONS_UUID | UNIQUE | UUID |

## EXTENSIONLISTITEMS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXTENSIONLISTITEMS | PRIMARY KEY | EXTENSIONLISTITEMID |

## EXTRACTCONFIGURATIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXTRACTCONFIGURATIONS | PRIMARY KEY | EXTRACTCONFIGURATIONID |

## EXTRACTMESSAGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXTRACTMESSAGES | PRIMARY KEY | EXTRACTMESSAGEID |

## EXTRACTRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXTRACTRECORDS | PRIMARY KEY | EXTRACTRECORDID |

## FILEDELIMITERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_FILEDELIMITERS | PRIMARY KEY | FILEDELIMITERID |

## FILEFORMATS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_FILEFORMATS | PRIMARY KEY | FILEFORMATID |

## FUNDSOURCES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_FUNDSOURCES | PRIMARY KEY | FUNDSOURCEID |
| FUNDSOURCES_UUID | UNIQUE | UUID |

## FXRATES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_FXRATES | PRIMARY KEY | FXRATEID |

## FXRATESBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_FXRATESBULK | PRIMARY KEY | FXRATESBULKID |

## FXRATESOURCES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_FXRATESOURCES | PRIMARY KEY | FXRATESOURCEID |
| FXRATESOURCES_UUID | UNIQUE | UUID |

## GLOBALLIMITMESSAGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_GLOBALLIMITMESSAGES | PRIMARY KEY | GLOBALLIMITMESSAGEID |

## GLOBALLIMITPOSITIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_GLOBALLIMITPOSITIONS | PRIMARY KEY | GLOBALLIMITPOSITIONID |

## GLOBALLIMITRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_GLOBALLIMITRECORDS | PRIMARY KEY | GLOBALLIMITRECORDID |

## HOLIDAYCALENDARS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_HOLIDAYCALENDARS | PRIMARY KEY | HOLIDAYCALENDARID |
| HOLIDAYCALENDARS_UUID | UNIQUE | UUID |

## HOLIDAYS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_HOLIDAYS | PRIMARY KEY | HOLIDAYID |

## HOLIDAYSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_HOLIDAYSBULK | PRIMARY KEY | HOLIDAYSBULKID |

## IMPORTCONFIGURATIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_IMPORTCONFIGURATIONS | PRIMARY KEY | IMPORTCONFIGURATIONID |

## IMPORTMESSAGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_IMPORTMESSAGES | PRIMARY KEY | IMPORTMESSAGEID |

## IMPORTRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_IMPORTRECORDS | PRIMARY KEY | IMPORTRECORDID |

## INDUSTRYGROUPS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INDUSTRYGROUPS | PRIMARY KEY | INDUSTRYGROUPID |
| INDUSTRYGROUPS_UUID | UNIQUE | UUID |

## INDUSTRYSECTORS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INDUSTRYSECTORS | PRIMARY KEY | INDUSTRYSECTORID |
| INDUSTRYSECTORS_UUID | UNIQUE | UUID |

## INSTRUCTIONXDEBTLOCINSTRUMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUCTIONXDEBTLOCINSTRUME | PRIMARY KEY | SETTLEMENTINSTRUCTIONID, INSTRUMENTID |

## INSTRUCTIONXINSTRUMENTTYPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUCTIONXINSTRUMENTTYPES | PRIMARY KEY | SETTLEMENTINSTRUCTIONID, INSTRUMENTTYPEID |

## INSTRUMENTRATINGSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUMENTRATINGSBULK | PRIMARY KEY | INSTRUMENTRATINGSBULKID |

## INSTRUMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUMENTS | PRIMARY KEY | INSTRUMENTID |
| INSTRUMENTS_UUID | UNIQUE | UUID |

## INSTRUMENTSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUMENTSBULK | PRIMARY KEY | INSTRUMENTSBULKID |

## INSTRUMENTSXCMOABSASSETCLASSES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUMENTSXCMOABSASSETCLAS | PRIMARY KEY | INSTRUMENTID, CMOABSASSETCLASSID |

## INSTRUMENTSXCREDITRATINGS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUMENTSXCREDITRATINGS | PRIMARY KEY | INSTRUMENTID, CREDITRATINGID |

## INSTRUMENTSXEXTDATAOVERRIDES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUMENTSXEXTDATAOVERRIDE | PRIMARY KEY | INSTRUMENTID, EXTENSIONDATAOVERRIDEID |

## INSTRUMENTTYPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUMENTTYPES | PRIMARY KEY | INSTRUMENTTYPEID |
| INSTRUMENTTYPES_UUID | UNIQUE | UUID |

## INSTRUMENTUNDERLYINGSECTORS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUMENTUNDERLYINGSECTORS | PRIMARY KEY | INSTRUMENTUNDERLYINGSECTORID |
| INSTRUMENTUNDERLYINGSECTORS_UU | UNIQUE | UUID |

## INSTTYPESXEXTDATAOVERRIDES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTTYPESXEXTDATAOVERRIDES | PRIMARY KEY | INSTRUMENTTYPEID, EXTENSIONDATAOVERRIDEID |

## INTERESTCONFIGURATIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTCONFIGURATIONS | PRIMARY KEY | INTERESTCONFIGURATIONID |

## INTERESTCONFIGXCITIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTCONFIGXCITIES | PRIMARY KEY | INTERESTCONFIGURATIONID, CITYID |

## INTERESTCONFIGXGROUPS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTCONFIGXGROUPS | PRIMARY KEY | INTERESTCONFIGURATIONID, AGREEMENTGROUPID |

## INTERESTCONFIGXINSTRUMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTCONFIGXINSTRUMENTS | PRIMARY KEY | INTERESTCONFIGURATIONID, INSTRUMENTID |

## INTERESTMESSAGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTMESSAGES | PRIMARY KEY | INTERESTMESSAGEID |

## INTERESTPAYMENTPERIODS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTPAYMENTPERIODS | PRIMARY KEY | INTERESTPAYMENTPERIODID |

## INTERESTPAYMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTPAYMENTS | PRIMARY KEY | INTERESTPAYMENTID |

## INTERESTRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTRECORDS | PRIMARY KEY | INTERESTRECORDID |

## INTERESTTERMS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTTERMS | PRIMARY KEY | INTERESTTERMID |

## INTERESTTERMSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTTERMSBULK | PRIMARY KEY | INTERESTTERMSBULKID |

## ISSUERTYPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ISSUERTYPES | PRIMARY KEY | ISSUERTYPEID |
| ISSUERTYPES_UUID | UNIQUE | UUID |

## MAINTENANCECONFIGURATIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MAINTENANCECONFIGURATIONS | PRIMARY KEY | MAINTENANCECONFIGURATIONID |

## MAINTENANCERECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MAINTENANCERECORDS | PRIMARY KEY | MAINTENANCERECORDID |

## MANUALCREATEMOVEMENTSAGA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| MANUALCREATEMOVEMENTSAGA_PK | PRIMARY KEY | ID |

## MARGINANALYSISCONFIGURATIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINANALYSISCONFIGURATION | PRIMARY KEY | MARGINANALYSISCONFIGURATIONID |

## MARGINANALYSISMESSAGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINANALYSISMESSAGES | PRIMARY KEY | MARGINANALYSISMESSAGEID |

## MARGINANALYSISPOSITIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINANALYSISPOSITIONS | PRIMARY KEY | MARGINANALYSISPOSITIONID |

## MARGINANALYSISRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINANALYSISRECORDS | PRIMARY KEY | MARGINANALYSISRECORDID |

## MARGINCALCULATIONRESULTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINCALCULATIONRESULTS | PRIMARY KEY | MARGINCALCULATIONRESULTID |

## MARGINCALLS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINCALLS | PRIMARY KEY | MARGINCALLID |
| DI_UUID | UNIQUE | UUID |
| MC_EXTERNALID | UNIQUE | EXTERNALID |

## MARGINCALLSAGA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| MARGINCALLSAGA_PK | PRIMARY KEY | ID |

## MARGINCALLSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINCALLSBULK | PRIMARY KEY | MARGINCALLSBULKID |

## MARGINCALLTRANSITIONHISTORY

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINCALLTRANSITIONHISTORY | PRIMARY KEY | MARGINCALLTRANSITIONHISTORYID |

## MARGINCONFIGURATIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINCONFIGURATIONS | PRIMARY KEY | MARGINCONFIGURATIONID |

## MARGINCONFIGURATIONXAGREEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINCONFIGURATIONXAGREEME | PRIMARY KEY | MARGINCONFIGURATIONID, AGREEMENTID |

## MARGINCONFIGURATIONXCITIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINCONFIGURATIONXCITIES | PRIMARY KEY | MARGINCONFIGURATIONID, MANAGINGLOCATIONID |

## MARGINCONFIGURATIONXPRINCIPALS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINCONFIGURATIONXPRINCIP | PRIMARY KEY | MARGINCONFIGURATIONID, PRINCIPALID |

## MARGINCONFIGXGROUPS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINCONFIGXGROUPS | PRIMARY KEY | MARGINCONFIGURATIONID, AGREEMENTGROUPID |

## MARGINCREATEMOVEMENTSAGA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| MARGINCREATEMOVEMENTSAGA_PK | PRIMARY KEY | ID |

## MARGINMESSAGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINMESSAGES | PRIMARY KEY | MARGINMESSAGEID |

## MARGINRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINRECORDS | PRIMARY KEY | MARGINRECORDID |

## MARGINTERMS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINTERMS | PRIMARY KEY | MARGINTERMID |

## MARGINTERMSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINTERMSBULK | PRIMARY KEY | MARGINTERMSBULKID |

## MARGINTERMSXRATINGAGENCIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINTERMSXRATINGAGENCIES | PRIMARY KEY | MARGINTERMID, RATINGAGENCYID |

## MARGINTRANSITIONSAGA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| MARGINTRANSITIONSAGA_PK | PRIMARY KEY | ID |

## MARKETINDEXES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARKETINDEXES | PRIMARY KEY | MARKETINDEXID |
| MARKETINDEXES_UUID | UNIQUE | UUID |

## MARKETINDEXRATES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARKETINDEXRATES | PRIMARY KEY | MARKETINDEXRATEID |

## MARKETINDEXRATESBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARKETINDEXRATESBULK | PRIMARY KEY | MARKETINDEXRATESBULKID |

## MISMATCHREASONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MISMATCHREASONS | PRIMARY KEY | MISMATCHREASONID |

## MOVEMENTCONCENTRATIONBREACHES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MOVEMENTCONCENTRATIONBREACH | PRIMARY KEY | MOVEMENTCONCENTRATIONBREACHID |

## MOVEMENTELIGIBILITYBREACHES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MOVEMENTELIGIBILITYBREACHES | PRIMARY KEY | MOVEMENTELIGIBILITYBREACHID |

## MOVEMENTGROUPS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MOVEMENTGROUPS | PRIMARY KEY | MOVEMENTGROUPID |

## MOVEMENTHISTORY

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MOVEMENTHISTORY | PRIMARY KEY | MOVEMENTHISTORYID |

## MOVEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MOVEMENTS | PRIMARY KEY | MOVEMENTID |

## MOVEMENTSXPANDLMARGINRESULTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MOVEMENTSXPANDLMARGINRESULT | PRIMARY KEY | MARGINCALCULATIONRESULTID, MOVEMENTID |

## MOVEMENTTRANSITIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MOVEMENTTRANSITIONS | PRIMARY KEY | MOVEMENTTRANSITIONID |

## MOVEMENTVERIFICATIONRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MOVEMENTVERIFICATIONRECORDS | PRIMARY KEY | MOVEMENTVERIFICATIONRECORDID |

## MUNICIPALREGIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MUNICIPALREGIONS | PRIMARY KEY | MUNICIPALREGIONID |
| MUNICIPALREGIONS_UUID | UNIQUE | UUID |

## MUNICIPALSTATES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MUNICIPALSTATES | PRIMARY KEY | MUNICIPALSTATEID |
| MUNICIPALSTATES_UUID | UNIQUE | UUID |

## ORGANIZATIONTYPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ORGANIZATIONTYPES | PRIMARY KEY | ORGANIZATIONTYPEID |
| ORGANIZATIONTYPES_UUID | UNIQUE | UUID |

## OTCANALYSISEXTDATAOVERRIDES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_OTCANALYSISEXTDATAOVERRIDES | PRIMARY KEY | OTCANALYSISEXTDATAOVERRIDEID |

## OTCANALYSISTRADES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_OTCANALYSISTRADES | PRIMARY KEY | OTCANALYSISTRADEID |

## OTCCOMPARISONTRADES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_OTCCOMPARISONTRADES | PRIMARY KEY | OTCCOMPARISONTRADEID |

## OTCCOMPARISONTRADESBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_OTCCOMPARISONTRADESBULK | PRIMARY KEY | OTCCOMPARISONTRADESBULKID |

## OTCEXTDATAOVERRIDES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_OTCEXTDATAOVERRIDES | PRIMARY KEY | OTCEXTDATAOVERRIDEID |

## OTCTRADEANALYSISEXTDATA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_OTCTRADEANALYSISEXTDATA | PRIMARY KEY | OTCTRADEANALYSISEXTDATAID |

## OTCTRADES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_OTCTRADES | PRIMARY KEY | OTCTRADEID |

## PENDINGAGREEMENTMARGINS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PENDINGAGREEMENTMARGINS | PRIMARY KEY | PENDINGAGREEMENTMARGINID |

## PENDINGAGREEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PENDINGAGREEMENTS | PRIMARY KEY | PENDINGAGREEMENTID |

## PENDINGCONTACTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PENDINGCONTACTID | PRIMARY KEY | PENDINGCONTACTID |

## PENDINGENTITIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PENDINGENTITYID | PRIMARY KEY | PENDINGENTITYID |

## PENDINGSETTLEMENTINSTRUCTIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PENDINGSETTLEMENTINSTRUCTIO | PRIMARY KEY | PENDINGSETTLEMENTINSTRUCTIONID |

## PENDINGTRADECOVERAGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PENDINGTRADECOVERAGES | PRIMARY KEY | PENDINGTRADECOVERAGEID |

## PLACEOFSETTLEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PLACEOFSETTLEMENTS | PRIMARY KEY | PLACEOFSETTLEMENTID |
| PLACEOFSETTLEMENTS_UUID | UNIQUE | UUID |

## POSITIONSTATEMENTHISTORIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_POSITIONSTATEMENTHISTORIES | PRIMARY KEY | POSITIONSTATEMENTHISTORYID |

## PRICESOURCES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PRICESOURCES | PRIMARY KEY | PRICESOURCEID |
| PRICESOURCES_UUID | UNIQUE | UUID |

## PROFITANDLOSSES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PROFITANDLOSSES | PRIMARY KEY | PROFITANDLOSSID |

## PROFITANDLOSSESBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PROFITANDLOSSESBULK | PRIMARY KEY | PROFITANDLOSSESBULKID |

## RATINGAGENCIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_RATINGAGENCIES | PRIMARY KEY | RATINGAGENCYID |
| RATINGAGENCIES_UUID | UNIQUE | UUID |

## RATINGBASEDMARGINTERMS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_RATINGBASEDMARGINTERMS | PRIMARY KEY | RATINGBASEDMARGINTERMID |

## RATINGELIGIBILITYRULEBANDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_RATINGELIGIBILITYRULEBANDS | PRIMARY KEY | RATINGELIGIBILITYRULEBANDID |

## RATINGELIGIBILITYRULES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_RATINGELIGIBILITYRULES | PRIMARY KEY | RATINGELIGIBILITYRULEID |

## RATINGRULEXCOLLATERALBUCKETS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_RATINGRULEXCOLLATERALBUCKET | PRIMARY KEY | RATINGELIGIBILITYRULEID, COLLATERALBUCKETID |

## RATINGRULEXINSTRUMENTAGENCIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_RATINGRULEXINSTRUMENTAGENCI | PRIMARY KEY | RATINGELIGIBILITYRULEID, RATINGAGENCYID |

## RATINGRULEXPARTYAGENCIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_RATINGRULEXPARTYAGENCIES | PRIMARY KEY | RATINGELIGIBILITYRULEID, RATINGAGENCYID |

## RATINGWATCHES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_RATINGWATCHES | PRIMARY KEY | RATINGWATCHID |
| RATINGWATCHES_UUID | UNIQUE | UUID |

## REPOANALYSISEXTDATAOVERRIDES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_REPOANALYSISEXTDATAOVERRIDE | PRIMARY KEY | REPOANALYSISEXTDATAOVERRIDEID |

## REPOANALYSISTRADES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_REPOANALYSISTRADES | PRIMARY KEY | REPOANALYSISTRADEID |

## REPOEXTDATAOVERRIDES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_REPOEXTDATAOVERRIDES | PRIMARY KEY | REPOEXTDATAOVERRIDEID |

## REPOTRADEANALYSISEXTDATA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_REPOTRADEANALYSISEXTDATA | PRIMARY KEY | REPOTRADEANALYSISEXTDATAID |

## REPOTRADES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_REPOTRADES | PRIMARY KEY | REPOTRADEID |

## RULEFILTERPARAMETERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_RULEFILTERPARAMETERS | PRIMARY KEY | RULEFILTERPARAMETERID |

## RULEFILTERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_RULEFILTERS | PRIMARY KEY | RULEFILTERID |

## SEASONINGS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SEASONINGS | PRIMARY KEY | SEASONINGID |
| SEASONINGS_UUID | UNIQUE | UUID |

## SERIALTASKQUEUE

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SERIALTASKQUEUE | PRIMARY KEY | SERIALTASKQUEUEID |

## SETAGREEDAMOUNTSAGA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SETAGREEDAMOUNTSAGA_PK | PRIMARY KEY | ID |

## SETTLEMENTINSTRUCTIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SETTLEMENTINSTRUCTIONS | PRIMARY KEY | SETTLEMENTINSTRUCTIONID |
| SETTLEMENTINSTRUCTIONS_UUID | UNIQUE | UUID |

## SETTLEMENTXCITIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SETTLEMENTXCITIES | PRIMARY KEY | SETTLEMOVEMENTCONFIGURATIONID, CITYID |

## SETTLEMOVEMENTCONFIGURATIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SETTLEMOVEMENTCONFIGURATION | PRIMARY KEY | SETTLEMOVEMENTCONFIGURATIONID |

## SETTLEMOVEMENTFILTERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SETTLEMOVEMENTFILTERS | PRIMARY KEY | SETTLEMOVEMENTFILTERID |

## SETTLEMOVEMENTMESSAGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SETTLEMOVEMENTMESSAGES | PRIMARY KEY | SETTLEMOVEMENTMESSAGEID |

## SETTLEMOVEMENTRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SETTLEMOVEMENTRECORDS | PRIMARY KEY | SETTLEMOVEMENTRECORDID |

## SHAREDAPPROVALRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SHAREDAPPROVALRECORDS | PRIMARY KEY | SHAREDAPPROVALRECORDID |

## SPECIFICTRADECOVERAGE

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SPECIFICTRADECOVERAGE | PRIMARY KEY | SPECIFICTRADECOVERAGEID |

## STATEMENTDISCLAIMERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_STATEMENTDISCLAIMERS | PRIMARY KEY | STATEMENTDISCLAIMERID |

## STOCKINDEXES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_STOCKINDEXES | PRIMARY KEY | STOCKINDEXID |
| STOCKINDEXES_UUID | UNIQUE | UUID |

## SUBSTITUTIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SUBSTITUTIONS | PRIMARY KEY | SUBSTITUTIONID |
| SUBSTITUTIONS_UUID | UNIQUE | UUID |

## SUBSTRANSITIONHISTORY

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SUBSTRANSITIONHISTORY | PRIMARY KEY | SUBSTRANSITIONHISTORYID |

## SYS_EXPORT_SCHEMA_01

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044362 | UNIQUE | PROCESS_ORDER, DUPLICATE |

## SYS_EXPORT_SCHEMA_02

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044286 | UNIQUE | PROCESS_ORDER, DUPLICATE |

## TLM_EMAIL_OD

| Constraint | Type | Column(s) |
|-----------|------|----------|
| TLM_EMAIL_OD_PK | PRIMARY KEY | MESSAGEID |

## TLM_EMAIL_TO

| Constraint | Type | Column(s) |
|-----------|------|----------|
| TLM_EMAIL_TO_PK | PRIMARY KEY | ID |

## TLM_FOUNDATION_OD

| Constraint | Type | Column(s) |
|-----------|------|----------|
| TLM_FOUNDATION_OD_PK | PRIMARY KEY | MESSAGEID |

## TLM_FOUNDATION_SS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| TLM_FOUNDATION_SS_PK | PRIMARY KEY | MESSAGETYPE, SUBSCRIBER |

## TLM_FOUNDATION_TO

| Constraint | Type | Column(s) |
|-----------|------|----------|
| TLM_FOUNDATION_TO_PK | PRIMARY KEY | ID |

## TLM_WORKFLOWAUTOMATION_OD

| Constraint | Type | Column(s) |
|-----------|------|----------|
| TLM_WORKFLOWAUTOMATION_OD_PK | PRIMARY KEY | MESSAGEID |

## TLM_WORKFLOWAUTOMATION_SS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| TLM_WORKFLOWAUTOMATION_SS_PK | PRIMARY KEY | MESSAGETYPE, SUBSCRIBER |

## TLM_WORKFLOWAUTOMATION_TO

| Constraint | Type | Column(s) |
|-----------|------|----------|
| TLM_WORKFLOWAUTOMATION_TO_PK | PRIMARY KEY | ID |

## TRADEASSIGNMENTCONFIGURATIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRADEASSIGNMENTCONFIGURATIO | PRIMARY KEY | TRADEASSIGNMENTCONFIGURATIONID |

## TRADEASSIGNMENTMESSAGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRADEASSIGNMENTMESSAGES | PRIMARY KEY | TRADEASSIGNMENTMESSAGEID |

## TRADEASSIGNMENTRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRADEASSIGNMENTRECORDS | PRIMARY KEY | TRADEASSIGNMENTRECORDID |

## TRADEASSIGNMENTRULES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRADEASSIGNMENTRULES | PRIMARY KEY | TRADEASSIGNMENTRULEID |

## TRADEASSIGNMENTRULESXCPTYBRANC

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRADEASMENTRULESXCPTYBRANC | PRIMARY KEY | TRADEASSIGNMENTRULEID, BRANCHID |

## TRADEASSIGNMENTRULESXPRINBRANC

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRADEASSIGNMENTRULESXPRINBR | PRIMARY KEY | TRADEASSIGNMENTRULEID, BRANCHID |

## TRADEASSIGNMENTRULESXTRADETYPE

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRADEASSIGNMENTRULESXTRADET | PRIMARY KEY | TRADEASSIGNMENTRULEID, TRADETYPEID |

## TRADETYPEALIASES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRADETYPEALIASES | PRIMARY KEY | TRADETYPEALIASID |

## TRADETYPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRADETYPES | PRIMARY KEY | TRADETYPEID |
| TRADETYPES_UUID | UNIQUE | UUID |

## TRIPARTYCOLLPOSITIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRIPARTYCOLLPOSITIONS | PRIMARY KEY | TRIPARTYCOLLPOSITIONID |

## TRIPARTYECAGREEMENTRESULTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRIPTYECAGMTRESULTS | PRIMARY KEY | TRIPARTYECAGREEMENTRESULTID |

## TRIPARTYECRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRIPARTYECRECORDS | PRIMARY KEY | TRIPARTYECRECORDID |

## TRIPARTYECREPORTINGDATA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TRIPARTYECREPORTINGDATA | PRIMARY KEY | TRIPARTYECREPORTINGDATAID |

## T_AEC_ANVIL

| Constraint | Type | Column(s) |
|-----------|------|----------|
| T_AEC_ANVIL_PK | PRIMARY KEY | COUNTERPARTY_NDG |

## T_AEC_ECB_ELIGBLE_ASSETS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044500 | PRIMARY KEY | ISIN_CODE |

## T_AEC_GCIF

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044538 | PRIMARY KEY | COUNTERPARTY_NDG |

## T_AEC_HISTORY

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044392 | PRIMARY KEY | HISTORY_ID |

## T_AEC_LIQUID_BONDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044354 | PRIMARY KEY | ISIN_CODE |

## T_AEC_RULES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044469 | PRIMARY KEY | RULE_ID |

## T_AEC_RULES_ASSET_CLASSES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| T_AEC_RULES_ASSET_CLASSES_PK | PRIMARY KEY | RULE_ID, ASSET_CLASS_ORDINAL, RULE_CRITERIA_ID |

## T_AEC_RULES_CRITERIA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044671 | PRIMARY KEY | RULE_CRITERIA_ID |

## T_AEC_TOXIC_ISINS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044476 | PRIMARY KEY | ISIN_CODE |

## T_ANVIL_MOVEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| T_ANVIL_MOVEMENTS | PRIMARY KEY | ANVIL_MOVEMENTSID |

## T_API_LOCK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044277 | PRIMARY KEY | LOCK_ID |

## T_API_MOVEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044636 | PRIMARY KEY | ID |

## T_CMS_FAXOUTBOX

| Constraint | Type | Column(s) |
|-----------|------|----------|
| T_CMS_FAXOUTBOX_PK | PRIMARY KEY | T_CMS_FAXOUTBOXID |
| T_CMS_FAXOUTBOX_UK | UNIQUE | XMLMESSAGEID |

## T_CMS_REPORTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| T_CMS_REPORTS_PK | PRIMARY KEY | TCR_ID |

## T_CMS_STATIC_DATA_FROM_CMS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| T_CMS_STATIC_DATA_FROM_CMS_PK | PRIMARY KEY | SDFC_AGREEMENT_ID |

## T_CMS_STATIC_DATA_TO_CMS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| T_CMS_STATIC_DATA_TO_CMS_PK | PRIMARY KEY | SDTC_AGREEMENT_ID |

## T_CMS_WBP_ALGO_RECON

| Constraint | Type | Column(s) |
|-----------|------|----------|
| T_CMS_WBP_ALGO_RECON_PK | PRIMARY KEY | SDAR_PK |

## T_CMT_MOVEMENTSENTTOANVIL

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_T_CMT_MOVEMENTSENTTOANVIL | PRIMARY KEY | T_CMT_MOVEMENTSENTTOANVILID |

## T_CMT_PAYMENTHISTORY

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044704 | PRIMARY KEY | EVENTGROUPID |

## T_IMC_ADDITIONAL_INFO

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044497 | PRIMARY KEY | PK |

## T_IMC_ALL_SMR

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044357 | PRIMARY KEY | PK |

## T_IMC_COLLATERAL_INSTRUCTION

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044495 | PRIMARY KEY | PK |

## T_IMC_COLLATERAL_STATUS_ADVICE

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044698 | PRIMARY KEY | PK |

## T_IMC_COLLEXPOSURE_STM

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044528 | PRIMARY KEY | PK |
| UK_OIMPM2AUN6YRURBRECWSUQ7VH | UNIQUE | ALLSUMMY_ID |
| UK_OWAGWA0OT08WT4O3QY78CITHO | UNIQUE | EXPTYPESUMM_ID |

## T_IMC_COLL_TRANSACTION

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_IMC_COLL_TRANSACTION | PRIMARY KEY | PK |
| UX_IMC_COLL_TRANSACTION | UNIQUE | AGREEMENTID, CUSTODIAN, OUR_TRANSACTION_REF |

## T_IMC_CTPY_SMR

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044596 | PRIMARY KEY | PK |

## T_IMC_CUSTODIAN_WORKFLOW

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044330 | PRIMARY KEY | PK |

## T_IMC_EXPSTM_SUMMARY

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044457 | PRIMARY KEY | PK |

## T_IMC_EXP_SMR

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044308 | PRIMARY KEY | PK |

## T_IMC_FIA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044496 | PRIMARY KEY | PK |

## T_IMC_FIN

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044756 | PRIMARY KEY | PK |

## T_IMC_LINK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044639 | PRIMARY KEY | PK |

## T_IMC_QUANTITY_BREAKDOWN

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044651 | PRIMARY KEY | PK |

## T_IMC_SCHEDULED_CANCEL

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_IMC_SCHEDULED_CANCEL | PRIMARY KEY | PK |

## T_IMC_SECURDTL

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044687 | PRIMARY KEY | PK |

## T_IMC_STATEMENT_OF_HOLDING

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044423 | PRIMARY KEY | PK |

## T_IMC_SUB_BALANCE

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044601 | PRIMARY KEY | PK |

## T_IMC_SUB_SAFE_ACCOUNT

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044801 | PRIMARY KEY | PK |

## T_IMC_TRANDTL

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044424 | PRIMARY KEY | PK |

## T_IMC_VALDTL

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044608 | PRIMARY KEY | PK |

## T_IMC_VM_LOCKUP_AGREEMENT

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_IMC_VM_LOCKUP_AGREEMENT | PRIMARY KEY | PK |
| UX_VM_LOCKUP_AGREEMENT | UNIQUE | AGREEMENTID |

## T_JOB_STATUS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| T_JOB_STATUS_PK | PRIMARY KEY | JOB_STATUSID |

## T_PAS_SENT_MOVEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PAS_SENT_MOVEMENTS | PRIMARY KEY | DISTRIBUTION, MOVEMENTID |

## T_QCE_CT_BUCKETREQUESTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0045695 | PRIMARY KEY | REQUEST_ID |

## T_QCE_CT_BUCKETREQUESTSXAGREEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0045698 | PRIMARY KEY | REQUEST_ID, AGREEMENT_ID |

## T_QCE_CT_MOVEMENTOVERRIDES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| T_QCE_CT_MOVEMENTOVERRIDES_PK | PRIMARY KEY | MOVEMENTOVERRIDE_ID |

## T_QCE_CT_TRIOPTIMA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_REPORT_ID | PRIMARY KEY | REPORT_ID |

## T_WTM_LOCK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0044386 | PRIMARY KEY | LOCK_ID |

## T_WTM_REQUEST

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WTM_REQUEST | PRIMARY KEY | REQUEST_ID |
| UQ_WTM_REQUEST_TRANSFERREF | UNIQUE | TRANSFER_REFERENCE |

## T_WTM_RESPONSE

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WTM_RESPONSE | PRIMARY KEY | RESPONSE_ID |

## T_WTM_SENDSTATE

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WTM_SENDSTATE | PRIMARY KEY | SENDSTATEID |
| U01_WTM_SENDSTATE | UNIQUE | DISTRIBUTIONID |
| U02_WTM_SENDSTATE | UNIQUE | MOVEMENTID |

## UNASSIGNEDOTCTRADES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_UNASSIGNEDOTCTRADES | PRIMARY KEY | UNASSIGNEDOTCTRADEID |

## UNASSIGNEDREPOTRADES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_UNASSIGNEDREPOTRADES | PRIMARY KEY | UNASSIGNEDREPOTRADEID |

## USERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_USERS1 | PRIMARY KEY | USERID |
| USERS_UUID | UNIQUE | UUID |

## USERSTATEMENTCOLUMNFILTERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_USERSTATEMENTCOLUMNFILTERID | PRIMARY KEY | USERSTATEMENTCOLUMNFILTERID |

## USERSTATEMENTCOLUMNS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_USERSTATEMENTCOLUMNS | PRIMARY KEY | USERSTATEMENTCOLUMNID |

## USERSTATEMENTDEFINITIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_USERSTATEMENTDEFINITIONID | PRIMARY KEY | USERSTATEMENTDEFINITIONID |

## USERSTATEMENTFILLERCOLUMNS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_USERSTATEMENTFILLERCOLUMNS | PRIMARY KEY | USERSTATEMENTFILLERCOLUMNID |

## USERSTATEMENTFILTERCHOICES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_USPFC | PRIMARY KEY | USERSTATEMENTFILTERCHOICEID |

## USERSXAGREEMENTRESPONSIBILITY

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_USERSXAGREEMENTRESPONSIBILI | PRIMARY KEY | AGREEMENTRESPONSIBILITYID, USERID |

## USERS_USERNAME_EMPTY

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_USER_USERNAME_EMPTY | PRIMARY KEY | USERID |

## WAIVECATEGORIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WAIVECATEGORIES | PRIMARY KEY | WAIVECATEGORYID |
| WAIVECATEGORIES_UUID | UNIQUE | UUID |

## WORKFLOWGROUPINGS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WORKFLOWGROUPINGS | PRIMARY KEY | WORKFLOWGROUPINGID |

## WORKFLOWS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WORKFLOWS | PRIMARY KEY | WORKFLOWID |

## WORKFLOWSTATES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WORKFLOWSTATES | PRIMARY KEY | WORKFLOWSTATEID |

## WORKFLOWSTATETRANSITIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WORKFLOWSTATETRANSITIONS | PRIMARY KEY | WORKFLOWSTATETRANSITIONID |

## WORKFLOWUPLOADDATA

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WORKFLOWUPLOADDATA | PRIMARY KEY | WORKFLOWUPLOADDATAID |

## WORKFLOWUPLOADMESSAGES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WORKFLOWUPLOADMESSAGES | PRIMARY KEY | WORKFLOWUPLOADMESSAGEID |

## WORKFLOWUPLOADRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WORKFLOWUPLOADRECORDS | PRIMARY KEY | WORKFLOWUPLOADRECORDID |

## WRONGWAYRISKRULES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WRONGWAYRISKRULES | PRIMARY KEY | WRONGWAYRISKRULEID |
| WRONGWAYRISKRULES_UUID | UNIQUE | UUID |

## WRONGWAYRISKRULESXBUCKETS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_WRONGWAYRISKRULESXBUCKETS | PRIMARY KEY | WRONGWAYRISKRULEID, COLLATERALBUCKETID |

