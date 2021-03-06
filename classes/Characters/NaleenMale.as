﻿package classes.Characters
{
	import classes.Creature;
	import classes.GLOBAL;
	import classes.Items.Miscellaneous.*;
	import classes.kGAMECLASS;
	import classes.rand;
	
	public class NaleenMale extends Creature
	{
		
		
		//constructor
		public function NaleenMale()
		{
			this._latestVersion = 2;
			this.version = _latestVersion;
			this._neverSerialize = true;
			
			this.short = "naleen male";
			this.originalRace = "naleen";
			this.a = "the ";
			this.capitalA = "The ";
			this.long = "You’re fighting a naleen: a towering, serpentine predator from the waist down, supporting a chiseled humanoid torso that bears more than a passing resemblance to a feline, with jet black fur and perky feline ears. His messy hair hangs loose down his shoulders, held by a headband of woven leaves. He scowls menacingly, baring his razor sharp claws at you as he studies you, his coils primed for a pounce the moment he catches an opening.";
			this.customDodge = "The naleen slides out of the way of your attack, serpentine body coiling upon itself with serpentine speed.";
			this.customBlock = "The naleen deflects your strikes with quick strikes of his own, effectively parrying your attack.";
			this.plural = false;
			this.lustVuln = 1;
			
			this.meleeWeapon.attackVerb = "claw";
			this.meleeWeapon.longName = "claws";
			this.meleeWeapon.damage = 2;
			this.meleeWeapon.damageType = GLOBAL.SLASHING;
			this.meleeWeapon.hasRandomProperties = true;
			
			this.armor.longName = "shimmering scales";
			this.armor.defense = 4;
			this.armor.hasRandomProperties = true;
			
			this.physiqueRaw = 9;
			this.reflexesRaw = 11;
			this.aimRaw = 1;
			this.intelligenceRaw = 4;
			this.willpowerRaw = 1;
			this.libidoRaw = 60;
			this.shieldsRaw = 0;
			this.energyRaw = 100;
			this.lustRaw = 35;
			this.resistances = new Array(1,1,1,1,1,1,1,1);
			this.XPRaw = 50;
			this.level = 2;
			this.credits = 0;
			this.HPMod = 15;
			this.HPRaw = this.HPMax();

			this.femininity = 5;
			this.eyeType = GLOBAL.FELINE;
			this.eyeColor = "green";
			this.tallness = 73;
			this.thickness = 42;
			this.tone = 75;
			this.hairColor = "red";
			this.scaleColor = "green";
			this.furColor = "black";
			this.hairLength = 33;
			this.hairType = 0;
			this.beardLength = 0;
			this.beardStyle = 0;
			this.skinType = GLOBAL.FUR;
			this.skinTone = "pale";
			this.skinFlags = [GLOBAL.FLUFFY];
			
			this.faceType = GLOBAL.HUMAN;
			this.faceFlags = new Array();
			this.tongueType = GLOBAL.SNAKE;
			this.lipMod = 1;
			this.earType = GLOBAL.FELINE;
			this.antennae = 0;
			this.antennaeType = 0;
			this.horns = 0;
			this.hornType = 0;
			this.armType = 0;
			this.gills = false;
			this.wingType = 0;
			this.legType = GLOBAL.NAGA;
			this.legCount = 1;
			this.legFlags = [GLOBAL.PREHENSILE, GLOBAL.TENDRIL, GLOBAL.SCALED];
			//0 - Waist
			//1 - Middle of a long tail. Defaults to waist on bipeds.
			//2 - Between last legs or at end of long tail.
			//3 - On underside of a tail, used for driders and the like, maybe?
			this.genitalSpot = 0;
			this.tailType = GLOBAL.SNAKE;
			this.tailCount = 0;
			this.tailFlags = new Array();
			//Used to set cunt or dick type for cunt/dick tails!
			this.tailGenitalArg = 0;
			//tailGenital:
			//0 - none.
			//1 - cock
			//2 - vagina
			this.tailGenital = 0;
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
			this.buttRating = 2;
			//No dicks here!
			this.cocks = new Array();
			//balls
			this.balls = 2;
			this.cumMultiplier = 3;
			//Multiplicative value used for impregnation odds. 0 is infertile. Higher is better.
			this.cumQuality = 1;
			this.cumType = GLOBAL.CUM;
			this.ballSize = 1.5;
			this.ballFullness = 100;
			//How many "normal" orgams worth of jizz your balls can hold.
			this.ballEfficiency = 6;
			//Scales from 0 (never produce more) to infinity.
			this.refractoryRate = 9999;
			this.minutesSinceCum = 9000;
			this.timesCum = 998;
			this.cockVirgin = false;
			this.vaginalVirgin = true;
			this.analVirgin = false;
			this.vaginas = new Array();
			this.cocks = new Array();
			this.createCock();
			this.createCock();
			this.cocks[0].cLength = 8;
			this.cocks[1].cLength = 8;
			//Goo is hyper friendly!
			this.elasticity = 1.4;
			//Fertility is a % out of 100. 
			this.fertility = 30;
			this.clitLength = .5;
			this.pregnancyMultiplier = 1;
			
			this.breastRows[0].breastRating = 0;
			this.nippleColor = "black";
			this.milkMultiplier = 0;
			this.milkType = GLOBAL.MILK;
			//The rate at which you produce milk. Scales from 0 to INFINITY.
			this.milkRate = 1;
			this.ass.wetness = 0;
			this.ass.looseness = 3;
			this.ass.bonusCapacity = 1000;
			
			this.createStatusEffect("Disarm Immune");

			this.inventory.push(new NaleenNip());
		}
		public function UpgradeVersion1(dataObject:Object):void
		{
			if (dataObject.skinFlags.length == 0)
			{
				dataObject.skinFlags.push(GLOBAL.FLUFFY);
			}
		}
		
		override public function setDefaultSexualPreferences():void
		{
			//Naleen Likes:
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_FEMININE,			GLOBAL.KINDA_LIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_BIG_BUTTS,		GLOBAL.REALLY_LIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_SMALL_BUTTS,		GLOBAL.KINDA_LIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_BIG_BREASTS,		GLOBAL.REALLY_LIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_SMALL_BREASTS,	GLOBAL.KINDA_LIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_BIG_MALEBITS,		GLOBAL.REALLY_LIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_MULTIPLES,		GLOBAL.KINDA_LIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_LACTATION,		GLOBAL.KINDA_LIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_LONG_HAIR,		GLOBAL.KINDA_LIKES_SEXPREF);
			//DISLIKES
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_BALDNESS,			GLOBAL.KINDA_DISLIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_TAILS,			GLOBAL.REALLY_DISLIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_TAILGENITALS,		GLOBAL.REALLY_DISLIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_HYPER,			GLOBAL.KINDA_DISLIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_GAPE,				GLOBAL.KINDA_DISLIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_COCKS,			GLOBAL.KINDA_DISLIKES_SEXPREF);
		}
		
		override public function prepForCombat():void
		{
			var combatNaleen:NaleenMale = this.makeCopy();
			
			kGAMECLASS.userInterface.showBust("NALEEN_MALE");
			kGAMECLASS.setLocation("FIGHT:\nNALEEN MALE", "PLANET: MHEN'GA", "SYSTEM: ARA ARA");
			combatNaleen.setDefaultSexualPreferences();
			
			kGAMECLASS.foes.push(combatNaleen);
		}
	}
}