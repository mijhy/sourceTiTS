﻿package classes.Characters
{
	import classes.Creature;
	import classes.GLOBAL;
	import classes.Items.Miscellaneous.*;
	import classes.kGAMECLASS;
	import classes.rand;
	
	public class Sera extends Creature
	{
		//constructor
		public function Sera()
		{
			this._latestVersion = 1;
			this.version = _latestVersion;
			this._neverSerialize = true;
			
			this.short = "Sera";
			this.originalRace = "human";
			this.a = "";
			this.capitalA = "";
			this.long = "PLACE HOLDER!";
			this.customDodge = "PLACE HOLDER!";
			this.customBlock = "PLACE HOLDER!";
			this.plural = false;
			this.lustVuln = 1;
			
			this.meleeWeapon.attackVerb = "claw";
			this.meleeWeapon.longName = "claws";
			this.meleeWeapon.hasRandomProperties = true;
			
			this.armor.longName = "shield-corset";
			this.armor.defense = 2;
			this.armor.hasRandomProperties = true;
			
			this.physiqueRaw = 4;
			this.reflexesRaw = 10;
			this.aimRaw = 8;
			this.intelligenceRaw = 9;
			this.willpowerRaw = 9;
			this.libidoRaw = 55;
			this.energyRaw = 100;
			this.lustRaw = 35;
			this.resistances = new Array(1,1,1,1,1,1,1,1);
			this.XPRaw = 50;
			this.level = 2;
			this.credits = 0;
			this.HPMod = 0;
			this.HPRaw = this.HPMax();
			this.shieldsRaw = this.shieldsMax();

			this.inventory.push(new Rainbotox());
			
			this.typesBought[this.typesBought.length] = GLOBAL.PILL;
			this.typesBought[this.typesBought.length] = GLOBAL.POTION;
			this.typesBought[this.typesBought.length] = GLOBAL.DRUG;
			this.sellMarkup = 1.2;
			this.buyMarkdown = .8;

			this.femininity = 85;
			this.eyeType = GLOBAL.DEMONIC;
			this.eyeColor = "glowing amber";
			this.tallness = 73;
			this.thickness = 21;
			this.tone = 40;
			this.hairColor = "pale blue";
			this.scaleColor = "blue";
			this.furColor = "blue";
			this.hairLength = 22;
			this.hairType = 0;
			this.beardLength = 0;
			this.beardStyle = 0;
			this.skinType = GLOBAL.SKIN;
			this.skinTone = "light purple";
			this.skinFlags = new Array();
			
			this.faceType = GLOBAL.HUMAN;
			this.faceFlags = new Array();
			this.tongueType = GLOBAL.HUMAN;
			this.lipMod = 1;
			this.earType = GLOBAL.DEMONIC;
			this.antennae = 0;
			this.antennaeType = 0;
			this.horns = 2;
			this.hornType = GLOBAL.DEMONIC;
			this.hornLength = 13;
			this.armType = GLOBAL.DEMONIC;
			this.gills = false;
			this.wingType = 0;
			this.legType = GLOBAL.HUMAN;
			this.legCount = 2;
			this.legFlags = new Array();
			//0 - Waist
			//1 - Middle of a long tail. Defaults to waist on bipeds.
			//2 - Between last legs or at end of long tail.
			//3 - On underside of a tail, used for driders and the like, maybe?
			this.genitalSpot = 0;
			this.tailType = GLOBAL.DEMONIC;
			this.tailCount = 1;
			this.tailFlags = [GLOBAL.TAILCOCK,GLOBAL.SMOOTH,GLOBAL.PREHENSILE,GLOBAL.LONG];
			//Used to set cunt or dick type for cunt/dick tails!
			this.tailGenitalArg = 0;
			//tailGenital:
			//0 - none.
			//1 - cock
			//2 - vagina
			this.tailGenital = 1;
			//Tail venom is a 0-100 slider used for tail attacks. Recharges per hour.
			this.tailVenom = 0;
			//Tail recharge determines how fast venom/webs comes back per hour.
			this.tailRecharge = 5;
			//hipRating
			//0 - boyish
			//2 - slender
			//4 - average
			//6 - noticable/ample
			//10 - curvy//flaring
			//15 - child-bearing/fertile
			//20 - inhumanly wide
			this.hipRating = 6;
			//buttRating
			//0 - buttless
			//2 - tight
			//4 - average
			//6 - noticable
			//8 - large
			//10 - jiggly
			//13 - expansive
			//16 - huge
			//20 - inconceivably large/big/huge etc
			this.buttRating = 6;
			//No dicks here!
			this.cocks = new Array();
			this.createCock();
			this.cocks[0].cLength = 12.5;
			//balls
			this.balls = 2;
			this.cumMultiplier = 30;
			//Multiplicative value used for impregnation odds. 0 is infertile. Higher is better.
			this.cumQuality = 1;
			this.cumType = GLOBAL.CUM;
			this.ballSize = 2;
			this.ballFullness = 100;
			//How many "normal" orgams worth of jizz your balls can hold.
			this.ballEfficiency = 90;
			//Scales from 0 (never produce more) to infinity.
			this.refractoryRate = 9999;
			this.minutesSinceCum = 9000;
			this.timesCum = 4182;
			this.cockVirgin = false;
			this.vaginalVirgin = false;
			this.analVirgin = false;
			this.vaginas = new Array();
			this.createVagina();
			this.vaginas[0].hymen = false;
			this.vaginas[0].clits = 1;
			this.vaginas[0].wetness = 3;
			this.vaginas[0].looseness = 2;
			this.vaginas[0].bonusCapacity = 20;
			//Goo is hyper friendly!
			this.elasticity = 1;
			//Fertility is a % out of 100. 
			this.fertility = 0;
			this.clitLength = .5;
			this.pregnancyMultiplier = 1;
			
			this.breastRows[0].breastRating = 10;
			this.nippleColor = "cerulean";
			this.milkMultiplier = 0;
			this.milkType = GLOBAL.MILK;
			//The rate at which you produce milk. Scales from 0 to INFINITY.
			this.milkRate = 1;
			this.ass.wetness = 0;
			this.ass.looseness = 1;
			this.ass.bonusCapacity = 50;
			
			this.createStatusEffect("Disarm Immune");
		}
	}

}