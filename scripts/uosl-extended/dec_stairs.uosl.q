// UOSL (enhanced)
inherits globals;

trigger enterrange<0x01>(obj target)
{
  loc Q648;
  loc Q59R = getLocation(this);
  loc Q52X = 0x1461, 0x024B, (0x00 - 0x14);
  loc Q530 = 0x14B9, 0x0213, 0x0A;
  loc Q531 = 0x14E3, 0x0242, (0x00 - 0x14);
  loc Q52Z = 0x1411, 0x028A, 0x0F;
  loc Q52Y = 0x1462, 0x02FA, (0x00 - 0x23);
  loc Q52V = 0x14BA, 0x0289, 0x0F;
  loc Q64A = 0x1461, 0x0246, 0x00;
  loc Q64D = 0x14B9, 0x0216, 0x00;
  loc Q64E = 0x14DE, 0x0242, 0x00;
  loc Q64C = 0x1415, 0x028A, 0x00;
  loc Q64B = 0x1462, 0x02F6, (0x00 - 0x14);
  loc Q649 = 0x14BA, 0x028E, 0x00;
  if(Q59R == Q52X)
  {
    Q648 = Q64D;
  }
  if(Q59R == Q530)
  {
    Q648 = Q64A;
  }
  if(Q59R == Q531)
  {
    Q648 = Q64C;
  }
  if(Q59R == Q52Z)
  {
    Q648 = Q64E;
  }
  if(Q59R == Q52Y)
  {
    Q648 = Q649;
  }
  if(Q59R == Q52V)
  {
    Q648 = Q64B;
  }
  if(!teleport(target, Q648))
  {
    return(0x01);
  }
  return(0x00);
}