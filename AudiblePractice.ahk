#SingleInstance Force
#IfWinActive Audible
^j::
  customerName = John Doe
  customerEmail = bills@bfxglobal.com
  customerMessage = Please cancel my subscription under this information
  InputBox, fullInfo, Question 1, Customer Info?
  customerMessage = Please cancel my subscription under this information %fullInfo%
  StringSplit, splitInfo, fullInfo, %A_Space%, `,
  customerName = %splitInfo1% %splitInfo2%
  customerEmail = %splitinfo1%%splitinfo2%@bfxglobal.com
  StringLower, customerEmail, customerEmail
  SendInput, {Tab 2}%customerName%{Tab}%customerEmail%{Tab}%customerMessage%{Tab}{Enter}{Enter}
Return
::nthx::No thanks, just cancel
::nmor::I just don't need it anymore
::wnch::When was I last charged on that account?
::srry::Sorry about that, I'll figure out the right info and reach out again later
::thx::Thanks for the help
