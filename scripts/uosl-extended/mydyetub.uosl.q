// UOSL (enhanced)
inherits sndfx;

trigger use(obj user)
{
  systemMessage(user, "Select the clothing to dye.");
  targetObj(user, this);
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  if(isEquipped(usedon))
  {
    systemMessage(user, "Can't Dye clothing that is being worn.");
    return(0x00);
  }
  int Q66P = getObjType(usedon);
  int Q61R = getHue(this);
  loc Q66R = getLocation(usedon);
  switch(Q66P)
  {
  case 0x101F:
  case 0x0DF8:
  case 0x0DF9:
  case 0x0E1D:
  case 0x0E1E:
  case 0x0E1F:
  case 0x0FA0:
  case 0x0FA1:
  case 0x0F95:
  case 0x0F96:
  case 0x0F97:
  case 0x0F98:
  case 0x0F99:
  case 0x0F9A:
  case 0x0F9B:
  /* case 0x0F9C: */
  case 0x0F9C:
  case 0x175D:
  case 0x175E:
  case 0x175F:
  case 0x1760:
  case 0x1761:
  case 0x1762:
  case 0x1763:
  case 0x1764:
  case 0x1765:
  case 0x1766:
  case 0x1767:
  case 0x1768:
  case 0x1515:
  case 0x1516:
  case 0x1517:
  case 0x1537:
  case 0x1539:
  /* case 0x153B: */
  case 0x153D:
  case 0x1540:
  case 0x1541:
  case 0x1544:
  case 0x170B:
  case 0x170C:
  case 0x170F:
  case 0x1710:
  case 0x1711:
  case 0x1712:
  case 0x1EFD:
  case 0x1EFE:
  case 0x1EFF:
  case 0x1F00:
  case 0x1F01:
  case 0x1F02:
  case 0x1F03:
  case 0x1F04:
  case 0x1FA1:
  case 0x1FA2:
  case 0x1518:
  case 0x1543:
  case 0x1F9F:
  case 0x1FA0:
  case 0x153F:
  case 0x153B:
  case 0x153C:
  case 0x153E:
  case 0x1542:
  case 0x1530:
  case 0x1F7B:
  case 0x1F7C:
  case 0x153A:
  case 0x152E:
  case 0x152F:
  case 0x1538:
  case 0x1713:
  case 0x1714:
  case 0x1715:
  case 0x1716:
  case 0x1717:
  case 0x1718:
  case 0x1719:
  case 0x171A:
  case 0x171B:
  case 0x171C:
  case 0x1B74:
  case 0x1B75:
    sfx(Q66R, 0x25, 0x00);
    setHue(usedon, Q61R);
    break;
  }
  return(0x00);
}