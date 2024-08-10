%dw 2.0
output application/json
---
if (vars.firtsRegister default false) (
	[{
	  userId: vars.user."_id"."\$oid",
	  number: upper(uuid()[0 to 15]),
	  bank_id: "66b56e2716cdca9bf0a11348",
	  balance: [
	    {
	      currency_id: "66b55f4a16cdca9bf0a11340",
	      amount: 100
	    },
	    {
	      currency_id: "66b55f4a16cdca9bf0a11339",
	      amount: 0
	    }
	  ],
	  isActive: true
	}]
) else (
	[{
	  userId: vars.user."_id"."\$oid",
	  number: upper(uuid()[0 to 15]),
	  bank_id: vars.bankId,
	  balance: [
	    {
	      currency_id: vars.currencyId,
	      amount: vars.amount
	    }
	  ],
	  isActive: true
	}]
)
