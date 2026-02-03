# Algo Database Schema — Foreign Keys

Generated: 2026-02-03 13:45 | Schema: TUQCEUCBREP01 | Database: PDQCEQ11

**52 foreign keys**

## AGREEMENTBRANCHES

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_3_AGREEMENTBRANCHES_AGREE | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## AGREEMENTCONTACTS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_AGREEMENTCONTACTS_AGREE | AGREEMENTID | AGREEMENTS | AGREEMENTID |
| FK_1_3_AGREEMENTCONTACTS_CONTA | CONTACTID | CONTACTS | CONTACTID |

## AGREEMENTMARGINS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_2_AGREEMENTMARGINS_AGREEM | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## AGREEMENTRESPONSIBILITIES

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_3_AGREEMENTRESPONSIBILITI | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## AGREEMENTS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_23_AGREEMENTS_CPTYCREDITS | CPTYCREDITSUPPORTPROVIDERID | ENTITIES | ENTITYID |
| FK_1_25_AGREEMENTS_PRINCREDITS | PRINCREDITSUPPORTPROVIDERID | ENTITIES | ENTITYID |
| FK_1_5_AGREEMENTS_COUNTERPARTY | COUNTERPARTYID | ENTITIES | ENTITYID |
| FK_1_7_AGREEMENTS_PRINCIPALID_ | PRINCIPALID | ENTITIES | ENTITYID |

## AGREEMENTTRADETYPES

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_AGREEMENTTRADETYPES_AGR | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## COLLATBUCKETRATINGBANDS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_2_COLLATERALBUCKETRATINGB | COLLATERALBUCKETID | COLLATERALBUCKETS | COLLATERALBUCKETID |

## COLLATERALBUCKETCURRENCIES

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_COLLATERALBUCKETCURRENC | COLLATERALBUCKETID | COLLATERALBUCKETS | COLLATERALBUCKETID |

## COLLATERALBUCKETINSTRTYPES

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_COLLATERALBUCKETINSTRTY | COLLATERALBUCKETID | COLLATERALBUCKETS | COLLATERALBUCKETID |

## COLLATERALBUCKETISSUERS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_COLLATERALBUCKETISSUERS | COLLATERALBUCKETID | COLLATERALBUCKETS | COLLATERALBUCKETID |

## COLLATERALBUCKETRAINSTR

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_COLLATERALBUCKETRAINSTR | COLLATERALBUCKETID | COLLATERALBUCKETS | COLLATERALBUCKETID |

## COLLATERALBUCKETRAISSUERS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_COLLATERALBUCKETRAISSUE | COLLATERALBUCKETID | COLLATERALBUCKETS | COLLATERALBUCKETID |

## COLLATERALPOSITIONS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_35_COLLATERALPOSITIONS_AG | AGREEMENTID | AGREEMENTS | AGREEMENTID |
| FK_1_37_COLLATERALPOSITIONS_IN | INSTRUMENTID | INSTRUMENTS | INSTRUMENTID |

## CONTACTS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_3_CONTACTS_ENTITYID_REFER | ENTITYID | ENTITIES | ENTITYID |

## CREDITSCENARIOS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_2_CREDITSCENARIOS_AGREEME | AGREEMENTID | AGREEMENTS | AGREEMENTID |
| FK_1_4_CREDITSCENARIOS_PRINCIP | PRINCIPALID | ENTITIES | ENTITYID |
| FK_1_6_CREDITSCENARIOS_COUNTER | COUNTERPARTYID | ENTITIES | ENTITYID |

## DAILYACCRUALS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_2_DAILYACCRUALS_AGREEMENT | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## DEBTINSTRUMENTPRICES

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_DEBTINSTRUMENTPRICES_IN | INSTRUMENTID | INSTRUMENTS | INSTRUMENTID |

## DISPUTEAGINGS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_DISPUTEAGINGS_AGMTID_RE | AGMTID | AGREEMENTS | AGREEMENTID |

## ELIGIBLECOLLATERALS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_3_ELIGIBLECOLLATERALS_AGR | AGREEMENTID | AGREEMENTS | AGREEMENTID |
| FK_1_5_ELIGIBLECOLLATERALS_INS | INSTRUMENTID | INSTRUMENTS | INSTRUMENTID |
| FK_1_7_ELIGIBLECOLLATERALS_COL | COLLATERALBUCKETID | COLLATERALBUCKETS | COLLATERALBUCKETID |

## ENTITIES

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_21_ENTITIES_PARENTENTITYI | PARENTENTITYID | ENTITIES | ENTITYID |

## ENTITYALIASES

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_ENTITYALIASES_ENTITYID_ | ENTITYID | ENTITIES | ENTITYID |

## ENTITYCREDITRATINGS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_ENTITYCREDITRATINGS_ENT | ENTITYID | ENTITIES | ENTITYID |

## EXTRACTRECORDS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_2_EXTRACTRECORDS_EXTRACTT | EXTRACTTYPE | DATATYPES | DATATYPEID |
| FK_1_3_EXTRACTRECORDS_STATUS_R | STATUS | STATUS | STATUSID |

## INSTRUMENTS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_13_INSTRUMENTS_ISSUERID_R | ISSUERID | ENTITIES | ENTITYID |
| FK_1_82_INSTRUMENTS_CONFIRMING | CONFIRMINGBANKID | ENTITIES | ENTITYID |
| FK_1_84_INSTRUMENTS_ADVISINGBA | ADVISINGBANKID | ENTITIES | ENTITYID |

## INTERESTACCRUALS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_INTERESTACCRUALS_AGREEM | AGREEMENTID | AGREEMENTS | AGREEMENTID |
| FK_1_7_INTERESTACCRUALS_INSTRU | INSTRUMENTID | INSTRUMENTS | INSTRUMENTID |

## INTERESTPAYMENTS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_10_INTERESTPAYMENTS_INSTR | INSTRUMENTID | INSTRUMENTS | INSTRUMENTID |
| FK_1_2_INTERESTPAYMENTS_AGREEM | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## INTERESTTERMS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_2_INTERESTTERMS_AGREEMENT | AGREEMENTID | AGREEMENTS | AGREEMENTID |
| FK_1_8_INTERESTTERMS_MARKETIND | MARKETINDEXID | MARKETINDEXES | MARKETINDEXID |

## MARGINCALLS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_4_MARGINCALLS_AGREEMENTID | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## MARGINTERMS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_3_MARGINTERMS_AGREEMENTID | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## MOVEMENTS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_24_MOVEMENTS_AGREEMENTID_ | AGREEMENTID | AGREEMENTS | AGREEMENTID |
| FK_1_42_MOVEMENTS_SENDINGCUSTO | SENDINGCUSTODIANID | ENTITIES | ENTITYID |
| FK_1_49_MOVEMENTS_RECEIVINGCUS | RECEIVINGCUSTODIANID | ENTITIES | ENTITYID |

## NETAGREEMENTEXPOSURES

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_1_NETAGREEMENTEXPOSURES_A | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## OTCTRADES

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_55_OTCTRADES_AGREEMENTID_ | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## REPOTRADES

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_52_REPOTRADES_AGREEMENTID | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## SETTLEMENTINSTRUCTIONS

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_17_SETTLEMENTINSTRUCTIONS | AGREEMENTID | AGREEMENTS | AGREEMENTID |

## SPECIFICTRADECOVERAGE

| FK Name | Column(s) | Referenced Table | Referenced Column(s) |
|---------|-----------|-----------------|---------------------|
| FK_1_2_SPECIFICTRADECOVERAGE_A | AGREEMENTID | AGREEMENTS | AGREEMENTID |

