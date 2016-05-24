// UOSL (enhanced)
inherits sndfx;

trigger<1000>enterrange<0x03>(obj target)
{
  if(isPlayer(target))
  {
    obj player = target;
    loc Q5IZ = getLocation(player);
    member loc Q5FI = getLocation(this);
    member obj Q4R7 = requestCreateObjectAt(0x11A6, Q5FI);
    sfx(Q5FI, 0x0108, 0x0107);
  }
  return(0x01);
}

trigger<250>enterrange<0x01>(obj target)
{
  if(isPlayer(target))
  {
    setPoisoned(target, 0x01);
    attachScript(target, "poisoned");
  }
  return(0x01)/* semicolon added by the decompiler post-processor */;
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
    loc Q5IZ = getLocation(target);
    obj player = target;
    doDamage(player, player, 0x1E);
    sfx(Q5IZ, 0x014C, 0x014C);
    setPoisoned(player, 0x01);
    attachScript(player, "poisoned");
  }
  return(0x00)/* semicolon added by the decompiler post-processor */;
}

trigger<1000>leaverange<0x03>(obj target)
{
  deleteObject(Q4R7);
  return(0x01);
}