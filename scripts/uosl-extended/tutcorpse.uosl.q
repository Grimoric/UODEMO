// UOSL (enhanced)
trigger use(obj user)
{
  list args = 0x09;
  message(user, "usedme", args);
  return(0x01);
}