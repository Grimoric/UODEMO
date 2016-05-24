// UOSL (enhanced)
inherits sndfx;

member obj victim;

function void Q4MG(obj user)
{
  int Q4NC;
  loc Q4VS = getLocation(this);
  loc there = getObjVar(this, "dest2");
  list Q5DR;
  faceHere(user, getDirectionInternal(Q4VS, there));
  list Q5FG;
  getObjectsAt(Q5FG, there);
  if(numInList(Q5FG) == 0x00)
  {
    doLocAnimation(there, 0x3728, 0x0A, 0x0A, 0x00, 0x00);
    doLocAnimation(there, 0x3728, 0x08, 0x14, 0x00, 0x00);
    obj daemon = createGlobalNPCAt(0x022F, there, 0x00);
    sfx(there, 0x0216, 0x00);
    setType(daemon, 0x0A);
    attachScript(daemon, "destcrea");
    Q4NC = 0x0384;
    callback(daemon, Q4NC, 0x08);
    doDamage(victim, daemon, 0x00);
    return;
  }
  return;
}

trigger enterrange<0x00>(obj target)
{
  int Q64T = getZ(getLocation(this));
  int Q5YP = getZ(getLocation(target));
  if(Q64T == Q5YP)
  {
    victim = target;
    Q4MG(target);
  }
  return(0x01);
}