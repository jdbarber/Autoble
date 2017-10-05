#SingleInstance Force
#IfWinActive Audible
^j::
  customerName = John Doe
  customerEmail = bills@bfxglobal.com
  customerMessage = Please cancel my subscription under this information
  InputBox, fullInfo, Question 1, Customer Info?
  if ErrorLevel {
    }
  else {
    customerMessage = I need to make sure my subscription is cancelled, I just don't need it anymore. It is under this information: %fullInfo%
    StringSplit, splitInfo, fullInfo, %A_Space%, `,
    customerName = %splitInfo1% %splitInfo2%
    customerEmail = %splitinfo1%%splitinfo2%@bfxglobal.com
    StringLower, customerEmail, customerEmail
    SendInput, {Tab 2}%customerName%{Tab}%customerEmail%{Tab}%customerMessage%{Tab}{Enter}{Enter}
    }
Return
::nt::No thanks, just cancel.
::nm::I just don't need it anymore.
::wn::When was I last charged on that account for anything?
::sr::Sorry about that, I'll figure out the right info and reach out again later.
::tx::Thanks for the help!
