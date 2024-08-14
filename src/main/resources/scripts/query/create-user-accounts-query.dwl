%dw 2.0
output application/json
---
if (vars.firtsRegister default false) (
	[{
	  userId: vars.user."_id"."\$oid",
	  number: upper(uuid()[0 to 15]),
	  bank_id: Mule::p('data.banks.olympusBankId'),
	  currency_id: Mule::p('data.banks.coinId'),
	  amount: 1000,
	  isActive: true
	},
	{
	  userId: vars.user."_id"."\$oid",
	  number: upper(uuid()[0 to 15]),
	  bank_id: Mule::p('data.banks.olympusBankId'),
	  currency_id: Mule::p('data.banks.olycoinId'),
	  amount: 0,
	  isActive: true
	}]
) else (
	[{
	  userId: vars.user."_id"."\$oid",
	  number: upper(uuid()[0 to 15]),
	  bank_id: vars.bankId,
	  currency_id: vars.currencyId,
	  amount: vars.amount,
	  isActive: true
	}]
)
