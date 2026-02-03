# Algo Database Schema — Indexes

Generated: 2026-02-03 13:45 | Schema: TUQCEUCBREP01 | Database: PDQCEQ11

**45 indexes**

## AGREEMENTBRANCHES

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_AGREEMENTBRANCHES | UNIQUE | BRANCHID, AGREEMENTID |

## AGREEMENTMARGINS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_AGREEMENTMARGINS | UNIQUE | AGREEMENTMARGINID |

## AGREEMENTNOTES

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_AGREEMENTNOTES | UNIQUE | AGREEMENTNOTEID |

## AGREEMENTS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_AGREEMENTS | UNIQUE | AGREEMENTID |

## APPROVALCHANGES

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| IM03438690 | NONUNIQUE | APPROVALCHANGEID |

## AUDITCHANGES

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| IM03438690_2 | NONUNIQUE | AUDITCHANGEID |

## CCP_EUREX_DEF

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| UX_EUREX_DEF_MGNCLSCOD | UNIQUE | MGNCLSCOD |

## CCP_RPTCC203

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| UX_RPTCC203 | UNIQUE | MEMBID, RPTPRNTEFFDAT, GRPNAME, ID |

## COLLATBUCKETRATINGBANDS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_COLLATERALBUCKETRATINGBANDS | UNIQUE | COLLATERALBUCKETRATINGBANDID |

## COLLATERALBUCKETS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_COLLATERALBUCKETS | UNIQUE | COLLATERALBUCKETID |

## COLLATERALPOSITIONS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| IX_AGMTID_COLLATERALPOSITIONS | NONUNIQUE | AGREEMENTID |

## CONTACTS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_CONTACTS | UNIQUE | CONTACTID |

## DATATYPES

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_DATATYPES | UNIQUE | DATATYPEID |

## ELIGIBLECOLLATERALS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_ELIGIBLECOLLATERALS | UNIQUE | ELIGIBLECOLLATERALID |

## ENTITIES

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_ENTITIES | UNIQUE | ENTITYID |

## ENTITYALIASES

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_ENTITYALIASES | UNIQUE | ENTITYALIASID |

## ENTITYCREDITRATINGS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| IX_ENTITYCREDITRATINGS | NONUNIQUE | ENTITYID, AGENCYID, LOADTIMESTAMP |

## ENTITYGROUPS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| SYS_C0020672 | UNIQUE | ENTITYGROUPID |

## ENTITYGROUPSBULK

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| SYS_C0020673 | UNIQUE | ENTITYGROUPID |

## EXTERNALAPPROVALS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| SYS_C0020670 | UNIQUE | EXTERNALAPPROVALID |

## EXTERNALAPPROVALSBULK

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| SYS_C0020679 | UNIQUE | EXTERNALAPPROVALID |

## EXTRACTRECORDS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_EXTRACTRECORDS | UNIQUE | EXTRACTRECORDID |

## HOLIDAYCALENDERS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_HOLIDAYCALENDERS | UNIQUE | HOLIDAYCALENDARID, HOLIDAYID |

## INSTRUCTIONINSTRUMENTS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_INSTRUCTIONINSTRUMENTS | UNIQUE | SETTLEMENTINSTRUCTIONID, INSTRUMENTID |

## INSTRUCTIONINSTRUMENTTYPES

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_INSTRUCTIONINSTRUMENTTYPES | UNIQUE | SETTLEMENTINSTRUCTIONID, INSTRUMENTTYPEID |

## INSTRUMENTS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_INSTRUMENTS | UNIQUE | INSTRUMENTID |

## INTERESTPAYMENTS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_INTERESTPAYMENTS | UNIQUE | INTERESTPAYMENTID |

## INTERESTTERMS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_INTERESTTERMS | UNIQUE | INTERESTTERMID |

## JOBEXECUTION

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_JOBEXECUTION | UNIQUE | EXECUTIONID |

## MARGINCALLS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_MARGINCALLS | UNIQUE | MARGINCALLID |

## MARGINHOLIDAYCALENDERS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_MARGINHOLIDAYCALENDERS | UNIQUE | AGREEMENTID, HOLIDAYCALENDARID |

## MARGINTERMS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_MARGINTERMS | UNIQUE | MARGINTERMID |

## MARKETINDEXES

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_MARKETINDEXES | UNIQUE | MARKETINDEXID |

## MOVEMENTS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_MOVEMENTS | UNIQUE | MOVEMENTID, ORIGINATION |

## OTCRECONTRADES

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| IX_OTCRECONTRADES | NONUNIQUE | COB, TRADE_ID, TRADE_ID_EXT, FO_SYSTEM |
| IX_OTCRECONTRADES1 | NONUNIQUE | COB |
| IX_OTCRECONTRADES2 | NONUNIQUE | COB, CSA_FLAG |
| PK_OTCRECONTRADESPRIMARY | UNIQUE | OTCTRADEID |

## OTCRECONTRADESCDF

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| IX_OTCRECONTRADESCDF | NONUNIQUE | COB, TRADE_ID, TRADE_ID_EXT, FO_SYSTEM |
| PK_OTCRECONTRADESCDFPRIMARY | UNIQUE | CDFTRADEID |

## PSETHISTORY

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_PSETHISTORY | UNIQUE | MOVEMENTID, ORIGINATION |

## SETTLEMENTINSTRUCTIONS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_SETTLEMENTINSTRUCTIONS | UNIQUE | SETTLEMENTINSTRUCTIONID |

## SPECIFICTRADECOVERAGE

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_SPECIFICTRADECOVERAGE | UNIQUE | SPECIFICTRADECOVERAGEID |

## STATUS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_STATUS | UNIQUE | STATUSID |

## TASKSTATUS

| Index Name | Uniqueness | Column(s) |
|-----------|-----------|----------|
| PK_TASKSTATUS | UNIQUE | TASKID, TASKTYPE |

