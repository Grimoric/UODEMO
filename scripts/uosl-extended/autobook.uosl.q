// UOSL (enhanced)
trigger use(obj user)
{
  if(!hasObjVar(this, "hasBeenSet"))
  {
    int Q60P = random(0x01, 0x1B);
    setROBookNum(this, Q60P);
    string Q636 = getROBookTitle(Q60P);
    setObjVar(this, "lookAtText", Q636);
    setObjVar(this, "hasBeenSet", 0x01);
  }
  return(0x01);
}