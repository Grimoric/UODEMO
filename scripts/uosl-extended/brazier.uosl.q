// UOSL (enhanced)
trigger use(obj user)
{
  loc Q466 = getX(getLocation(this)), getY(getLocation(this)), (getZ(getLocation(this)) + 0x05);
  doLocAnimation(Q466, 0x3709, 0x02, 0x38, 0x00, 0x00);
  return(0x00);
}