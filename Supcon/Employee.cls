Class Supcon.Employee Extends Supcon.Person
{

Property Title As %String(POPSPEC = "Title()");

Property Salary As %Integer(MAXVAL = 200000);

ClassMethod HighSalary(MinSalary As %Integer) As %Integer [ SqlName = High_Salary, SqlProc ]
{
	&sql(SELECT COUNT(*) into :Total From Supcon.Employee WHERE Salary > :MinSalary )
	quit Total
}

Query EmpQuery(MinSalary As %Integer) As %SQLQuery [ SqlName = Emp_Query, SqlProc ]
{
SELECT Name,Title,Salary FROM Employee
WHERE (Salary > :MinSalary)
}

Storage Default
{
<Data name="EmployeeDefaultData">
<Subscript>"Employee"</Subscript>
<Value name="1">
<Value>Title</Value>
</Value>
<Value name="2">
<Value>Salary</Value>
</Value>
<Value name="3">
<Value>Company</Value>
</Value>
</Data>
<DefaultData>EmployeeDefaultData</DefaultData>
<ExtentSize>6</ExtentSize>
<Property name="%%CLASSNAME">
<AverageFieldSize>17</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Age">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>16.6667%</Selectivity>
</Property>
<Property name="Company">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="DOB">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>16.6667%</Selectivity>
</Property>
<Property name="FavoriteColors">
<AverageFieldSize>13</AverageFieldSize>
<Selectivity>16.6667%</Selectivity>
</Property>
<Property name="HomeAddress">
<AverageFieldSize>36.33,City:7.67,State:2,Street:16.5,Zip:5</AverageFieldSize>
<Selectivity>16.6667%,City:20.0000%,State:16.6667%,Street:16.6667%,Zip:16.6667%</Selectivity>
</Property>
<Property name="Name">
<AverageFieldSize>16.67</AverageFieldSize>
<Selectivity>16.6667%</Selectivity>
</Property>
<Property name="SSN">
<AverageFieldSize>11</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Salary">
<AverageFieldSize>5.17</AverageFieldSize>
<Selectivity>16.6667%</Selectivity>
</Property>
<Property name="Title">
<AverageFieldSize>22.67</AverageFieldSize>
<Selectivity>16.6667%</Selectivity>
</Property>
<SQLMap name="$Employee">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="CompanyIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<Type>%Library.CacheStorage</Type>
}

// Relationship Company As Supcon.Company [ Cardinality = one, Inverse = Employess ];

// Index CompanyIndex On Company;

Relationship Company As Supcon.Company [ Cardinality = one, Inverse = Employees ];

Index CompanyIndex On Company;

}
