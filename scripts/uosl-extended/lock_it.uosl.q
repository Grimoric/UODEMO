// UOSL (enhanced)
inherits globals;

member int lockLevel;

function int lock_it(obj Q4XN, int start, int stop)
{
  if(!hasObjVar(Q4XN, "isLocked"))
  {
    attachScript(Q4XN, "locked");
    lockLevel = random(start, stop);
    setObjVar(Q4XN, "isLocked", lockLevel);
    setObjVar(Q4XN, "lockLevel", lockLevel);
    return(0x01);
  }
  return(0x00);
}

function int Q53O(obj Q4XN, int start, int stop)
{
  lockLevel = random(start, stop);
  setObjVar(Q4XN, "lockLevel", lockLevel);
  return(0x01);
}

function void Q53P(obj Q4XN)
{
  if(!hasObjVar(Q4XN, "isLocked"))
  {
    int Q53R = getObjVar(Q4XN, "lockLevel");
    setObjVar(Q4XN, "isLocked", Q53R);
  }
  return;
}