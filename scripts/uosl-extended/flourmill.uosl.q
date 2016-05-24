// UOSL (enhanced)
inherits globals;

member obj Q66W;

trigger creation()
{
  int Q62A = getObjType(this);
  switch(Q62A)
  {
  case 0x1922:
  case 0x192E:
    returnResourcesToBank(this, 0x14, "flour");
    break;
  }
  return(0x00);
}

trigger use(obj user)
{
  Q66W = user;
  int Q62A = getObjType(this);
  int Q4Q1;
  loc Q61U = getLocation(this);
  loc Q54X = Q61U;
  obj Q54Y;
  int Q54Z;
  int Q4PW;
  switch(Q62A)
  {
  case 0x1EBD:
    targetObj(user, this);
    return(0x00);
    break;
  case 0x1921:
    changeLoc(Q54X, 0x01, 0x00, 0x00);
    Q54Y = getFirstObjectOfType(Q54X, 0x1923);
    break;
  case 0x1923:
    Q54Y = this;
    break;
  case 0x1924:
    changeLoc(Q54X, 0x00 - 0x01, 0x00, 0x00);
    Q54Y = getFirstObjectOfType(Q54X, 0x1923);
    break;
  case 0x192D:
    changeLoc(Q54X, 0x00, 0x01, 0x00);
    Q54Y = getFirstObjectOfType(Q54X, 0x192F);
    break;
  case 0x192F:
    Q54Y = this;
    break;
  case 0x1930:
    changeLoc(Q54X, 0x00, 0x00 - 0x01, 0x00);
    Q54Y = getFirstObjectOfType(Q54X, 0x192F);
    break;
  default:
    break;
  }
  Q4Q1 = getResource(Q4PW, Q54Y, "flour", 0x03, 0x02);
  if(Q4PW > 0x13)
  {
    Q54Z = getObjType(Q54Y);
    loc Q5BZ = Q54X;
    obj Q5C4;
    if(Q54Z == 0x1923)
    {
      setType(Q54Y, 0x1926);
      changeLoc(Q5BZ, 0x00 - 0x01, 0x00, 0x00);
      Q5C4 = getFirstObjectOfType(Q5BZ, 0x1921);
      setType(Q5C4, 0x1925);
      changeLoc(Q5BZ, 0x02, 0x00, 0x00);
      Q5C4 = getFirstObjectOfType(Q5BZ, 0x1924);
      setType(Q5C4, 0x1928);
    }
    if(Q54Z == 0x192F)
    {
      setType(Q54Y, 0x1932);
      changeLoc(Q5BZ, 0x00, 0x00 - 0x01, 0x00);
      Q5C4 = getFirstObjectOfType(Q5BZ, 0x192D);
      setType(Q5C4, 0x1931);
      changeLoc(Q5BZ, 0x00, 0x02, 0x00);
      Q5C4 = getFirstObjectOfType(Q5BZ, 0x1930);
      setType(Q5C4, 0x1934);
    }
    callback(Q54Y, 0x05, 0x3B);
  }
  else
  {
    systemMessage(user, "You need more wheat to make a sack of flour.");
  }
  return(0x00);
}

trigger callback<0x3B>()
{
  int Q62A = getObjType(this);
  int Q5L6;
  int Q4PY;
  obj Q54Y = this;
  obj Q5C4;
  loc Q61U = getLocation(this);
  loc Q4N8;
  loc Q4EK;
  obj flour;
  if(Q62A == 0x1926)
  {
    setType(Q54Y, 0x1922);
    changeLoc(Q61U, 0x00 - 0x01, 0x00, 0x00);
    Q5C4 = getFirstObjectOfType(Q61U, 0x1925);
    setType(Q5C4, 0x1920);
    changeLoc(Q61U, 0x02, 0x00, 0x00);
    Q5C4 = getFirstObjectOfType(Q61U, 0x1928);
    Q4EK = Q61U;
    setType(Q5C4, 0x1924);
  }
  if(Q62A == 0x1932)
  {
    setType(Q54Y, 0x192E);
    changeLoc(Q61U, 0x00, 0x00 - 0x01, 0x00);
    Q5C4 = getFirstObjectOfType(Q61U, 0x1931);
    setType(Q5C4, 0x192C);
    changeLoc(Q61U, 0x00, 0x02, 0x00);
    Q5C4 = getFirstObjectOfType(Q61U, 0x1934);
    Q4EK = Q61U;
    setType(Q5C4, 0x1930);
  }
  Q5L6 = random(0x00, 0x01);
  if(Q5L6)
  {
    Q4PY = 0x1039;
  }
  else
  {
    Q4PY = 0x1045;
  }
  if(findGoodSpotNearWithElev(Q4EK, getZ(Q4EK) - 0x08, getZ(Q4EK) + 0x10, 0x02, getTileHeight(Q4PY), 0x00))
  {
    flour = createNoResObjectAt(Q4PY, Q4EK);
  }
  else
  {
    loc Q66U = getLocation(Q66W);
    flour = createNoResObjectAt(Q4PY, Q66U);
  }
  transferResources(flour, this, 0x14, "flour");
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  int Q66P = getObjType(usedon);
  int Q54Z;
  loc Q66N = getLocation(usedon);
  obj Q54Y;
  obj Q4WL;
  loc Q54X = Q66N;
  loc Q5BZ;
  switch(Q66P)
  {
  case 0x1920:
    changeLoc(Q54X, 0x01, 0x00, 0x00);
    Q54Y = getFirstObjectOfType(Q54X, 0x1922);
    break;
  case 0x1922:
    Q54Y = usedon;
    break;
  case 0x192C:
    changeLoc(Q54X, 0x00, 0x01, 0x00);
    Q54Y = getFirstObjectOfType(Q54X, 0x192E);
    break;
  case 0x192E:
    Q54Y = usedon;
    break;
  case 0x1921:
    changeLoc(Q54X, 0x01, 0x00, 0x00);
    Q54Y = getFirstObjectOfType(Q54X, 0x1923);
    break;
  case 0x1923:
    Q54Y = usedon;
    break;
  case 0x192D:
    changeLoc(Q54X, 0x00, 0x01, 0x00);
    Q54Y = getFirstObjectOfType(Q54X, 0x192F);
    break;
  case 0x192F:
    Q54Y = usedon;
    break;
  case 0x1924:
    changeLoc(Q54X, 0x00 - 0x01, 0x00, 0x00);
    Q54Y = getFirstObjectOfType(Q54X, 0x1922);
    if(Q54Y == NULL())
    {
      Q54Y = getFirstObjectOfType(Q54X, 0x1923);
    }
    break;
  case 0x1930:
    changeLoc(Q54X, 0x00, 0x00 - 0x01, 0x00);
    Q54Y = getFirstObjectOfType(Q54X, 0x192E);
    if(Q54Y == NULL())
    {
      Q54Y = getFirstObjectOfType(Q54X, 0x192F);
    }
    break;
  default:
    return(0x00);
    break;
  }
  Q5BZ = Q54X;
  Q54Z = getObjType(Q54Y);
  switch(Q54Z)
  {
  case 0x1923:
  case 0x192F:
    transferResources(Q54Y, this, 0x0A, "flour");
    break;
  case 0x1922:
    transferResources(Q54Y, this, 0x0A, "flour");
    setType(Q54Y, 0x1923);
    changeLoc(Q5BZ, 0x00 - 0x01, 0x00, 0x00/* , *//* comma removed by decompiler post-processor */);
    Q4WL = getFirstObjectOfType(Q5BZ, 0x1920);
    setType(Q4WL, 0x1921);
    break;
  case 0x192E:
    setType(Q54Y, 0x192F);
    changeLoc(Q5BZ, 0x00, 0x00 - 0x01, 0x00/* , *//* comma removed by decompiler post-processor */);
    Q4WL = getFirstObjectOfType(Q5BZ, 0x192C);
    setType(Q4WL, 0x192D);
    transferResources(Q54Y, this, 0x0A, "flour");
    break;
  }
  int Q4PX;
  int Q4Q1;
  Q4Q1 = getResource(Q4PX, this, "flour", 0x03, 0x02);
  if(Q4PX == 0x00)
  {
    deleteObject(this);
  }
  return(0x00);
}