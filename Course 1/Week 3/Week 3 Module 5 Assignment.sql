
For event requests, list the event number, event date (eventrequest.dateheld), and count of the event plans.  
Only include event requests in the result if the event request has more than one related event plan with a work date in December 2018.

---Oracle SQL Script---

SELECT EventRequest.EventNo, DateHeld, COUNT ()
FROM EventRequest INNER JOIN EventPlan ON EventRequest.EventNo = EventPlan.EventNo
WHERE DateHeld BETWEEN ‘1-Dec-2018’ AND ’31-Dec-2018’
GROUP BY

