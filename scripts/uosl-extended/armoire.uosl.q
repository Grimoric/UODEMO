// UOSL (enhanced)
inherits furniture;

trigger use(obj user)
{
  int Q5A2 = getObjType(this);
  loc Q4VS = getLocation(user);
  loc there = getLocation(this);
  int Q4IL = getDistanceInTiles(Q4VS, there);
  if(Q4IL > 0x02)
  {
    bark(user, "I am too far away to do that.");
    return(0x00);
  }
  int Q4Q1;
  switch(Q5A2)
  {
  case 0x0A53:
    setType(this, 0x0A52);
    callback(this, 0x0A, 0x26);
    break;
  case 0x0A4F:
    setType(this, 0x0A4E);
    callback(this, 0x0A, 0x26);
    break;
  case 0x0A51:
    setType(this, 0x0A50);
    callback(this, 0x0A, 0x26);
    break;
  case 0x0A4D:
    setType(this, 0x0A4C);
    callback(this, 0x0A, 0x26);
    break;
  case 0x0A52:
    setType(this, 0x0A53);
    Q4Q1 = teleport(this, getLocation(this));
    break;
  case 0x0A4E:
    setType(this, 0x0A4F);
    Q4Q1 = teleport(this, getLocation(this));
    break;
  case 0x0A50:
    setType(this, 0x0A51);
    Q4Q1 = teleport(this, getLocation(this));
    break;
  case 0x0A4C:
    setType(this, 0x0A4D);
    Q4Q1 = teleport(this, getLocation(this));
    break;
  default:
    break;
  }
  return(0x01);
}

trigger callback<0x26>()
{
  int Q5A2 = getObjType(this);
  switch(Q5A2)
  {
  case 0x0A52:
    setType(this, 0x0A53);
    break;
  case 0x0A4E:
    setType(this, 0x0A4F);
    break;
  case 0x0A50:
    setType(this, 0x0A51);
    break;
  case 0x0A4C:
    setType(this, 0x0A4D);
    break;
  default:
    break;
  }
  return(0x00);
}

trigger wasdropped(obj dropper)
{
  int Q62A = getObjType(this);
  switch(Q62A)
  {
  case 0x0A4C:
    Q5J8(0x0A4C, 0x0A50, 0x0A4C, 0x0A50);
    break;
  case 0x0A4D:
    Q5J8(0x0A4D, 0x0A51, 0x0A4D, 0x0A51);
    break;
  case 0x0A4E:
    Q5J8(0x0A4E, 0x0A52, 0x0A4E, 0x0A52);
    break;
  case 0x0A4F:
    Q5J8(0x0A4F, 0x0A53, 0x0A4F, 0x0A53);
    break;
  case 0x0A50:
    Q5J8(0x0A4C, 0x0A50, 0x0A4C, 0x0A50);
    break;
  case 0x0A51:
    Q5J8(0x0A4D, 0x0A51, 0x0A4D, 0x0A51);
    break;
  case 0x0A52:
    Q5J8(0x0A4E, 0x0A52, 0x0A4E, 0x0A52);
    break;
  case 0x0A53:
    Q5J8(0x0A4F, 0x0A53, 0x0A4F, 0x0A53);
    break;
  }
  return(0x01);
}