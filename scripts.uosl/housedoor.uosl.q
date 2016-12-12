// UOSL (native)
inherits housestuff;

trigger creation
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

trigger use
{
  Q4D1(this, user, "house");
  if(hasObjVar(this, "isLocked"))
  {
    obj multi = getMultiSlaveId(this);
    int Q5GC = isOnMulti(user, multi);
    int Q4IE = getDirectionInternal(getLocation(user), getLocation(this));
    if((Q5GC) && (Q4IE >= 0x03) && (Q4IE <= 0x05))
    {
      barkTo(user, user, "That is locked, but is usable from the inside.");
      return(0x01);
    }
    if(Q4X6(multi, user))
    {
      barkTo(user, user, "You quickly unlock, use, and relock the door.");
      return(0x01);
    }
    if(isEditing(user))
    {
      barkTo(user, user, "That is locked, but you open it with your godly powers.");
      return(0x01);
    }
    barkTo(user, user, "That is locked.");
    return(0x00);
  }
  return(0x01);
}