// UOSL (enhanced)
inherits housestuff;

trigger creation()
{
  int Q53S = Q53O(this, 0x0100, 0x0100);
  obj Q5AK = getMultiSlaveId(this);
  setObjVar(Q5AK, "myhousedoor", this);
  list Q5Z5;
  if(hasObjVar(Q5AK, "myhousedoors"))
  {
    getObjListVar(Q5Z5, Q5AK, "myhousedoors");
  }
  appendToList(Q5Z5, this);
  setObjVar(Q5AK, "myhousedoors", Q5Z5);
  return(0x01);
}

trigger use(obj user)
{
  if(hasObjVar(this, "isLocked"))
  {
    int Q5GC = isOnMulti(user, getMultiSlaveId(this));
    int Q4IE = getDirectionInternal(getLocation(user), getLocation(this));
    if((Q5GC) && (Q4IE >= 0x05) && (Q4IE <= 0x07))
    {
      barkTo(user, user, "That is locked, but is usable from the inside.");
      return(0x01);
    }
    barkTo(user, user, "That is locked.");
    return(0x00);
  }
  return(0x01);
}