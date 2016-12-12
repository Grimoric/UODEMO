// UOSL (native)
inherits sndfx;

trigger creation
{
  if(!hasObjVar(this, "nonHuman"))
  {
    return(0x00);
  }
  int Q519 = getObjVar(this, "nonHuman");
  member int Q5U6;
  switch(Q519)
  {
  case 0x00
    setDefaultTextHue(this, 0x22);
    Q5U6 = 0x01B0;
    break;
  case 0x01
    setDefaultTextHue(this, 0x59);
    Q5U6 = 0x01D2;
    break;
  case 0x02
    setDefaultTextHue(this, 0x3A);
    Q5U6 = 0x01A2;
    break;
  case 0x03
    setDefaultTextHue(this, 0x95);
    Q5U6 = 0x01B6;
    break;
  default
  }
  return(0x01);
}

function void Q4KE(obj this, int Q52S)
{
  string Q60V;
  int Q56B = random(0x02, Q52S);
  int Q566;
  string Q610;
  string Q618;
  int Q5KV;
  int Q4AE;
  for(int i = 0x00; i < Q56B; i ++)
  {
    Q618 = " ";
    Q4AE = 0x00;
    if(i != 0x00)
    {
      Q5KV = random(0x01, 0x0F);
      if(Q5KV < 0x0B)
      {
        Q618 = " ";
      }
      else
      {
        Q4AE = 0x01;
        if(Q5KV > 0x0D)
        {
          Q618 = "! ";
        }
        else
        {
          Q618 = ". ";
        }
      }
    }
    if(random(0x00, 0x0A) < 0x03)
    {
      Q566 = random(0x01, 0x05);
    }
    else
    {
      Q566 = random(0x01, 0x03);
    }
    int Q68P = 0x00;
    if(hasObjVar(this, "nonHuman"))
    {
      Q68P = getObjVar(this, "nonHuman");
    }
    for(int Q518 = 0x00; Q518 < Q566; Q518 ++)
    {
      if(Q68P == 0x00)
      {
        Q610 = getOrcishSyllable(random(0x00, 0x7FFF));
      }
      else
      {
        if(Q68P == 0x01)
        {
          Q610 = getWispishSyllable(random(0x00, 0x7FFF));
        }
        else
        {
          if(Q68P == 0x02)
          {
            Q610 = getLizardishSyllable(random(0x00, 0x7FFF));
          }
          else
          {
            Q610 = getRattishSyllable(random(0x00, 0x7FFF));
          }
        }
      }
      if((Q518 == 0x00) && (Q4AE == 0x01))
      {
        toUpper(Q610, 0x00, 0x01);
      }
      concat(Q618, Q610);
    }
    concat(Q60V, Q618);
  }
  if(random(0x01, 0x05) == 0x01)
  {
    concat(Q60V, "!");
  }
  else
  {
    concat(Q60V, ".");
  }
  toUpper(Q60V, 0x00, 0x02);
  bark(this, Q60V);
  sfx(getLocation(this), Q5U6, 0x00);
  return();
}

trigger speech("*")
{
  if(!isPlayer(speaker))
  {
    return(0x01);
  }
  if(isDead(speaker))
  {
    return(0x01);
  }
  if(!canSeeObj(this, speaker))
  {
    return(0x01);
  }
  list Q5YQ;
  getTargets(Q5YQ, this);
  if(numInList(Q5YQ) > 0x00)
  {
    return(0x01);
  }
  if(!isFacingPerson(this, speaker))
  {
    return(0x01);
  }
  list args;
  string Q618;
  list Q69D;
  split(args, arg);
  int Q52S = numInList(args) + 0x03;
  list Q69B = "meat", "gold", "kill", "killing", "slay", "sword", "axe", "spell", "magic", "spells", "swords", "axes", "mace", "maces", "monster", "monsters", "food", "run", "escape", "away", "help", "dead", "die", "dying", "lose", "losing", "life", "lives", "death", "ghost", "ghosts", "british", "blackthorn", "guild", "guilds", "dragon", "dragons", "game", "games", "ultima", "silly", "stupid", "dumb", "idiot", "idiots", "cheesy", "cheezy", "crazy", "dork", "jerk", "fool", "foolish", "ugly", "insult", "scum";
  Q69D = "meat", "kill", "pound", "crush", "yum yum", "crunch", "destroy", "murder", "eat", "munch", "massacre", "food", "monster", "evil", "run", "die", "lose", "dumb", "idiot", "fool", "crazy", "jabber incomprehensibly", "dinner", "lunch", "breakfast", "fight", "battle", "doomed", "rip apart", "tear apart", "smash", "edible?", "shred", "disembowel", "ugly", "smelly", "stupid", "hideous", "smell", "tasty", "invader", "attack", "raid", "plunder", "pillage", "treasure", "loser", "lose", "scum";
  list Q69C;
  int Q4QI = 0x00;
  for(int i = 0x00; i < numInList(Q69B); i ++)
  {
    Q618 = Q69B[i];
    if(isInList(args, Q618))
    {
      Q4QI = 0x01;
      appendToList(Q69D, Q618);
      appendToList(Q69C, Q618);
    }
  }
  if(Q4QI)
  {
    Q4KE(this, ((Q52S / 0x02) + 0x01));
    string Q4XX;
    if(random(0x00, 0x01) == 0x01)
    {
      Q618 = Q69D[random(0x00, (numInList(Q69D) - 0x01))];
    }
    else
    {
      Q618 = Q69C[random(0x00, (numInList(Q69C) - 0x01))];
    }
    string Q46C = Q69D[random(0x00, (numInList(Q69D) - 0x01))];
    int Q60R = random(0x00, 0x05);
    switch(Q60R)
    {
    case 0x00
      Q4XX = " Me " + Q618 + "? ";
      break;
    case 0x01
      toUpper(Q618, 0x00, 0x01);
      Q4XX = Q618 + " thee! ";
      break;
    case 0x02
      toUpper(Q618, 0x00, 0x01);
      Q4XX = Q618 + "?";
      break;
    case 0x03
      toUpper(Q618, 0x00, 0x01);
      toUpper(Q46C, 0x00, 0x01);
      Q4XX = Q618 + "! " + Q46C + ". ";
      break;
    case 0x04
      toUpper(Q618, 0x00, 0x01);
      Q4XX = Q618 + ". ";
      break;
    case 0x05
      toUpper(Q618, 0x00, 0x01);
      toUpper(Q46C, 0x00, 0x01);
      Q4XX = Q618 + "? " + Q46C + ". ";
      break;
    default
      Q4XX = "";
      break;
    }
    bark(this, Q4XX);
    Q4KE(this, ((Q52S / 0x02) + 0x01));
    return(0x00);
  }
  Q4KE(this, Q52S);
  return(0x00);
}

trigger 100 enterrange(0x05)
{
  if(!isPlayer(target))
  {
    return(0x01);
  }
  Q4KE(this, 0x07);
  return(0x01);
}

function void Q5LC(list Q4OL)
{
  string x = Q4OL[random(0x00, numInList(Q4OL) - 0x01)];
  Q4KE(this, 0x03);
  bark(this, x);
  return();
}

trigger 100 death
{
  list Q4GU = "Revenge!", "NOOooo!", "I... I...", "Me no die!", "Me die!", "Must... not die...", "Oooh, me hurt...", "Me dying?";
  Q5LC(Q4GU);
  return(0x01);
}

trigger 100 killedtarget
{
  list Q58D = "Ha! Thou dead!", "Thou not attack me! ", "Die!", "Die! Die!", "There!", "Thou, die!", "Fight me not!", "Ha! Be ghost now!";
  Q5LC(Q58D);
  return(0x01);
}

trigger 100 washit
{
  list Q58D;
  if(damamt < 0x01)
  {
    Q58D = "Ha! Bad fighter!", "You miss!", "Bad aim!", "Enemy fight bad!", "Me fight better!", "Thou art doomed...";
    Q5LC(Q58D);
    return(0x01);
  }
  if(damamt < 0x05)
  {
    Q58D = "Ouch!", "Me not hurt bad!", "Thou fight bad.", "Thy blows soft!", "You bad with weapon!";
  }
  else
  {
    Q58D = "Ouch! Me hurt!", "No, kill me not!", "Me hurt!", "Away with thee!", "Oof! That hurt!", "Aaah! That hurt...", "Good blow!";
  }
  Q5LC(Q58D);
  return(0x01);
}