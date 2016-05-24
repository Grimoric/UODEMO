// UOSL (native)
inherits multistuff;

member int Q4H2;

trigger decay
{
  obj Q5AK = getMultiSlaveId(this);
  resetMultiCarriedDecay(Q5AK);
  int Q4H4 = 0x01;
  intRet(Q4H4);
  return(0x01);
}