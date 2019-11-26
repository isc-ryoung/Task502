Class Supcon.Utility Extends %RegisteredObject
{

ClassMethod pop(KillOldData as %Boolean=1)
{
	//section to delete all old data and repopulate our Classes
	if KillOldData {
		k ^Supcon.PersonD
		k ^Supcon.PersonI
		k ^Supcon.EmployeeD
	}

	set scPerson=##class(Supcon.Person).Populate(10)
	if 'scPerson do Error(scPerson)
	set scEmployee=##class(Supcon.Employee).Populate(10)
	if 'scEmployee do Error(scEmployee)
	
Error(sc)
	d $SYSTEM.OBJ.DisplayError(sc)
}


}