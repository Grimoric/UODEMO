// UOSL (native)
inherits spelskil;

trigger lookedat
{
  string Q53V;
  int Q5E2 = getQuantity(this);
  int Q5UU = Q4T2(this);
  string Q5O0 = Q5E2;
  if(Q5E2 > 0x01)
  {
    Q53V = Q5O0 + " " + Q4T0(Q5UU) + " scrolls";
  }
  else
  {
    Q53V = "a " + Q4T0(Q5UU) + " scroll";
  }
  barkTo(this, looker, Q53V);
  return(0x00);
}