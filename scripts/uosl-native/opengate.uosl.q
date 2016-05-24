// UOSL (native)
inherits spelskil;

member loc Q4OG;
member int Q5FU;

trigger creation
{
  setX(Q4OG, getObjVar(this, "xPoint"));
  setY(Q4OG, getObjVar(this, "yPoint"));
  setZ(Q4OG, getObjVar(this, "zPoint"));
  return(0x00);
}

function void Q4K1(obj me, obj player)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "Yes");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "No");
  selectType(player, me, 0x2C, "Dost thou wish to step into the moongate?", Q59P);
  return();
}

function int Q4K2(obj me, obj player)
{
  Q5Z2(player, Q4OG);
  if(teleport(player, Q4OG))
  {
    sfx(getLocation(player), 0x01FE, 0x00);
    return(0x01);
  }
  return(0x00);
}

function int Q4C6(obj me, obj player)
{
  if((inJusticeRegion(getLocation(me))) && (!inJusticeRegion(Q4OG)))
  {
    return(0x01);
  }
  return(0x00);
}

function int Q4ZP(obj gate, obj it)
{
  if(!Q5FU)
  {
    return(0x00);
  }
  if(getDistanceInTiles(getLocation(gate), getLocation(it)) > 0x01)
  {
    return(0x00);
  }
  int Q5YU = getZ(getLocation(it));
  int Q5AW = getZ(getLocation(gate));
  int Q5AD = getHeight(gate);
  int Q5AT = Q5AW + Q5AD;
  if((Q5YU < Q5AW) || (Q5YU > Q5AT))
  {
    return(0x00);
  }
  return(0x01);
}

function int Q4K3(obj gate, obj Q68S)
{
  if(!Q4ZP(gate, Q68S))
  {
    return(0x01);
  }
  Q48E(Q68S);
  int Q527;
  if(Q4C6(gate, Q68S))
  {
    Q4K1(gate, Q68S);
    Q527 = teleport(Q68S, getLocation(gate));
    return(0x00);
  }
  else
  {
    Q527 = Q4K2(gate, Q68S);
  }
  return(0x00);
}

trigger enterrange(0x00)
{
  return(Q4K3(this, target));
}

trigger use
{
  if(getLocation(this) == getLocation(user))
  {
    int Q527 = Q4K3(this, user);
  }
  return(0x00);
}

trigger typeselected(0x2C)
{
  if(listindex == 0x00)
  {
    return(0x00);
  }
  if(objtype != 0x00)
  {
    return(0x00);
  }
  if(!Q4ZP(this, user))
  {
    return(0x00);
  }
  int Q527 = Q4K2(this, user);
  return(0x00);
}

trigger callback(0x79)
{
  loc Q4FZ = getLocation(this);
  int okay = 0x01;
  if(!hasObjVar(this, "sourceGate"))
  {
    deleteObject(this);
  }
  if(isAnyMultiAt(Q4FZ) != NULL())
  {
    okay = 0x00;
  }
  if(Q46M(Q4FZ, this))
  {
    okay = 0x00;
  }
  list Q5QZ;
  appendToList(Q5QZ, okay);
  obj Q5UE = getObjVar(this, "sourceGate");
  appendToList(Q5QZ, this);
  multimessage(Q5UE, "gatestatus", Q5QZ);
  Q5FU = okay;
  if(!okay)
  {
    deleteObject(this);
  }
  return(0x01);
}

trigger message("gatestatus")
{
  int i = args[0x00];
  if(i)
  {
    Q5FU = 0x01;
  }
  else
  {
    deleteObject(this);
  }
  return(0x01);
}