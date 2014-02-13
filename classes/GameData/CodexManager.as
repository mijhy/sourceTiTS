package classes.GameData 
{
	import classes.GameData.CodexData.CodexEntry;
	import classes.GameData.CodexData.Races.Ausar;
	import classes.GameData.CodexData.Races.Myrmedion;
	import classes.GameData.CodexData.Races.Naleen;
	import classes.GameData.CodexData.Races.Zil;
	
	/**
	 * ...
	 * @author Gedan
	 */
	public class CodexManager 
	{
		// Static initilizers, MY OLD FRIEND
		{
			CODEX_ENTRY_TREE = new Object();
			CODEX_ENTRY_DB = new Object();
			CodexManager.InitComplete = false;
			
			// I question the value of some of these, but, it works so w/e
			// Plus, they'd be piss easy to change to have location/area based type deals.

			// This is kind of a super shitty way to do things, but until I've got more information about how we wanna spiff this shit up,
			// I'm gunning for lowest common denominator type shit that should be easy to extend into whatever kind of extensibility we want to support down the line.
			
			// People subcategories
			CodexManager.addEntry("Waifus", CodexManager.CODEX_TYPE_PERSON);
			CodexManager.addEntry("Husbandos", CodexManager.CODEX_TYPE_PERSON); // Haha, who the fuck am I kidding.
			CodexManager.addEntry("Villans", CodexManager.CODEX_TYPE_PERSON);
			
			// Race subcategories
			CodexManager.addEntry("Organic", CodexManager.CODEX_TYPE_RACE);
			CodexManager.addEntry("Mechanical", CodexManager.CODEX_TYPE_RACE);
			CodexManager.addEntry("Energy", CodexManager.CODEX_TYPE_RACE);
			
			// Location subcategories
			CodexManager.addEntry("Ara Ara", CodexManager.CODEX_TYPE_LOCATION);
				CodexManager.addEntry("Tavros", CodexManager.CODEX_TYPE_LOCATION, "Ara Ara");
				CodexManager.addEntry("Mhen'ga", CodexManager.CODEX_TYPE_LOCATION, "Ara Ara");
			
			// Event subcategories
			CodexManager.addEntry("Creation", CodexManager.CODEX_TYPE_EVENT);
			CodexManager.addEntry("Some Event", CodexManager.CODEX_TYPE_EVENT);
		}
		
		// This shit can't be done inside a static init like ^, because its external to the class...
		private static function init():void
		{
			Ausar.insert();
			Myrmedion.insert();
			Naleen.insert();
			Zil.insert();
		}
		
		private static var InitComplete:Boolean;
		
		private static function doInit():void
		{
			if (CodexManager.InitComplete == false)
			{
				CodexManager.init();
				CodexManager.InitComplete = true;
			}
		}
		
		private static var CODEX_ENTRY_TREE:Object;
		private static var CODEX_ENTRY_DB:Object;
		
		// Primary index types
		public static const CODEX_TYPE_UKNOWN:int 		= 0; 
		public static const CODEX_TYPE_PERSON:int 		= 1;
		public static const CODEX_TYPE_RACE:int 		= 2;
		public static const CODEX_TYPE_EVENT:int 		= 3;
		public static const CODEX_TYPE_LOCATION:int 	= 4;
		
		public static function addEntry(entryIndex:String, entryType:int = 0, parentEntry:String = "", entryData:String = ""):void
		{		
			var newChild:CodexEntry = new CodexEntry();
			newChild.entryName = entryIndex;
			newChild.entryType = entryType;
			newChild.codexEntryData = entryData;
			
			CODEX_ENTRY_DB[entryIndex] = newChild;
			
			if (parentEntry == "")
			{
				CODEX_ENTRY_TREE[entryIndex] = newChild;
			}
			else
			{
				(CODEX_ENTRY_DB[parentEntry] as CodexEntry).addChild(newChild);
			}
		}
		
		public static function getKeys():Array
		{
			CodexManager.doInit();
			
			var keyArray:Array = new Array();
			for (var key:String in CodexManager.CODEX_ENTRY_DB)
			{
				keyArray.push(key);
			}
			return keyArray;
		}
		
		public static function getKeyData(key:String):CodexEntry
		{
			CodexManager.doInit();
			
			if (key in CodexManager.CODEX_ENTRY_DB)
			{
				return CodexManager.CODEX_ENTRY_DB[key];
			}
			else
			{
				return null;
			}
		}
	}

}