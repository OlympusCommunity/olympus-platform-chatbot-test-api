%dw 2.0
output application/json
---
{
  sender: vars.request.initQuery.sender,
  groupParticipant: vars.request.initQuery.groupParticipant,
  age: (vars.message.userData splitBy  ("|"))[1],
  dateCreated: {
    "\$date": now()
  },
  isAdmin: false,
  ocupation: (vars.message.userData splitBy  ("|"))[2],
  whatsapp: (vars.message.userData splitBy  ("|"))[3],
  name: (vars.message.userData splitBy  ("|"))[0],
}