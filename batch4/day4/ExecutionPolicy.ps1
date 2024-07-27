<#
    
    Execution Policy
        - a policy that allows a user to run or not to run a script on PS.
        - cmds:
            1. Get-ExecutionPolicy
                - list the current policy
            2. Set-ExecutionPolicy <>
                - change the policy 


    Types of ExecutionPolicy
        1. Unrestricted
            - if this policy is active, it will allow users to run ANY/ALL scripts.

        2. Restricted
            - if this policy is active, it will NOT allow users to run ANY scripts.

        3. RemoteSigned
            - if this policy is active, local users does not have to digitally sign the script 
              but remote users script must be DIGITALLY SIGNED.  

        4. AllSigned
            - both local and remote users must have a DIGITALLY SIGNED SCRIPT.

        5. Default
        6. ByPass


#>
Get-ExecutionPolicy

Set-ExecutionPolicy RemoteSigned
Get-ExecutionPolicy