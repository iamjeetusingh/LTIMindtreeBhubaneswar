<# DIGITALLY SIGNED SCRIPT

    1. a script (with any code in it)
    2. a certificate (self signed certificate)
        - makecert.exe
        - linux --> openssl
        - IIS web server
        - PowerShell cmdlet -=> New-SelfSignedCertificate (PSv5.0)
    3. export it certificate
    4. import/install the certificate
    5. bind the certificate with the script (Set-AuthenticodeSignature)
    6. verify (Get-AuthenticodeSignature)

#>
# for creating certificate
New-SelfSignedCertificate -CertStoreLocation Cert:\currentuser\My `
-Subject "CN=ltib4" `
-KeyAlgorithm RSA `
-KeyLength 1024 `
-Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
-KeyExportPolicy Exportable `
-KeyUsage DigitalSignature `
-Type CodeSigningCert

# to list/view certificate
Get-ChildItem Cert:\currentuser\My                                               # show all certs
Get-ChildItem Cert:\currentuser\My\684B3CAB039B5B46BE841027BFF3EC24C1506CC8      # show ur cert

#to export the cert
get-help Export-PfxCertificate -Online

# to import/install the exported certificate
Get-Help Import-PfxCertificate -Online

# to bind the script & the cert
$cert = Get-ChildItem Cert:\CurrentUser\My\684B3CAB039B5B46BE841027BFF3EC24C1506CC8
Set-AuthenticodeSignature -Certificate $cert -FilePath "E:\PowerShell\batch4\myscript.ps1"