Class Supcon.Company Extends (%Persistent, %Library.Populate)
{

Property CompanyName As %String(MAXLEN = 80, POPSPEC = "Company()") [ Required ];

Property Mission As %Text(LANGUAGECLASS = "MyText.MyEnglish", MAXLEN = 200, POPSPEC = "Mission()");

Index myFullTextIndex On Mission(KEYS);

Property CompanyBio As %Stream.GlobalCharacterSearchable(LOCATION = "^CompanyBio");

Index myStreamIndex On CompanyBio(KEYS) [ Type = bitmap ];

Relationship Employees As Supcon.Employee [ Cardinality = many, Inverse = Company ];

Relationship Departments As Supcon.Department [ Cardinality = children, Inverse = Company ];

Storage Default
{
<Data name="CompanyDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CompanyName</Value>
</Value>
<Value name="3">
<Value>Mission</Value>
</Value>
<Value name="4">
<Value>CompanyBio</Value>
</Value>
</Data>
<DataLocation>^Supcon.CompanyD</DataLocation>
<DefaultData>CompanyDefaultData</DefaultData>
<ExtentSize>2</ExtentSize>
<IdLocation>^Supcon.CompanyD</IdLocation>
<IndexLocation>^Supcon.CompanyI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="CompanyBio">
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="CompanyName">
<AverageFieldSize>16</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="Mission">
<AverageFieldSize>88</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<SQLMap name="$Company">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Supcon.CompanyS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
