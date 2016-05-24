// UOSL (native)
inherits globals;

trigger enterrange(0x01)
{
  loc Q648;
  loc Q59R = getLocation(this);
  loc Q4NZ = 0x15C4, 0x0275, 0x2D;
  loc Q4O0 = 0x15C3, 0x0278, 0x0A;
  loc Q54L = 0x1581, 0x023A, 0x27;
  loc Q54O = 0x1593, 0x02A1, 0x23;
  if(Q59R == Q4NZ)
  {
    Q648 = 0x157A, 0x023A, 0x3B;
  }
  if(Q59R == Q4NZ)
  {
    Q648 = 0x158E, 0x02A0, 0x14;
  }
  if(Q59R == Q54L)
  {
    Q648 = 0x15C8, 0x0275, 0x1E;
  }
  if(Q59R == Q54O)
  {
    Q648 = 0x15C8, 0x0279, 0x1E;
  }
  if(!teleport(target, Q648))
  {
    return(0x01);
  }
  return(0x00);
}