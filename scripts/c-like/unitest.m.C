// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  list desc = list( "{ gumppic 0 0 2200 }", "{ gumppic 0 -30 990 }", "{ group 1 }", "{ text 200 100 63 0 }", "{ textentry 200 150 100 32 63 2000 4 }", "{ page 1 }", "{ tilepic 200 20 1056 }", "{ tilepic 244 20 1065 }", "{ button 200 130 25 26 0 2 1001 }", "{ page 2 }", "{ button 200 130 25 26 0 3 1002 }", "{ page 3 }", "{ resizepic 200 200 5170 200 200 }", "{ radio 220 220 2151 2154 1 1003 }", "{ text 250 220 34 1 }", "{ radio 220 250 2151 2154 0 1004 }", "{ text 250 250 34 2 }", "{ radio 220 280 2151 2154 0 1005 }", "{ text 250 280 34 3 }", "{ button 200 130 25 26 0 1 1006 }", "{ group 0 }", "{ page 0 }", "{ checkbox 10 10 2151 2154 0 1007 }", "{ button 10 50 25 26 1 0 1008 }" );
  list Q5XB = list( L"0062006c006100680020006e00650065007000200062006c00610068", L"0072006100640069006f00200031", L"0072006100640069006f00200032", L"0072006100640069006f00200033", L"" );
  openGenericGump(this, user, 0x01, 0x00, 0x00, desc, Q5XB);
  return(0x01);
}

TRIGGER( genericgump , 0x01 )(obj user, int closeId, list selectList, list entryList)
{
  bark(this, "closed");
  ustring u;
  u = entryList[0x01];
  bark(this, u);
  return(0x01);
}