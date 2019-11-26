Class Rel.CompEmp Extends %Persistent
{

Relationship Company As Rel.Company [ Cardinality = one, Inverse = Employees ];

Index CompanyIndex On Company;

Relationship Employee As Rel.Employee [ Cardinality = one, Inverse = Companies ];

Index EmployeeIndex On Employee;

Storage Default
{
<Data name="CompEmpDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Company</Value>
</Value>
<Value name="3">
<Value>Employee</Value>
</Value>
</Data>
<DataLocation>^Rel.CompEmpD</DataLocation>
<DefaultData>CompEmpDefaultData</DefaultData>
<IdLocation>^Rel.CompEmpD</IdLocation>
<IndexLocation>^Rel.CompEmpI</IndexLocation>
<StreamLocation>^Rel.CompEmpS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
