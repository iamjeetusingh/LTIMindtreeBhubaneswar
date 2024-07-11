# this is single line comment


<#
    this is
    multi
    line
    comment
#>


# listing top 5 eventlogs in application logs
cls
Get-Date
Get-EventLog -LogName Application -Newest 1


#multi-line cmdlet using (`) symbol
Get-EventLog -LogName Application -Newest 10 | `
Format-Table -AutoSize -Wrap | `
Out-File C:\Users\Jeetu\Desktop\ltibhub1\log.txt

