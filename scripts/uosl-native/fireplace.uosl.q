// UOSL (native)
inherits itemmanip;

trigger use
{
  int Q62A = getObjType(this);
  int newType;
  obj Q5C4;
  obj Q5GX;
  int Q5GZ;
  int Q5GW;
  obj Q5GV;
  loc Q61U = getLocation(this);
  loc Q5GU = Q61U;
  switch(Q62A)
  {
  case 0x0935
    newType = 0x0937;
    Q5GZ = 0x0936;
    changeLoc(Q5GU, 0x00, 0x00 - 0x01, 0x00);
    Q5GW = 0x093D;
    break;
  case 0x0936
    newType = 0x093D;
    Q5GZ = 0x0935;
    changeLoc(Q5GU, 0x00, 0x01, 0x00);
    Q5GW = 0x0937;
    break;
  case 0x0937
    newType = 0x0935;
    Q5GZ = 0x093D;
    changeLoc(Q5GU, 0x00, 0x00 - 0x01, 0x00);
    Q5GW = 0x0936;
    break;
  case 0x093D
    newType = 0x0936;
    Q5GZ = 0x0937;
    changeLoc(Q5GU, 0x00, 0x01, 0x00);
    Q5GW = 0x0935;
    break;
  case 0x0951
    newType = 0x0953;
    Q5GZ = 0x0952;
    changeLoc(Q5GU, 0x00, 0x00 - 0x01, 0x00);
    Q5GW = 0x0959;
    break;
  case 0x0952
    newType = 0x0959;
    Q5GZ = 0x0951;
    changeLoc(Q5GU, 0x00, 0x01, 0x00);
    Q5GW = 0x0953;
    break;
  case 0x0953
    newType = 0x0951;
    Q5GZ = 0x0959;
    changeLoc(Q5GU, 0x00, 0x00 - 0x01, 0x00);
    Q5GW = 0x0952;
    break;
  case 0x0959
    newType = 0x0952;
    Q5GZ = 0x0953;
    changeLoc(Q5GU, 0x00, 0x01, 0x00);
    Q5GW = 0x0951;
    break;
  case 0x0944
    newType = 0x094B;
    Q5GZ = 0x0943;
    changeLoc(Q5GU, 0x01, 0x00, 0x00);
    Q5GW = 0x0945;
    break;
  case 0x0943
    newType = 0x0945;
    Q5GZ = 0x0944;
    changeLoc(Q5GU, 0x00 - 0x01, 0x00, 0x00);
    Q5GW = 0x094B;
    break;
  case 0x094B
    newType = 0x0944;
    Q5GZ = 0x0945;
    changeLoc(Q5GU, 0x01, 0x00, 0x00);
    Q5GW = 0x0943;
    break;
  case 0x0945
    newType = 0x0943;
    Q5GZ = 0x094B;
    changeLoc(Q5GU, 0x00 - 0x01, 0x00, 0x00);
    Q5GW = 0x0944;
    break;
  case 0x0960
    newType = 0x0967;
    Q5GZ = 0x095F;
    changeLoc(Q5GU, 0x01, 0x00, 0x00);
    Q5GW = 0x0961;
    break;
  case 0x095F
    newType = 0x0961;
    Q5GZ = 0x0960;
    changeLoc(Q5GU, 0x00 - 0x01, 0x00, 0x00);
    Q5GW = 0x0967;
    break;
  case 0x0967
    newType = 0x0960;
    Q5GZ = 0x0961;
    changeLoc(Q5GU, 0x01, 0x00, 0x00);
    Q5GW = 0x095F;
    break;
  case 0x0961
    newType = 0x095F;
    Q5GZ = 0x0967;
    changeLoc(Q5GU, 0x00 - 0x01, 0x00, 0x00);
    Q5GW = 0x0960;
    break;
  }
  Q5GX = getFirstObjectOfType(Q5GU, Q5GZ);
  Q5GV = createGlobalObjectAt(Q5GW, Q5GU);
  Q5C4 = createGlobalObjectAt(newType, Q61U);
  deleteObject(Q5GX);
  deleteObject(this);
  return(0x00);
}