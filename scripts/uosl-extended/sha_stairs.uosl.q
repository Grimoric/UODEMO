// UOSL (enhanced)
inherits globals;

trigger enterrange<0x01>(obj target)
{
  loc Q648;
  loc Q59R = getLocation(this);
  loc Q52X = 0x1573, 0x12, (0x00 - 0x34);
  loc Q530 = 0x1588, 0x08, 0x00;
  loc Q531 = 0x1588, 0x94, 0x14;
  loc Q52Z = 0x15E2, 0x65, (0x00 - 0x17);
  loc Q52Y = 0x16F1, 0x11, 0x0A;
  loc Q52V = 0x158C, 0xAE, (0x00 - 0x17);
  loc Q64D = 0x158B, 0x08, 0x00;
  loc Q64A = 0x1570, 0x12, (0x00 - 0x1E);
  loc Q64C = 0x15E0, 0x65, 0x00;
  loc Q64E = 0x1589, 0x94, 0x14;
  loc Q649 = 0x1587, 0xAF, 0x00;
  loc Q64B = 0x16F6, 0x12, (0x00 - 0x0A);
  if(Q59R == Q52X)
  {
    Q648 = Q64D;
  }
  else
  {
    if(Q59R == Q530)
    {
      Q648 = Q64A;
    }
    else
    {
      if(Q59R == Q531)
      {
        Q648 = Q64C;
      }
      else
      {
        if(Q59R == Q52Z)
        {
          Q648 = Q64E;
        }
        else
        {
          if(Q59R == Q52Y)
          {
            Q648 = Q649;
          }
          else
          {
            if(Q59R == Q52V)
            {
              Q648 = Q64B;
            }
            else
            {
              bark(this, "Not a supported teleporter location.");
              return(0x01);
            }
          }
        }
      }
    }
  }
  if(!teleport(target, Q648))
  {
    return(0x01);
  }
  return(0x00);
}