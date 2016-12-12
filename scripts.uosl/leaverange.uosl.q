// UOSL (native)
inherits trap_single;

trigger leaverange(0x00)
{
  int Q64U = Q64S(0x01, target, 0x00, 0x00, 0x00);
  return(0x00);
}