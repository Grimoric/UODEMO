// UOSL (enhanced)
inherits globals;

trigger message<"teleobj">(obj sender, list args)
{
  loc where = args[0x00];
  int Q4VQ = getHeight(this);
  int Q58C = 0x01;
  if(isMobile(this))
  {
    Q58C = getMovementType(this);
  }
  obj Q5R2 = createNoResObjectAt(0x01, getLocation(this));
  attachScript(Q5R2, "telecheck");
  list Q5Z0;
  appendToList(Q5Z0, this);
  appendToList(Q5Z0, where);
  appendToList(Q5Z0, Q4VQ);
  appendToList(Q5Z0, Q58C);
  message(Q5R2, "telecheck", Q5Z0);
  return(0x01);
}

trigger message<"telereply">(obj sender, list args)
{
  int Q5FT = args[0x00];
  loc where = args[0x01];
  if(isPlayer(this))
  {
    if(isDead(this))
    {
      Q5FT = 0x00;
    }
  }
  if(Q5FT)
  {
    Q5FT = teleport(this, where);
  }
  if(!Q5FT)
  {
    if(isPlayer(this))
    {
      systemMessage(this, "Something is blocking the location.");
    }
    detachScript(this, "teleobj");
  }
  return(0x01);
}

trigger callback<0x86>()
{
  detachScript(this, "teleobj");
  return(0x01);
}