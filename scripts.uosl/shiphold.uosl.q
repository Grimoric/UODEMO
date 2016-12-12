// UOSL (native)
inherits shipstuff;

function void Q41V(obj Q4XN)
{
  obj ship = getMultiSlaveId(Q4XN);
  if(ship == NULL())
  {
    return();
  }
  if(!hasObjVar(ship, "myshiphold"))
  {
    setObjVar(ship, "myshiphold", Q4XN);
  }
  return();
}

trigger creation
{
  Q41V(this);
  return(0x01);
}

trigger objectloaded
{
  Q41V(this);
  return(0x01);
}

trigger use
{
  if(isDead(user))
  {
    return(0x00);
  }
  obj ship = getMultiSlaveId(this);
  if(ship == NULL())
  {
    return(0x01);
  }
  if(!Q4ZS(user, ship))
  {
    barkTo(user, user, "You must be on the ship to open the hold.");
    return(0x00);
  }
  if(Q5SJ(ship))
  {
    barkTo(user, user, "I can not open the hold while the ship is moving.");
    return(0x00);
  }
  return(0x01);
}