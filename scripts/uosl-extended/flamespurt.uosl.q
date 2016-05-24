// UOSL (enhanced)
inherits sndfx;

trigger<1000>enterrange<0x03>(obj target)
{
  if(isPlayer(target))
  {
    obj player = target;
    loc Q5IZ = getLocation(player);
    member loc Q5FI = getLocation(this);
    member obj Q4PQ = requestCreateObjectAt(0x3709, Q5FI);
    sfx(Q5FI, 0x011D, 0x011D);
  }
  return(0x01);
}

trigger<1000>enterrange<0x01>(obj target)
{
  if(isPlayer(target))
  {
    int damage = random(0x01, 0x0A);
    loc Q5FI = getLocation(this);
    obj player = target;
    loc Q5IZ = getLocation(player);
    doDamage(player, player, damage);
    sfx(Q5IZ, 0x014C, 0x014C);
    animateMobile(player, 0x14, 0x01, 0x01, 0x00, 0x00);
  }
  return(0x01)/* semicolon added by the decompiler post-processor */;
}

trigger<1000>enterrange<0x00>(obj target)
{
  if(isPlayer(target))
  {
    int damage = random(0x01, 0x1E);
    obj player = target;
    loc Q5IZ = getLocation(player);
    doDamage(player, player, damage);
    sfx(Q5IZ, 0x014C, 0x014C);
  }
  return(0x00)/* semicolon added by the decompiler post-processor */;
}

trigger<1000>leaverange<0x03>(obj target)
{
  deleteObject(Q4PQ);
  return(0x01);
}