// UOSL (enhanced)
inherits globals;

member obj Q66O;

function int Q49X(obj it)
{
  int Q66P = getObjType(it);
  if(Q66P == 0x0FAB)
  {
    return(0x01);
  }
  return(0x00);
}

trigger creation()
{
  setObjVar(this, "usesLeft", 0x19);
  return(0x01);
}

trigger use(obj user)
{
  Q66O = NULL();
  systemMessage(user, "Select the dye tub to use the dyes on.");
  targetObj(user, this);
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(Q49X(usedon))
  {
    Q66O = usedon;
    selectHue(user, this, 0x00, 0x0FAB);
  }
  else
  {
    Q66O = NULL();
    systemMessage(user, "Use that on a dye tub.");
  }
  return(0x00);
}

trigger hueselected<0x00>(obj user, int objhue)
{
  if(!Q49X(Q66O))
  {
    Q66O = NULL();
    return(0x00);
  }
  if(objhue < 0x02)
  {
    objhue = 0x02;
  }
  if(objhue > 0x03E9)
  {
    objhue = 0x03E9;
  }
  setHue(Q66O, objhue);
  Q66O = NULL();
  int usesLeft = getObjVar(this, "usesLeft");
  if(usesLeft == 0x01)
  {
    systemMessage(user, "You used up the dye.");
    deleteObject(this);
  }
  else
  {
    setObjVar(this, "usesLeft", usesLeft - 0x01);
  }
  return(0x00);
}