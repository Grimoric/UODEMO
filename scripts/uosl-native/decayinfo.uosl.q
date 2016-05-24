// UOSL (native)
trigger use
{
  targetObj(user, this);
  return(0x01);
}

trigger targetobj
{
  int Q63B;
  string Q63C;
  string Q5N7;
  Q63C = objToStr(usedon);
  concat(Q5N7, Q63C);
  concat(Q5N7, " ");
  Q63B = getDecayCount(usedon);
  Q63C = Q63B;
  concat(Q5N7, Q63C);
  concat(Q5N7, " ");
  Q63B = getDecayMax(usedon);
  Q63C = Q63B;
  concat(Q5N7, Q63C);
  barkTo(usedon, user, Q5N7);
  return(0x01);
}