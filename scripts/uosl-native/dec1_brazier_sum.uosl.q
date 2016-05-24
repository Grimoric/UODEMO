// UOSL (native)
inherits globals;

member list Q492;

trigger objectloaded
{
  Q492 = 0x020A, 0x020F, 0x0210, 0x0211, 0x0212, 0x0213, 0x0214, 0x0215, 0x0216, 0x0217, 0x0218, 0x0219, 0x021D, 0x021E, 0x0220, 0x0221, 0x022B, 0x022C, 0x022F, 0x0230, 0x0231, 0x0232, 0x0235, 0x0242, 0x0243, 0x0244;
  return(0x00);
}

trigger creation
{
  Q492 = 0x020A, 0x020F, 0x0210, 0x0211, 0x0212, 0x0213, 0x0214, 0x0215, 0x0216, 0x0217, 0x0218, 0x0219, 0x021D, 0x021E, 0x0220, 0x0221, 0x022B, 0x022C, 0x022F, 0x0230, 0x0231, 0x0232, 0x0235, 0x0242, 0x0243, 0x0244;
  return(0x00);
}

trigger use
{
  loc Q53E = 0x1433, 0x0267, 0x00;
  if(!hasObjVar(this, "beenUsed"))
  {
    int Q53F = Q492[random(0x00, numInList(Q492) - 0x01)];
    obj Q5BQ = requestCreateNPCAt(Q53F, Q53E, 0x04);
    if(Q5BQ != NULL())
    {
      doLocAnimation(Q53E, 0x3709, 0x02, 0x38, 0x00, 0x00);
    }
    else
    {
      bark(this, "The brazier fizzes and pops, but nothing seems to happen.");
    }
    setObjVar(this, "beenUsed", 0x00);
  }
  else
  {
    bark(this, "The brazier fizzes and pops, but nothing seems to happen.");
  }
  return(0x00);
}

trigger time("hour:0")
{
  if(hasObjVar(this, "beenUsed"))
  {
    removeObjVar(this, "beenUsed")
  }
  return(0x00);
}

trigger enterrange(0x03)
{
  if(!hasObjVar(this, "beenUsed"))
  {
    bark(this, "Heed this warning well, and use this brazier at your own peril.");
  }
  return(0x01);
}