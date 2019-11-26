Class Supcon.Pet Extends (%Persistent, %Library.Populate)
{

Property PetName As %String(VALUELIST = ",Trigger,Fluffy,Oscar,Red,Max,Rex,Buddy,Daisy,Pixie,Lady,Zeus");

Property PetType As %String(VALUELIST = ",Dog,Cat,Bird,Rabbit");

Storage Default
{
<Data name="PetDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PetName</Value>
</Value>
<Value name="3">
<Value>PetType</Value>
</Value>
</Data>
<DataLocation>^Supcon.PetD</DataLocation>
<DefaultData>PetDefaultData</DefaultData>
<ExtentSize>10</ExtentSize>
<IdLocation>^Supcon.PetD</IdLocation>
<IndexLocation>^Supcon.PetI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>1.1</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="PetName">
<AverageFieldSize>4.2</AverageFieldSize>
<Selectivity>14.2857%</Selectivity>
</Property>
<Property name="PetType">
<AverageFieldSize>4.3</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Supcon.PetS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
