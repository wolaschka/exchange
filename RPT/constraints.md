# Algo Database Schema — Constraints

Generated: 2026-02-03 13:45 | Schema: TUQCEUCBREP01 | Database: PDQCEQ11

**33 primary keys, 2 unique constraints**

## AGREEMENTBRANCHES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTBRANCHES | PRIMARY KEY | BRANCHID, AGREEMENTID |

## AGREEMENTMARGINS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTMARGINS | PRIMARY KEY | AGREEMENTMARGINID |

## AGREEMENTNOTES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTNOTES | PRIMARY KEY | AGREEMENTNOTEID |

## AGREEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_AGREEMENTS | PRIMARY KEY | AGREEMENTID |

## COLLATBUCKETRATINGBANDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALBUCKETRATINGBANDS | PRIMARY KEY | COLLATERALBUCKETRATINGBANDID |

## COLLATERALBUCKETS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_COLLATERALBUCKETS | PRIMARY KEY | COLLATERALBUCKETID |

## CONTACTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_CONTACTS | PRIMARY KEY | CONTACTID |

## DATATYPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_DATATYPES | PRIMARY KEY | DATATYPEID |

## ELIGIBLECOLLATERALS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ELIGIBLECOLLATERALS | PRIMARY KEY | ELIGIBLECOLLATERALID |

## ENTITIES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ENTITIES | PRIMARY KEY | ENTITYID |

## ENTITYALIASES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_ENTITYALIASES | PRIMARY KEY | ENTITYALIASID |

## ENTITYGROUPS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0020672 | PRIMARY KEY | ENTITYGROUPID |

## ENTITYGROUPSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0020673 | PRIMARY KEY | ENTITYGROUPID |

## EXTERNALAPPROVALS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0020670 | PRIMARY KEY | EXTERNALAPPROVALID |

## EXTERNALAPPROVALSBULK

| Constraint | Type | Column(s) |
|-----------|------|----------|
| SYS_C0020679 | PRIMARY KEY | EXTERNALAPPROVALID |

## EXTRACTRECORDS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_EXTRACTRECORDS | PRIMARY KEY | EXTRACTRECORDID |

## HOLIDAYCALENDERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_HOLIDAYCALENDERS | PRIMARY KEY | HOLIDAYCALENDARID, HOLIDAYID |

## INSTRUCTIONINSTRUMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUCTIONINSTRUMENTS | PRIMARY KEY | SETTLEMENTINSTRUCTIONID, INSTRUMENTID |

## INSTRUCTIONINSTRUMENTTYPES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUCTIONINSTRUMENTTYPES | PRIMARY KEY | SETTLEMENTINSTRUCTIONID, INSTRUMENTTYPEID |

## INSTRUMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INSTRUMENTS | PRIMARY KEY | INSTRUMENTID |

## INTERESTPAYMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTPAYMENTS | PRIMARY KEY | INTERESTPAYMENTID |

## INTERESTTERMS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_INTERESTTERMS | PRIMARY KEY | INTERESTTERMID |

## JOBEXECUTION

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_JOBEXECUTION | PRIMARY KEY | EXECUTIONID |

## MARGINCALLS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINCALLS | PRIMARY KEY | MARGINCALLID |

## MARGINHOLIDAYCALENDERS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINHOLIDAYCALENDERS | PRIMARY KEY | AGREEMENTID, HOLIDAYCALENDARID |

## MARGINTERMS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARGINTERMS | PRIMARY KEY | MARGINTERMID |

## MARKETINDEXES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MARKETINDEXES | PRIMARY KEY | MARKETINDEXID |

## MOVEMENTS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_MOVEMENTS | PRIMARY KEY | MOVEMENTID, ORIGINATION |

## OTCRECONTRADES

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_OTCRECONTRADESPRIMARY | UNIQUE | OTCTRADEID |

## OTCRECONTRADESCDF

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_OTCRECONTRADESCDFPRIMARY | UNIQUE | CDFTRADEID |

## PSETHISTORY

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_PSETHISTORY | PRIMARY KEY | MOVEMENTID, ORIGINATION |

## SETTLEMENTINSTRUCTIONS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SETTLEMENTINSTRUCTIONS | PRIMARY KEY | SETTLEMENTINSTRUCTIONID |

## SPECIFICTRADECOVERAGE

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_SPECIFICTRADECOVERAGE | PRIMARY KEY | SPECIFICTRADECOVERAGEID |

## STATUS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_STATUS | PRIMARY KEY | STATUSID |

## TASKSTATUS

| Constraint | Type | Column(s) |
|-----------|------|----------|
| PK_TASKSTATUS | PRIMARY KEY | TASKID, TASKTYPE |

