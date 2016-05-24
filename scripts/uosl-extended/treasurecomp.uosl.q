// UOSL (enhanced)
inherits globals;

trigger use(obj user)
{
  list args = user;
  obj Q5TP;
  Q5TP = getMultiSlaveId(this);
  message(Q5TP, "getTreasure", args);
  return(0x00);
}