function GetLines(staff, score) {
lineList = CreateSparseArray();

	for each Line line in staff
	{
		check = False;
		if(lineList.Length > 0)
		{

			for each el in lineList
			{
				if (line.StyleAsText = el)
				{
					check = True;
				}
			}
		}
		
		if (check = False)
		{
			lineList.Push(line.StyleAsText);
		}
	}

for each el in lineList
	{
		Trace('Symbol found: ' & el & ' ' & score.LineStyleId(el));
	}
} //$end

