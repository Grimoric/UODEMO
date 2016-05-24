// UOSL (enhanced)
inherits multidecay;

trigger destroyed()
{
  Q4WS(this);
  return(0x01);
}

trigger message<"vendordelete">(obj sender, list args)
{
  obj vendor = args[0x00];
  Q4X2(this, vendor);
  return(0x01);
}