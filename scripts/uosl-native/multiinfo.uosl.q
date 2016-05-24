// UOSL (native)
trigger use
{
  targetObj(user, this);
  return(0x01);
}

trigger targetobj
{
  int Q5NC = isMultiComp(usedon);
  loc Q5FR;
  int Q63B;
  string Q63C;
  string Q5N7;
  if(Q5NC)
  {
    Q63B = getObjType(usedon);
    Q63C = Q63B;
    Q5N7 = Q5N7 + Q63C;
    Q5N7 = Q5N7 + " ";
    Q5N7 = Q5N7 + " ";
    Q5FR = getMultiComponentOffset(usedon);
    Q63B = getX(Q5FR);
    Q63C = Q63B;
    Q5N7 = Q5N7 + Q63C;
    Q5N7 = Q5N7 + " ";
    Q63B = getY(Q5FR);
    Q63C = Q63B;
    Q5N7 = Q5N7 + Q63C;
    Q5N7 = Q5N7 + " ";
    Q63B = getZ(Q5FR);
    Q63C = Q63B;
    Q5N7 = Q5N7 + Q63C;
    barkTo(usedon, user, Q5N7);
  }
  return(0x01);
}