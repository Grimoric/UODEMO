// UOSL (enhanced)
trigger creation()
{
  int Q5D3;
  if(getObjType(this) == 0x06)
  {
    setType(this, 0x01);
    Q5D3 = 0x0E5C;
  }
  if(getObjType(this) == 0x07)
  {
    setType(this, 0x01);
    Q5D3 = 0x0E5F;
  }
  if(getObjType(this) == 0x08)
  {
    setType(this, 0x01);
    Q5D3 = 0x0E62;
  }
  if(getObjType(this) == 0x0C)
  {
    setType(this, 0x01);
    Q5D3 = 0x0E65;
  }
  if(getObjType(this) == 0x0E5C)
  {
    Q5D3 = 0x0E5F;
  }
  if(getObjType(this) == 0x0E5F)
  {
    Q5D3 = 0x0E62;
  }
  if(getObjType(this) == 0x0E62)
  {
    Q5D3 = 0x0E65;
  }
  if(getObjType(this) == 0x0E65)
  {
    Q5D3 = 0x0E5F;
  }
  setObjVar(this, "myNextObjType", Q5D3);
  return(0x00);
}

trigger message<"switchType">(obj sender, list args)
{
  int Q5D3;
  if(getObjType(this) == 0x01)
  {
    Q5D3 = getObjVar(this, "myNextObjType");
    setType(this, Q5D3);
    return(0x00);
  }
  if(getObjType(this) == 0x0E5C)
  {
    Q5D3 = 0x0E5F;
  }
  if(getObjType(this) == 0x0E5F)
  {
    Q5D3 = 0x0E62;
  }
  if(getObjType(this) == 0x0E62)
  {
    Q5D3 = 0x0E65;
  }
  if(getObjType(this) == 0x0E65)
  {
    Q5D3 = 0x0E5C;
  }
  setObjVar(this, "myNextObjType", Q5D3);
  setType(this, 0x01);
  return(0x00);
}