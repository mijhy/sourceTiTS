package classes.GameData.CodexData 
{
	/**
	 * ...
	 * @author Gedan
	 */
	public class CodexEntry 
	{
		// Categorization of codex entries.
		private var _entryType:int = 0;
		public function get entryType():int { return _entryType; }
		public function set entryType(v:int):void { _entryType = v; }
		
		// Name/Index of the entry
		private var _entryName:String = "";
		public function get entryName():String { return _entryName; }
		public function set entryName(v:String):void { _entryName = v; }
		
		// Direct child references
		private var _children:Object = new Object();
		
		// Add a child to this Entries list of children
		public function addChild(entry:CodexEntry):void
		{
			if (entry.entryName in _children)
			{
				throw new Error("Entry \"" + entry.entryName + "\" already contained in \"" + entryName + "\"");
			}
		}
		
		// "Body" of the entry
		private var _codexEntryData:String = "";
		public function get codexEntryData():String { return _codexEntryData; }
		public function set codexEntryData(v:String):void { _codexEntryData = v; }
		
		public function CodexEntry() 
		{
			
		}
	}
}