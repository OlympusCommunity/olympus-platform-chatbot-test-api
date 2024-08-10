%dw 2.0
output application/java
---
{
	replies: [
		{
			message: vars.messageValue
		}
	]
}