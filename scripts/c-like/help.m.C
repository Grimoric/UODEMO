// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION void Q689(obj Q4XN)
{
  systemMessageHued(Q4XN, 0x35, "Please wait for your web browser to start...");
  return;
}

FUNCTION void Q4NY(obj Q4XN)
{
  systemMessageHued(Q4XN, 0x35, "Please enter a description of your problem:");
  return;
}

FUNCTION void Q4VR(obj Q4XN)
{
  systemMessageHued(Q4XN, 0x35, "Your help request has been entered.");
  systemMessageHued(Q4XN, 0x35, "The next available game master will respond as soon as possible.");
  return;
}

FORWARD void Q4NS(obj Q4XN, int Q44T);
FORWARD void Q457(obj Q4XN, int Q5L3, string Q65M, string text);
FORWARD void Q4CY(obj Q4XN, int num, int Q65M);
FORWARD void Q5M2(obj Q4XN);
FORWARD void Q4KX(obj Q4XN);
FORWARD void Q4KY(obj Q4XN);
FORWARD void Q4KZ(obj Q4XN);
FORWARD void Q4L0(obj Q4XN);
FORWARD void Q4L1(obj Q4XN);
FORWARD void Q4L2(obj Q4XN);
FORWARD void Q4L3(obj Q4XN);
FORWARD void Q4L4(obj Q4XN);
FORWARD void Q4L5(obj Q4XN);
FORWARD void Q4L6(obj Q4XN);
FORWARD void Q4L7(obj Q4XN);
FORWARD void Q4L8(obj Q4XN);
FORWARD void Q4L9(obj Q4XN);

FUNCTION void Q4NS(obj Q4XN, int Q44T)
{
  if(Q44T)
  {
    systemMessageHued(Q4XN, 0x35, "Help request aborted.");
  }
  detachScript(Q4XN, "help");
  return;
}

FUNCTION int Q42K(obj it)
{
  if(!getGMCallStatus())
  {
    systemMessageHued(this, 0x35, "We are sorry, but currently a GM is unavailable to answer your call.  Our in-game support hours are 2:00pm-12:00am CST, although we are monitoring the servers for problems during these off peak times.  Please try again during these times.");
    Q4NS(this, 0x00);
    return(0x00);
  }
  return(0x01);
}

FUNCTION void Q4EH(obj Q4XN, int Q5L3)
{
  if(Q5L3 == 0x01)
  {
    int num = 0x00;
    if(hasObjVar(Q4XN, "calls"))
    {
      num = getObjVar(Q4XN, "calls");
    }
    num = num + 0x01;
    setObjVar(Q4XN, "calls", num);
  }
  return;
}

FUNCTION void Q457(obj Q4XN, int Q5L3, string Q65M, string text)
{
  string Q5LV = Q65M;
  concat(Q5LV, ": ");
  string Q4EA;
  loc Q4XS = loc( getLocation(Q4XN) );
  Q4EA = "(";
  Q4EA = Q4EA + getX(Q4XS);
  concat(Q4EA, " ");
  Q4EA = Q4EA + getY(Q4XS);
  concat(Q4EA, " ");
  Q4EA = Q4EA + getZ(Q4XS);
  concat(Q4EA, ") ");
  concat(Q5LV, Q4EA);
  concat(Q5LV, text);
  addHelpRequestToQueue(Q4XN, Q5L3, 0x00, Q5LV);
  Q4EH(Q4XN, Q5L3);
  return;
}

FUNCTION void Q4CY(obj Q4XN, int num, int Q65M)
{
  if((num == 0x00) || (!isValid(Q4XN)))
  {
    Q4NS(this, Q65M);
  }
  return;
}

FUNCTION void Q5M2(obj Q4XN)
{
  callback(Q4XN, 0x78, 0x70);
  return;
}

TRIGGER( callback , 0x70 )()
{
  Q4NS(this, 0x01);
  return(0x00);
}

TRIGGER( creation )()
{
  Q4CY(this, 0x01, 0x00);
  Q5M2(this);
  Q4KX(this);
  return(0x01);
}

FUNCTION void Q4KX(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "CHARACTER IS PHYSICALLY STUCK:  This type of call can only be handled by a Game Master.  Game Master hours are 2:00pm to 12:00am CST.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "ANOTHER PLAYER IS HARASSING ME:  Again, the only way for us to verify this kind of issue directly is for you to call a Game Master.  If the harassment occurs outside of Game Master hours, please send a message to our e-mail support.");
  appendToList(Q59P, 0x02);
  appendToList(Q59P, "CHARACTER CAN NOT CONTINUE: If your character is suffering from an error which is considered drastic and is preventing you from continuing within the game, please page a Game Master during the posted hours or write to our e-mail support.");
  appendToList(Q59P, 0x03);
  appendToList(Q59P, "CONTINUE:  If your choice was not listed here, select this option.");
  appendToList(Q59P, 0x04);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x64, "Please remember, Game Masters are only available to help with the following types of calls:  character cannot move, you are being harassed, or your character cannot continue.  Please choose the area in which you require assistance from below.", Q59P);
  return;
}

FUNCTION void Q4KY(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "TECHNICAL SUPPORT:  Sound or video problems, client crashes, lag, latency, or other technical issues.  You may try to resolve these issues through our web page trouble-shooter, email, or you may speak to a technical support representative directly.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "BILLING ISSUES:  If you cannot log into the game, if you believe your billing statement is in error, or just have general billing questions.");
  appendToList(Q59P, 0x02);
  appendToList(Q59P, "PREVIOUS:  If the option you need was not listed above.");
  appendToList(Q59P, 0x03);
  appendToList(Q59P, "CONTINUE: If the option you need was not listed above, nor on the previous menu.");
  appendToList(Q59P, 0x04);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x65, "Please select from the following options:", Q59P);
  return;
}

FUNCTION void Q4KZ(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "GENERAL HINTS / GAMEPLAY QUESTIONS:  If you need a hint or just a push in the right direction, select this option.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "REQUEST LATEST GAME INFORMATION:  We continuously update all new information regarding Ultima Online, plus any information about upcoming updates on our web page.");
  appendToList(Q59P, 0x02);
  appendToList(Q59P, "BUG SUBMISSION / LOST ITEMS:  You may submit any bugs which have adversely, or even beneficially, affected your character to our web page.");
  appendToList(Q59P, 0x03);
  appendToList(Q59P, "PREVIOUS:  If the option you need was not listed above.");
  appendToList(Q59P, 0x04);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x66, "Please select from the following options:", Q59P);
  return;
}

FUNCTION void Q4L0(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "PHONE SUPPORT:  For information on phone support, choose this option.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "E-MAIL SUPPORT:  For information on e-mail technical support, choose this option.");
  appendToList(Q59P, 0x02);
  appendToList(Q59P, "WEB SUPPORT:  Our web page has a full line of technical support issues currently known.  Please visit http://www.owo.com for the complete listing.  Select this option to automatically open your web browser to our support issues.");
  appendToList(Q59P, 0x03);
  appendToList(Q59P, "Select this option to return to the main page.");
  appendToList(Q59P, 0x04);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x67, "Technical support is considered to be sound/video problems, client crashes, lag, latency, or other technical issues.  If you have lost items or stats within the game, this is not a technical support issue, please return to the Main Menu.", Q59P);
  return;
}

FUNCTION void Q4L1(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "Select this option to return to the main page.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "Select this option to return to the previous menu.");
  appendToList(Q59P, 0x02);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x68, "Phone support can be reached at (512) 434-HELP.  Our technicians will be available to help you from 10:00am to 7:00pm CST.  We shut our phones down at 1:00pm to let your hard working technicians eat lunch.", Q59P);
  return;
}

FUNCTION void Q4L2(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "Select this option to return to the main page.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "Select this option to return to the previous menu.");
  appendToList(Q59P, 0x02);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x69, "E-mail support can be reach by e-mailing:  support@owo.com.  Please give our representatives four working days when answering your e-mail request.", Q59P);
  return;
}

FUNCTION void Q4L3(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "If you were not able to find the information you needed through the web page, you may also try to call (512) 434-HELP.  A representative will be available to help you from 10:00am to 7:00pm CST (M-F).  We do break from 1:00pm to 2:00pm for lunch.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "Select this option to open your browser to the registration site.");
  appendToList(Q59P, 0x02);
  appendToList(Q59P, "Select this option to return to the main menu.");
  appendToList(Q59P, 0x03);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x6A, "Most billing inquiries are able to be answered through our billing web page.  To see the status of your account, you may either open your browser and go to:  http://ultima-registration.com , or you may select the option below to open your browser.", Q59P);
  return;
}

FUNCTION void Q4L4(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "If you were not able to find the information you needed through the web page, you may also write our e-mail support at:  support@owo.com");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "Would you like some information within the game?  Page a counselor.  Counselors are players, just like you, that have volunteered to avail their knowledge to other players.  There is no guarantee that a counselor will be in the game at this time as they are volunteer support.");
  appendToList(Q59P, 0x02);
  appendToList(Q59P, "Select this option to open your browser to the online guide.");
  appendToList(Q59P, 0x03);
  appendToList(Q59P, "Select this option to return to the main menu.");
  appendToList(Q59P, 0x04);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x6B, "Many of the gameplay questions that you may have are answered on our website.  To manually go to this address, you may open your browser to:  http://www.owo.com/guide/index.html", Q59P);
  return;
}

FUNCTION void Q4L5(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "ITEMS:  If you have lost an item, cannot use an item, have a problem with an item, or have general item questions.  Select this option.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "SKILLS AND STATS:  Information about how to increase skills or stats, questions as to why they go up or down, or things that might influence stats or skills.  Select this option.");
  appendToList(Q59P, 0x02);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x6C, "Help for problems with your character.", Q59P);
  return;
}

FUNCTION void Q4L6(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "SUBMIT:  Submit a bug report.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "You see the item, but you cannot use it, equip it, or unequip it; even though it is on your person.");
  appendToList(Q59P, 0x02);
  appendToList(Q59P, "You cannot see the item, but others can see it, even though it is on your person.");
  appendToList(Q59P, 0x03);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x6D, "If you have lost items in the game, we are sorry.  Items can be lost to decay, theft, and rarely bugs.  We do not replace lost items within the game no matter how they were lost.  We encourage you to submit a bug report.", Q59P);
  return;
}

FUNCTION void Q4L7(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "If you have tried both of these options, select this option to have a call entered into the Game Master queue, and someone will come to help you as soon as possible.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x6E, "Try the following suggestions if you can see the item but you cannot use it.  1) Try to log out of the game and back in.  This often fixes the problem.  2) Try to enter a dungeon and exit it.  This can also solve the problem.", Q59P);
  return;
}

FUNCTION void Q4L8(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "If you have tried both of these options, select this option to have a call entered into the Game Master queue, and someone will come to help you as soon as possible.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "DONE");
  selectType(Q4XN, Q4XN, 0x6F, "Help with items that you cannot see, but others can see.  1) Try to log out of the game and back in.  This often fixes the problem.  2) Try to enter a dungeon and exit it.  This can also solve the problem.", Q59P);
  return;
}

FUNCTION void Q4L9(obj Q4XN)
{
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "To visit the web site and see the skill documentation, select this option.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "If your character is losing skill or attribute points quickly, say 10 points an hour, you may have a corrupted character.  Select this option to call a Game Master.");
  selectType(Q4XN, Q4XN, 0x70, "Ultima Online does have things which lower skills as well as raise them.  Skill atrophy occurs when a skill is used very little or when you have reached the pinnacle of the skills.  Sometimes a skill might be lowered so that another skill can raise.", Q59P);
  return;
}

TRIGGER( typeselected , 0x64 )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    if(Q42K(this))
    {
      Q4NY(this);
      textEntry(this, this, 0x01, 0x00, "");
    }
    break;
  case 0x01:
    if(Q42K(this))
    {
      Q4NY(this);
      textEntry(this, this, 0x02, 0x00, "");
    }
    break;
  case 0x02:
    Q4L5(this);
    break;
  case 0x03:
    Q4KY(this);
    break;
  case 0x04:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x65 )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    Q4L0(this);
    break;
  case 0x01:
    Q4L3(this);
    break;
  case 0x02:
    Q4KX(this);
    break;
  case 0x03:
    Q4KZ(this);
    break;
  case 0x04:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x66 )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    Q4L4(this);
    break;
  case 0x01:
    Q689(this);
    webBrowse(this, "http://update.owo.com/");
    Q4NS(this, 0x00);
    break;
  case 0x02:
    Q689(this);
    webBrowse(this, "http://www.owo.com/help/tech/bugs/bus_main.html");
    Q4NS(this, 0x00);
    break;
  case 0x03:
    Q4KY(this);
    break;
  case 0x04:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x67 )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    Q4L1(this);
    break;
  case 0x01:
    Q4L2(this);
    break;
  case 0x02:
    Q689(this);
    webBrowse(this, "http://www.owo.com/help/index.html");
    Q4NS(this, 0x00);
    break;
  case 0x03:
    Q4KX(this);
    break;
  case 0x04:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x68 )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    Q4KX(this);
    break;
  case 0x01:
    Q4L0(this);
    break;
  case 0x02:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x69 )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    Q4KX(this);
    break;
  case 0x01:
    Q4L0(this);
    break;
  case 0x02:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x6A )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x01:
    Q689(this);
    webBrowse(this, "http://ultima-registration.com");
    Q4NS(this, 0x00);
    break;
  case 0x02:
    Q4KX(this);
    break;
  case 0x00:
  case 0x04:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x6B )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    Q4L2(this);
    break;
  case 0x01:
    Q4NY(this);
    textEntry(this, this, 0x03, 0x00, "");
    break;
  case 0x02:
    Q689(this);
    webBrowse(this, "http://www.owo.com/guide/index.html");
    Q4NS(this, 0x00);
    break;
  case 0x03:
    Q4KX(this);
    break;
  case 0x04:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x6C )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    Q4L6(this);
    break;
  case 0x01:
    Q4L9(this);
    break;
  case 0x02:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x6D )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    Q689(this);
    webBrowse(this, "http://www.owo.com/help/tech/bugs/bus_main.html");
    Q4NS(this, 0x00);
    break;
  case 0x01:
    Q4L7(this);
    break;
  case 0x02:
    Q4L8(this);
    break;
  case 0x03:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x6E )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    if(Q42K(this))
    {
      Q4NY(this);
      textEntry(this, this, 0x04, 0x00, "");
    }
    break;
  case 0x01:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x6F )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    if(Q42K(this))
    {
      Q4NY(this);
      textEntry(this, this, 0x05, 0x00, "");
    }
    break;
  case 0x01:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x70 )(obj user, int listindex, int objtype, int objhue)
{
  Q4CY(this, listindex, 0x01);
  Q5M2(this);
  switch(objtype)
  {
  case 0x00:
    Q689(this);
    webBrowse(this, "http://www.owo.com/guide/skills/main.html");
    Q4NS(this, 0x00);
    break;
  case 0x01:
    if(Q42K(this))
    {
      Q4NY(this);
      textEntry(this, this, 0x06, 0x00, "");
    }
    break;
  case 0x02:
  default:
    Q4NS(this, 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( textentry , 0x01 )(obj sender, int button, string text)
{
  Q4CY(this, button, 0x01);
  Q4VR(this);
  Q457(this, 0x01, "Stuck", text)/* semicolon added by the decompiler post-processor */;
  Q4NS(this, 0x00);
  return(0x00);
}

TRIGGER( textentry , 0x02 )(obj sender, int button, string text)
{
  Q4CY(this, button, 0x01);
  Q4VR(this);
  Q457(this, 0x01, "Harassment", text)/* semicolon added by the decompiler post-processor */;
  Q4NS(this, 0x00);
  return(0x00);
}

TRIGGER( textentry , 0x03 )(obj sender, int button, string text)
{
  Q4CY(this, button, 0x01);
  Q4VR(this);
  Q457(this, 0x00, "", text)/* semicolon added by the decompiler post-processor */;
  Q4NS(this, 0x00);
  return(0x00);
}

TRIGGER( textentry , 0x04 )(obj sender, int button, string text)
{
  Q4CY(this, button, 0x01);
  Q4VR(this);
  Q457(this, 0x01, "Unusable item", text)/* semicolon added by the decompiler post-processor */;
  Q4NS(this, 0x00);
  return(0x00);
}

TRIGGER( textentry , 0x05 )(obj sender, int button, string text)
{
  Q4CY(this, button, 0x01);
  Q4VR(this);
  Q457(this, 0x01, "Invisible item", text)/* semicolon added by the decompiler post-processor */;
  Q4NS(this, 0x00);
  return(0x00);
}

TRIGGER( textentry , 0x06 )(obj sender, int button, string text)
{
  Q4CY(this, button, 0x01);
  Q4VR(this);
  Q457(this, 0x01, "Stat/Skill Problem", text)/* semicolon added by the decompiler post-processor */;
  Q4NS(this, 0x00);
  return(0x00);
}