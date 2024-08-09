%dw 2.0
output application/json
---
{
	code: Mule::p('financeCommands.info'), 
	validations: ["unregister"]
}