function GetSpecialBarlines(systf) {
	specList = CreateSparseArray();

	for each SpecialBarline spec in systf
	{
		check = False;

		if(specList.Length > 0)
		{

			for each el in specList
			{
				if (spec.BarlineType = el)
				{
					check = True;
				}
			}
		}
		
		if (check = False)
		{
			specList.Push(spec.BarlineType);
		}
	}

	for each el in specList
	{
		Trace('Barline type found: ' & el);
	}
}//$end

