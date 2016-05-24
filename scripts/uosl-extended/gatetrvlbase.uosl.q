// UOSL (enhanced)
inherits spelskil;

function int Q446(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if((containedBy(usedon) == NULL()) && (canSeeObj(user, usedon) != 0x01))
  {
    bark(user, "I cannot see that object.");
    return(0x00);
  }
  if(isMobile(usedon))
  {
    bark(user, "I cannot gate travel from that object.");
    return(0x00);
  }
  return(0x01);
}

function loc Q42F(loc Q65F)
{
  return(Q65F);
}

function int Q4K4(obj user, obj usedon)
{
  int Q5NC = 0x00;
  int Q4EI;
  loc Q4VS = getLocation(user);
  obj caster = user;
  loc dest = Q42F(Q4VS);
  faceHere(user, getDirectionInternal(Q4VS, dest));
  obj Q55F = usedon;
  Q4VS = dest;
  loc destination = getObjVar(Q55F, "markLoc");
  if(Q50L(destination) && Q50M(destination) && Q50L(dest) && Q50M(dest) && (!Q46L(dest)))
  {
    obj Q4R9 = createGlobalObjectAt(0x0F6C, dest);
    Q4VS = getLocation(Q4R9);
    if(isValid(Q4R9))
    {
      int xPoint = getX(destination);
      int yPoint = getY(destination);
      int zPoint = getZ(destination);
      setObjVar(Q4R9, "xPoint", xPoint);
      setObjVar(Q4R9, "yPoint", yPoint);
      setObjVar(Q4R9, "zPoint", zPoint);
      attachScript(Q4R9, "opengate");
      attachScript(Q4R9, "destroy");
      callback(Q4R9, 0x1E, 0x1E);
      obj Q4R8 = createGlobalObjectAt(0x0F6C, Q4VS);
      if(isValid(Q4R8))
      {
        xPoint = getX(Q4VS);
        yPoint = getY(Q4VS);
        zPoint = getZ(Q4VS);
        setObjVar(Q4R8, "xPoint", xPoint);
        setObjVar(Q4R8, "yPoint", yPoint);
        setObjVar(Q4R8, "zPoint", zPoint);
        setObjVar(Q4R8, "sourceGate", Q4R9);
        attachScript(Q4R8, "opengate");
        attachScript(Q4R8, "destroy");
        callback(Q4R8, 0x1E, 0x1E);
        shortcallback(Q4R8, 0x00, 0x79);
        Q5NC = 0x01;
        sfx(Q4VS, 0x020E, 0x00);
        int Q46Q = teleport(Q4R8, destination);
      }
    }
    else
    {
      barkTo(caster, caster, "I will need more room to cast this next time!");
    }
  }
  else
  {
    systemMessage(caster, "You can not teleport from here to the destination.");
  }
  Q5UQ(this);
  return(Q5NC);
}