
# File Format for Entity Ratings

When importing Legal Entity Ratings, for each combination of Rating Agency and Debt Structure that appears in the file, all existing legal entity credit ratings for any of those combinations will be deleted. This is regardless of how those ratings were entered into the system (manually or imported through any Import Configuration).

There are some processing considerations to be aware of with this approach as follows:

If a file is received today from Moodys which contains both long term and short term ratings but tomorrow the file from Moodys only contains short term ratings, the Moodys long term ratings would not be removed from the database when the file is loaded tomorrow.

Individual files of credit ratings can not be loaded for different managing locations. If, for example, a file of entity ratings from Tokyo was loaded that contained Moodys, Fitch and S&P long term ratings and then subsequently, a file of entity ratings from London could be loaded that also contained long term ratings from the same three agencies, the ratings that had been loaded during the Tokyo import would be removed from the system.

In order to avoid these issues the following approach should be adopted:

_Either:_

Load one file of Entity Ratings for all agency and debt structure combinations for all locations,

_or_

Ensure that each Rating Agency and Debt Structure combination appears in only one import file. (Multiple combinations are allowed in each file).

If Approvals for Entities is enabled, and a Newly created Entity is awaiting approval, any rating imported for that Entity will not find it, as it does not yet appear as approved in the database.

Display Name (on Entity form) | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Name | EntityName | YES | Char (250) | ABC Bank Ltd | The name of the entity to which the rating relates. The Entity Name must match exactly an entity which exists in the database.  
  
[Validation Message Number 54](<validation_messages.md#54>).  
  
**Note:** If an Entity is locked for approval, then [Validation Message 353](<validation_messages.md#353>) is thrown  
Agency | RatingAgencyName | YES | Char (250) | Moodys | The name of the rating agency to which the rating relates. The Rating Agency Name must match exactly a rating agency which exists in the database.  
  
[Validation Message Number 55](<validation_messages.md#55>).  
Debt Structure | DebtStructureName | YES | Char (50) | Permissible Values  
  
Long Term  
  
Short Term  
  
Internal  
  
Financial Strength | The debt structure to which the rating relates. The Debt Structure Name must match exactly a debt structure which exists in the database.  
  
It must be defined as one of the four permissible values listed to the left.  
  
If not, [Validation Message Number 56](<validation_messages.md#56>). is raised.  
Rating | Rating | YES | Char (50) | AAA | The rating for the entity according to the corresponding Rating Agency and Debt Structure.  
  
**Note:** These are case sensitive, and must match exactly  
  
[Validation Message Number 57](<validation_messages.md#57>).
