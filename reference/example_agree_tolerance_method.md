
# Examples of Agree Tolerance Method Usage

## Overview

Agree Tolerance is a method of adjusting the Margin Call Amount that is Agreed to by the Principal and the Counterparty. 

Should the difference between the Principal's calculation of Margin Call Amount (Principal Call Amount) and the Counterparty's calculation (Counterparty Call Amount) is within the defined Split the Difference Tolerance, then the calculation of the Agreed amount for the Parties is adjusted by half of the difference.

## Examples

Split the Difference tolerances are applied when a user enters the **Cpty Call Amount** and clicks out of the field within the Margin Call Workflow.

Should the Agreement have a Split the Difference tolerance defined, the system performs the following processes when calculating the Agreed Amount:

  * The Split the difference tolerance defined on the Agreement is retrieved.
  * If the tolerance is defined as a flat method amount in non-agreement currency, it is converted into agreement currency using FX rates from the FX Rate source defined on the Agreement.
  * The system then evaluates the difference between the Principal Call Amount and the Counterparty Call Amount.
  * Should the difference be within the defined Split the Difference tolerance, the Agreed Amount is calculated to incorporate 1/2 of the difference. (Detailed examples are per below).



**Scope and Considerations**

  1. Split the difference is only applied if the margin call type between the parties is the same. That is, if the Principal has calculated that they have a Demand on the Counterparty, and the Counterparty has calculated that they have a Demand on the Principal, then splitting is not applied.
  2. Similarly, split the difference is not applied to No Action Margin Calls.
  3. Split the Difference is not applicable to any Margin Calls for Central Clearing Agreements as for that Business Line the Margin Call Amount is prescribed by the CCP. and not alterable by the Clearing Member.
  4. Split the difference methodology is independent from Dispute Tolerances. That is, if an Agreed Amount on a Margin Call is calculated including an adjustment for splitting, but the difference between the Agreed Amount and Principal's Call Amount is outside the Dispute Tolerance, than a partial dispute will be raised.



**Examples of Demands**

Table 1. Principal has calculated a Demand, and Split the Difference Amount is defined as a Fixed Amount in same currency as Agreement Currency 

# | Split the Difference Amount | Prin Call Amount | Cpty Call Amount | Difference | Agreed Amount | Comments  
---|---|---|---|---|---|---  
1 | 300,000 | 1,000,000 | 700,000 | 300,000 | 850,000 | split the difference applied, as difference within STD tolerance  
2 | 300,000 | 1,000,000 | 600,000 | 400,000 | 600,000 | split the difference not applied, as difference > STD tolerance  
3 | 300,000 | 1,000,000 | 900,000 | 100,000 | 950,000 | as per #1  
4 | 300,000 | 1,000,000 | 1,200,000 | -200,000 | 1,000,000 | split the difference not applied, as Cpty Call Amount > Prin Call Amount  
  
Table 2. Principal has calculated a Demand, and Split the Difference Amount is defined as a Percentage of Call Amount

# | Split the Difference % | Prin Call Amount | Cpty Call Amount | Difference | Difference % | Agreed Amount | Comments  
---|---|---|---|---|---|---|---  
1 | 15 | 1,000,000 | 850,000 | 150,000 | 15 | 925,000 | Split the difference applied, as difference within STD tolerance  
2 | 15 | 1,000,000 | 600,000 | 400,000 | 40 | 600,000 | split the difference not applied, as difference > STD tolerance  
3 | 15 | 1,000,000 | 900,000 | 100,000 | 10 | 950,000 | as per #1  
4 | 15 | 1,000,000 | 1,100,000 | -100,000 | -10 | 1,000,000 | split the difference not applied, as Cpty Call Amount > Prin Call Amount  
5 | 15 | 1,000,000 | 1,000,000 | 0 | 0 | 1,000,000 | split the difference not applied as Cpty Call Amount = Prin Call Amount  
  
**Examples of Anticipated Demands**

Table 3. Principal has calculated an Anticipated Demand, and Split the Difference Amount is defined as a Fixed Amount in same currency as Agreement Currency

# | Split the Difference Amount | Expected Prin Call Amount | Cpty Call Amount | Difference | Agreed Amount | Comments  
---|---|---|---|---|---|---  
1 | 300,000 | 1,000,000 | 700,000 | -300,000 | 700,000 | Split the difference not applied, as Cpty Call Amount < Expected Prin Call Amount  
2 | 300,000 | 1,000,000 | 600,000 | -400,000 | 600,000 | as per #1  
3 | 300,000 | 1,000,000 | 1,600,000 | 600,000 | 1,000,000 | split the difference not applied, as difference > STD tolerance  
4 | 300,000 | 1,000,000 | 1,200,000 | 200,000 | 1,100,000 | Split the difference applied, as difference within STD tolerance  
5 | 300,000 | 1,000,000 | 1,300,000 | 300,000 | 1,150,000 | as per #4  
  
Table 4. Principal has calculated a Demand, and Split the Difference Amount is defined as a Percentage of Call Amount

# | Split the Difference % | Expected Prin Call Amount | Cpty Call Amount | Difference | Difference % | Agreed Amount | Comments  
---|---|---|---|---|---|---|---  
1 | 15 | 1,000,000 | 850,000 | -150,000 | -15 | 850,000 | Split the difference not applied, as Cpty Call Amount < Expected Prin Call Amount  
2 | 15 | 1,000,000 | 600,000 | -400,000 | -40 | 600,000 | as per #1  
3 | 15 | 1,000,000 | 1,000,000 | 0 | 0 | 1,000,000 | split the difference not applied as Cpty Call Amount = Prin Call Amount  
4 | 15 | 1,000,000 | 1,100,000 | 100,000 | 10 | 1,050,000 | Split the difference applied, as difference within STD tolerance  
5 | 15 | 1,000,000 | 1,150,000 | 150,000 | 15 | 1,075,00 | as per #4
