<# Hashtables

    Key-value pair
#>

# to create hashtable
$ht1 = @{}
$ht1.GetType()

# Unordered hashtable
$ht2 = @{"Name" = "Jeetu" ; "Client" = "LTIMindtree" ; "Technology" = "PowerShell"}
$ht2

# Ordered hashtable
$ht3 = [ordered]@{"Name" = "Jeetu" ; "Client" = "LTIMindtree" ; "Technology" = "PowerShell"}
$ht3
$ht3.Keys
$ht3.Values
$ht3.Count                                 # to count the key-value pairs
$ht3["Name"]                               # to list specific value
$ht3["Name"] = "Jitendra Singh Tomar"      # to update a key
$ht3 
$ht3.Add("BName","Batch4")                 # to add another key-value pair
$ht3
$ht3.Remove("Technology")                  # to remove a key & its value
$ht3

#example of HT
cls
gwmi -Class win32_logicaldisk | Select-Object DeviceID, `
@{l = "Freespace(inKBs)" ; e = {($_.Freespace)}}, `
size