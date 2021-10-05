function Add-MMAWorkspace {
    param
  (
    [string]
    $workspaceId,
    
    [string]
    $workspaceKey,

    # add parameters for computername and credentials:
    [string[]]
    $ComputerName,
    
    [PSCredential]
    $Credential
  )

    $mma = New-Object -ComObject 'AgentConfigManager.MgmtSvcCfg'
    $mma.AddCloudWorkspace($workspaceId, $workspaceKey)
    $mma.ReloadConfiguration()
}

#author: Richard Easton
#description: link a server/s to an azure workspace 
#usage: add-mmaworksapce -workspaceid "acbd1234-0000-1a2b-1234-abc1d2345678" -workspacekey [yourkey] -compuntername [yourserver] 
#optional: $credentials, use get-credential in the normal way
#optional: can be used in a foreach loop
