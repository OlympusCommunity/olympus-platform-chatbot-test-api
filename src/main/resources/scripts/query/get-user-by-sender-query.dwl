%dw 2.0
output application/json
---
{
	sender: vars.request.query.sender
}