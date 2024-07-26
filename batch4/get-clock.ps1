function get-myclock{
    cls                 # to clear the screen
    Get-Date            # to print current date & time with sec
    Start-Sleep 1       # wait for 1 sec
    get-myclock         # calling the function itself
}

cls
get-myclock