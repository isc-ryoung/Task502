Class Supcon.Person Extends (%Persistent, %XML.Adaptor, %Library.Populate)
{


Property Pets As array Of Supcon.Pet(POPSPEC=":5:Integer()") ;
 
Property FavoriteColors As list Of %String(POPSPEC = "ValueList("",Red,Orange,Yellow,Green,Blue,Purple,Black,White""):3");

Index Colors On FavoriteColors(ELEMENTS) [ Type = bitmap ];

Property Name As %String(POPSPEC = "Name()");

Property DOB As %Date(POPSPEC = "Date()");

Property SSN As %String(PATTERN = "3N1""-""2N1""-""4N") [ Required ];

Index SSNIndex On SSN [ Unique ];

Property HomeAddress As Supcon.Address;

Property Age As %Integer [ Calculated, SqlComputeCode = { Set {Age} = ##class(Supcon.Person).CurrentAge({DOB})}, SqlComputed, SqlComputeOnChange = DOB ];

ClassMethod CurrentAge(date As %Date = "") As %Integer [ CodeMode = expression ]
{
$Select(date="":"",1:(($H-date)\365))
}

Storage Default
{
<Data name="PersonDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>DOB</Value>
</Value>
<Value name="4">
<Value>SSN</Value>
</Value>
<Value name="5">
<Value>HomeAddress</Value>
</Value>
<Value name="6">
<Value>FavoriteColors</Value>
</Value>
</Data>
<Data name="Pets">
<Attribute>Pets</Attribute>
<Structure>subnode</Structure>
<Subscript>"Pets"</Subscript>
</Data>
<DataLocation>^Supcon.PersonD</DataLocation>
<DefaultData>PersonDefaultData</DefaultData>
<ExtentSize>9</ExtentSize>
<IdLocation>^Supcon.PersonD</IdLocation>
<IndexLocation>^Supcon.PersonI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Age">
<AverageFieldSize>1.89</AverageFieldSize>
<Selectivity>11.1111%</Selectivity>
</Property>
<Property name="DOB">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>11.1111%</Selectivity>
</Property>
<Property name="FavoriteColors">
<AverageFieldSize>13.11</AverageFieldSize>
<Selectivity>12.5000%</Selectivity>
</Property>
<Property name="HomeAddress">
<AverageFieldSize>36.22,City:7,State:2,Street:16.78,Zip:5</AverageFieldSize>
<Selectivity>11.1111%,City:12.5000%,State:11.1111%,Street:11.1111%,Zip:11.1111%</Selectivity>
</Property>
<Property name="Name">
<AverageFieldSize>16.67</AverageFieldSize>
<Selectivity>11.1111%</Selectivity>
</Property>
<Property name="SSN">
<AverageFieldSize>11</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<SQLMap name="$Person">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="Colors">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="SSNIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Supcon.PersonS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
