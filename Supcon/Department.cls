Class Supcon.Department Extends (%Persistent, %Populate)
{

Property DeptName As %String(POPSPEC = "ValueList("",Sales,HR,Engineering,Marketing,Finance,QD,Finance,Customer Service""):3");

Relationship Company As Supcon.Company [ Cardinality = parent, Inverse = Departments ];

Storage Default
{
<Data name="DepartmentDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DeptName</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("Departments")</DataLocation>
<DefaultData>DepartmentDefaultData</DefaultData>
<ExtentSize>6</ExtentSize>
<IdLocation>^Supcon.CompanyC("Departments")</IdLocation>
<IndexLocation>^Supcon.DepartmentI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>4</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Company">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="DeptName">
<AverageFieldSize>5.17</AverageFieldSize>
<Selectivity>20.0000%</Selectivity>
</Property>
<Property name="childsub">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>16.6667%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Supcon.DepartmentS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
