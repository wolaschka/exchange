
# Rating Equivalencies

## Long Term Rating Equivalencies

The database has been pre-loaded with the following rating equivalencies for the Long Term debt structure.

Ordinal | Fitch Ratings | S&P | Moodys  
---|---|---|---  
1 | AAA | AAA | Aaa  
2 | AA+ | AA+ | Aa1  
3 | AA | AA | Aa2  
4 | AA- | AA- | Aa3  
5 | A+ | A+ | A1  
6 | A | A | A2  
7 | A- | A- | A3  
8 | BBB+ | BBB+ | Baa1  
9 | BBB | BBB | Baa2  
10 | BBB- | BBB- | Baa3  
11 | BB+ | BB+ | Ba1  
12 | BB | BB | Ba2  
13 | BB- | BB- | Ba3  
14 | B+ | B+ | B1  
15 | B | B | B2  
16 | B- | B- | B3  
17 | CCC+ | CCC+ | Caa1  
18 | CCC | CCC | Caa2  
19 | CCC- | CCC- | Caa3  
20 | CC | CC | Ca  
21 | C | C | C  
22 | DDD | D | D  
23 | NR | NR | NR  
  
## Short Term Rating Equivalencies

The database has been pre-loaded with the following rating equivalencies for the Short Term debt structure.

Ordinal | S&P | Moodys | Fitch  
---|---|---|---  
1 | A-1+ | P-1 | F1+  
2 | A-1 |  | F1  
3 | A-2 | P-2 | F2  
4 | A-3 | P-3 | F3  
5 | B | NP | B  
6 | NR | NR | NR  
  
**Note:** Ordinal 2 has no corresponding rating for Moodys.

## Financial Strength Rating Equivalencies

**Note:** Although Financial Strength Rating Equivalencies reference data object exists in the system, no data is populated. Data can be added by creating an ordinal and adding rating equivalencies. See [Add Rating Equivalency](<#add-rating-equivalency>).

## Internal Rating Equivalencies

**Note:** Although the Internal Rating Equivalencies reference data object exists in the system, no data is populated by default. Data can be added by creating an ordinal and adding rating equivalencies. See [Add Rating Equivalency](<#add-rating-equivalency>).

## Add Rating Equivalency

The grid will populate with a table of Rating equivalencies that have been defined. For all rating equivalencies, an ordinal can be added and an Equivalency can be added or edited but not deleted.

**Note:** The application ships without the Financial Strength and Internal Rating equivalencies tables populated.

  * Click on **Reference Data** in the navigation pane.
  * Select the **Ratings** drop-down, then select the equivalency that needs to be modified.
  * Click on the button **Add Ordinal**. 
    * A popup screen will appear with two drop-down menus that must be populated before creating an ordinal.
    * The first drop-down will be **Left of** or **Right of**.
    * The second drop-down will be a list of the ordinals that already exist.  
**Note:** When selecting the values, be careful what is chosen as the delete functionality does not exist within the system.
    * Press the **Create** button to create the ordinal.
  * To populate the rating, select the **Edit** icon under the **Actions** column for the Agency that needs to be modified.
  * Blank entries are permitted for an ordinal, but at least one ordinal must be populated with a non blank entry.
  * Click to the blue check mark to save the entries.



## Edit Rating Equivalency

  * Click on **Reference Data** in the navigation pane.
  * Select the **Rating Equivalency** from the drop-down.
  * To edit the rating equivalency, select the **Edit** icon under the **Actions** column for the Agency that needs to be modified.
    * All fields in the row that was selected to be edited will become enabled and can be edited.
  * Blank entries are permitted for an ordinal, but at least one ordinal must be populated with a non blank entry.
  * Click to the blue check mark to save the entries or click on the **X** to cancel the changes.


