Class Rel.Company Extends (%Persistent, %Populate)
{

Property CompanyName As %String(MAXLEN = 80, POPSPEC = "Company()") [ Required ];

Property Mission As %String(MAXLEN = 200, POPSPEC = "Mission()");

Relationship Employees As Rel.CompEmp [ Cardinality = many, Inverse = Company ];

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
</Data>
<DataLocation>^Rel.CompanyD</DataLocation>
<DefaultData>CompanyDefaultData</DefaultData>
<ExtentSize>2</ExtentSize>
<IdLocation>^Rel.CompanyD</IdLocation>
<IndexLocation>^Rel.CompanyI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="CompanyName">
<AverageFieldSize>21.5</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="Mission">
<AverageFieldSize>114</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Rel.CompanyS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
