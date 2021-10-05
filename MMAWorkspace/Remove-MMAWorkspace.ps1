function Remove-MMAWorkspace {
    param
  (
    # emit only software that matches the value you submit:
    [string]
    $workspaceId,
    
    # add parameters for computername and credentials:
    [string[]]
    $ComputerName,
    
    [PSCredential]
    $Credential
  )

    $mma = New-Object -ComObject 'AgentConfigManager.MgmtSvcCfg'
    $mma.RemoveCloudWorkspace($workspaceId)
    $mma.ReloadConfiguration()
}

#author: Richard Easton
#description: unlink a server/s from an azure workspace 
#usage: remoave-mmaworksapce -workspaceid "acbd1234-0000-1a2b-1234-abc1d2345678" -compuntername [yourserver] 
#optional: $credentials, use get-credential in the normal way
#optional: can be used in a foreach loop
