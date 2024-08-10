%dw 2.0
output application/json
---
{
  sender: vars.request.initQuery.sender,
  groupParticipant: vars.request.initQuery.groupParticipant,
  age: (payload.userData splitBy  ("|"))[1],
  dateCreated: {
    "\$date": now()
  },
  isAdmin: false,
  ocupation: (payload.userData splitBy  ("|"))[2],
  whatsapp: (payload.userData splitBy  ("|"))[3],
  name: (payload.userData splitBy  ("|"))[0],
}