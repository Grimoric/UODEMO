// UOSL (native)
trigger use
{
  int Q5CE = getX(getLocation(this)) + 0x01;
  int Q4FT = getY(getLocation(this));
  int Q4FU = getZ(getLocation(this));
  loc Q64L = Q5CE, Q4FT, Q4FU;
  if(!hasObjVar(this, "not_trapped"))
  {
    doLocAnimation(Q64L, 0x372A, 0x02, 0x14, 0x00, 0x00);
    return(0x00);
  }
  return(0x01);
}