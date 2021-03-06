function Run() {
	if (Sibelius.YesNoMessageBox('Start score analysis.') = True)
	{
		score = Sibelius.ActiveScore;
		systf = score.SystemStaff;

		//Write file name
		Trace('Analyze ' & score.FileName);

		//Analyze System Staff
		Trace('Analyze system staff:');
		Trace('Anazlyze special barlines in system staff:');
		GetSpecialBarlines(systf);
		Trace('Analyze symbols in system staff:');
		GetSystemSymbols(systf, score);
		Trace('Analyze text objects in system staff:');
		GetSystemText(systf, score);

		for each staff in score 
		{
		//Analyze Symbols
		Trace('Analyze used symbols of staff 1:');
		GetSymbols(staff, score);
		
		//Analyze staff texts
		Trace('Analyze text objects of staff 1:');
		GetStaffTexts(staff, score);

		//Analyze lines
		Trace('Analyze used lines of staff 1:');
		GetLines(staff, score);
		}
		
	}
} //$end

