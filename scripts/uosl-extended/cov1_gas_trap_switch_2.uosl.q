// UOSL (enhanced)
trigger use(obj user)
{
  loc Q4GG = 0x1532, 0x0758, 0x00;
  list Q5DQ;
  if(!hasObjVar(this, "working"))
  {
    messageToRange(Q4GG, 0x01, "unconditionalDisarm", Q5DQ);
  }
  return(0x01);
}