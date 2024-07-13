# Hashtables
$ht1 = @{}
$ht1.GetType()

# Unordered Hashtable
$ht2 = @{Name="Jeetu"; Training="Powershell"; Client="LTIMindtree"}
$ht2

# Ordered Hashtable
$ht3 = [ordered]@{Name="Jeetu"; Training="Powershell"; Client="LTIMindtree"; Class="Khaina"}
$ht3
$ht3.Keys
$ht3.Values
$ht3.Count
$ht3.Name
$ht3.Name = "Jitendra"
$ht3
$ht3.Add("LastDay","Saturday")
$ht3
$ht3.Remove("Training")
$ht3