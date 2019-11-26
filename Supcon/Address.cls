Class Supcon.Address Extends (%SerialObject,%Library.Populate,%XML.Adaptor)
{


Property Street As %String(POPSPEC = "Street()");
Property State As %String(MAXLEN = 2, POPSPEC = "USState()");
Property City As %String(POPSPEC = "City()");
Property Zip As %String(MAXLEN = 5, POPSPEC = "USZip()");


Storage Default
{
<Data name="AddressState">
<Value name="1">
<Value>Street</Value>
</Value>
<Value name="2">
<Value>City</Value>
</Value>
<Value name="3">
<Value>State</Value>
</Value>
<Value name="4">
<Value>Zip</Value>
</Value>
</Data>
<State>AddressState</State>
<StreamLocation>^Supcon.AddressS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}