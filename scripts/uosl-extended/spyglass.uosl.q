// UOSL (enhanced)
inherits globals;

trigger use(obj user)
{
  int Q645 = getTrammelPhase();
  int Q4OZ = getFeluccaPhase();
  string Q5X4 = getMoonPhaseStr(Q645);
  string Q5WO = getMoonPhaseStr(Q4OZ);
  barkTo(user, user, Q5X4 + " " + Q5WO);
  return(0x00);
}