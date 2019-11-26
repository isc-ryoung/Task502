Class Rel.Employee Extends (%Persistent, %Populate)
{

Property Name As %String;

Property Title As %String;

Property Salary As %Integer(MAXVAL = 200000);

Relationship Companies As Rel.CompEmp [ Cardinality = many, Inverse = Employee ];

Storage Default
{
<Data name="EmployeeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Title</Value>
</Value>
<Value name="4">
<Value>Salary</Value>
</Value>
</Data>
<DataLocation>^Rel.EmployeeD</DataLocation>
<DefaultData>EmployeeDefaultData</DefaultData>
<ExtentSize>10</ExtentSize>
<IdLocation>^Rel.EmployeeD</IdLocation>
<IndexLocation>^Rel.EmployeeI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>1.1</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Name">
<AverageFieldSize>17.2</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<Property name="Salary">
<AverageFieldSize>5.7</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<Property name="Title">
<AverageFieldSize>22.4</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Rel.EmployeeS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
