# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/system_currency.html

# System Currency

System currency (sometimes known as base currency or reporting currency) is the currency to which values in all other currencies are converted to, in various parts of the system.

System currency is defined when the application is installed, and cannot be subsequently changed from within the application.

The FX rate for system currency is defaulted to 1 when system currency is selected. Future Fx rates for system currency on FX import files are ignored.

Values in other currencies are converted to System Currency using FX rates that have been imported into the system.

It is therefore imperative that:

  * Rates for other currencies on the import file are expressed as values versus the System Currency.

Example: If USD is defined as the system currency, then the FX rates file should contain the rates for other currencies as per their exchange to US Dollars.

  * In terms of quote convention, exchange rates can be expressed as how much of a currency 1 USD would be exchanged for (i.e. the non dollar currency is the secondary currency in the exchange rate), or how many USD could be exchanged for 1 unit of currency (in which case the non dollar currency is the Primary currency in the exchange rate).




The configuration of whether a currency's rate will be imported as either a primary or secondary currency is set in FX rate static data. What is important to understand is that irrespective of the quote convention of the rates on the FX rate import file, it is essential that those rates represent the exchange of the underlying currencies to system currency. Non adherence to these rules will result in incorrect conversion values in the system.

It is possible to view which currency has been defined as system currency within the application by viewing the Currencies under Reference Data.
