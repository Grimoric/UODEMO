// UOSL (native)
trigger enterrange(0x01)
{
  loc Q4WJ = getLocation(this);
  int Q53G = getX(Q4WJ);
  int Q53H = getY(Q4WJ);
  int Q53I = getZ(Q4WJ);
  loc Q648;
  if((Q53G == 0x1461) && (Q53H == 0x0249) && (Q53I == (0x00 - 0x0A)))
  {
    Q648 = 0x14BA, 0x0216, 0x00;
  }
  if((Q53G == 0x14B9) && (Q53H == 0x0213) && (Q53I == 0x0A))
  {
    Q648 = 0x1461, 0x0247, 0x00;
  }
  if((Q53G == 0x14E4) && (Q53H == 0x0242) && (Q53I == (0x00 - 0x0A)))
  {
    Q648 = 0x1415, 0x028A, 0x00;
  }
  if((Q53G == 0x1413) && (Q53H == 0x028A) && (Q53I == 0x0A))
  {
    Q648 = 0x14DE, 0x0242, 0x00;
  }
  if((Q53G == 0x1462) && (Q53H == 0x02F9) && (Q53I == (0x00 - 0x1E)))
  {
    Q648 = 0x14BA, 0x028E, 0x00;
  }
  if((Q53G == 0x14BA) && (Q53H == 0x028B) && (Q53I == 0x0A))
  {
    Q648 = 0x1463, 0x0242, (0x00 - 0x14);
  }
  if(!teleport(target, Q648))
  {
    return(0x00);
  }
  return(0x01);
}