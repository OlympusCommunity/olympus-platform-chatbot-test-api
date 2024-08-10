%dw 2.0
output application/json
---
{
	sender: vars.request.initQuery.sender
}