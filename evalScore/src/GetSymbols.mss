function GetSymbols(staff, score) {
symbList = CreateSparseArray();

	for each SymbolItem symb in staff
	{
		check = False;
		if(symbList.Length > 0)
		{

			for each el in symbList
			{
				if (symb.Name = el)
				{
					check = True;
				}
			}
		}
		
		if (check = False)
		{
			symbList.Push(symb.Name);
		}
	}

for each el in symbList
	{
		Trace('Symbol found: ' & el & ' ' & score.SymbolIndex(el));
	}
} //$end

