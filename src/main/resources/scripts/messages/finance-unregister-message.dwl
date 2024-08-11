%dw 2.0
output application/json
---
{
	replies: [
		{
			message: "Usted ya se encuentra registrado en el motor de finanzas de Olympus."
		},
		{
			message: "Su nombre/nickname es: " ++ vars.user.name as String default null
		}
	]
}
