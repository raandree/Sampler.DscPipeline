@{
    AllNodes = @{
        'Dev'  = [ordered]@{
            'DSCFile01' = [ordered]@{
                'NodeName'                    = '[x={ $Node.Name }=]'
                'Environment'                 = '[x={ $File.Directory.BaseName } =]'
                'Role'                        = 'FileServer'
                'Description'                 = '[x= "$($Node.Role) in $($Node.Environment)" =]'
                'Location'                    = 'Frankfurt'
                'Baseline'                    = 'Server'
                'ComputerSettings'            = [ordered]@{
                    'Name'        = 'DSCFile01'
                    'Description' = 'FileServer in '
                }
                'NetworkIpConfiguration'      = [ordered]@{'Interfaces' = , [ordered]@{
                        'InterfaceAlias' = 'DscWorkshop 0'
                        'IpAddress'      = '192.168.111.100'
                        'Prefix'         = 24
                        'Gateway'        = '192.168.111.50'
                        'DnsServer'      = , '192.168.111.10'
                        'DisableNetbios' = $true
                    }
                }
                'PSDscAllowPlainTextPassword' = $true
                'PSDscAllowDomainUser'        = $true
                'LcmConfig'                   = [ordered]@{'ConfigurationRepositoryWeb' = [ordered]@{'Server' = [ordered]@{'ConfigurationNames' = 'DSCFile01' } } }
                'DscTagging'                  = [ordered]@{'Layers' = , 'AllNodes\Dev\DSCFile01' }
                'FilesAndFolders'             = [ordered]@{'Items' = , [ordered]@{
                        'DestinationPath' = 'Z:\DoesNotWork'
                        'Type'            = 'Directory'
                    }
                }
                'Name'                        = 'DSCFile01'
            }
            'DSCWeb01'  = [ordered]@{
                'NodeName'                    = '[x={ $Node.Name }=]'
                'Environment'                 = '[x={ $File.Directory.BaseName } =]'
                'Role'                        = 'WebServer'
                'Description'                 = '[x= "$($Node.Role) in $($Node.Environment)" =]'
                'Location'                    = 'Singapore'
                'Baseline'                    = 'Server'
                'ComputerSettings'            = [ordered]@{
                    'Name'        = 'DSCWeb01'
                    'Description' = 'WebServer in '
                }
                'NetworkIpConfiguration'      = [ordered]@{'Interfaces' = , [ordered]@{
                        'InterfaceAlias' = 'DscWorkshop 0'
                        'IpAddress'      = '192.168.111.101'
                        'Prefix'         = 24
                        'Gateway'        = '192.168.111.50'
                        'DnsServer'      = , '192.168.111.10'
                        'DisableNetbios' = $true
                    }
                }
                'PSDscAllowPlainTextPassword' = $true
                'PSDscAllowDomainUser'        = $true
                'LcmConfig'                   = [ordered]@{'ConfigurationRepositoryWeb' = [ordered]@{'Server' = [ordered]@{'ConfigurationNames' = 'DSCWeb01' } } }
                'DscTagging'                  = [ordered]@{'Layers' = , 'AllNodes\Dev\DSCWeb01' }
                'Name'                        = 'DSCWeb01'
            }
        }
        'Prod' = [ordered]@{
            'DSCFile03' = [ordered]@{
                'NodeName'                    = '[x={ $Node.Name }=]'
                'Environment'                 = '[x={ $File.Directory.BaseName } =]'
                'Role'                        = 'FileServer'
                'Description'                 = '[x= "$($Node.Role) in $($Node.Environment)" =]'
                'Location'                    = 'Frankfurt'
                'Baseline'                    = 'Server'
                'ComputerSettings'            = [ordered]@{
                    'Name'        = 'DSCFile03'
                    'Description' = 'FileServer in '
                }
                'NetworkIpConfiguration'      = [ordered]@{'Interfaces' = , [ordered]@{
                        'InterfaceAlias' = 'DscWorkshop 0'
                        'IpAddress'      = '192.168.111.120'
                        'Prefix'         = 24
                        'Gateway'        = '192.168.111.50'
                        'DnsServer'      = , '192.168.111.10'
                        'DisableNetbios' = $true
                    }
                }
                'PSDscAllowPlainTextPassword' = $true
                'PSDscAllowDomainUser'        = $true
                'LcmConfig'                   = [ordered]@{'ConfigurationRepositoryWeb' = [ordered]@{'Server' = [ordered]@{'ConfigurationNames' = 'DSCFile03' } } }
                'DscTagging'                  = [ordered]@{'Layers' = , 'AllNodes\Prod\DSCFile03' }
                'Name'                        = 'DSCFile03'
            }
            'DSCWeb03'  = [ordered]@{
                'NodeName'                    = '[x={ $Node.Name }=]'
                'Environment'                 = '[x={ $File.Directory.BaseName } =]'
                'Role'                        = 'WebServer'
                'Description'                 = '[x= "$($Node.Role) in $($Node.Environment)" =]'
                'Location'                    = 'Singapore'
                'Baseline'                    = 'Server'
                'ComputerSettings'            = [ordered]@{
                    'Name'        = 'DSCWeb03'
                    'Description' = 'WebServer in '
                }
                'NetworkIpConfiguration'      = [ordered]@{'Interfaces' = , [ordered]@{
                        'InterfaceAlias' = 'DscWorkshop 0'
                        'IpAddress'      = '192.168.111.121'
                        'Prefix'         = 24
                        'Gateway'        = '192.168.111.50'
                        'DnsServer'      = , '192.168.111.10'
                        'DisableNetbios' = $true
                    }
                }
                'PSDscAllowPlainTextPassword' = $true
                'PSDscAllowDomainUser'        = $true
                'LcmConfig'                   = [ordered]@{'ConfigurationRepositoryWeb' = [ordered]@{'Server' = [ordered]@{'ConfigurationNames' = 'DSCWeb03' } } }
                'DscTagging'                  = [ordered]@{'Layers' = , 'AllNodes\Prod\DSCWeb03' }
                'Name'                        = 'DSCWeb03'
            }
        }
        'Test' = [ordered]@{
            'DSCFile02' = [ordered]@{
                'NodeName'                    = '[x={ $Node.Name }=]'
                'Environment'                 = '[x={ $File.Directory.BaseName } =]'
                'Role'                        = 'FileServer'
                'Description'                 = '[x= "$($Node.Role) in $($Node.Environment)" =]'
                'Location'                    = 'Frankfurt'
                'Baseline'                    = 'Server'
                'ComputerSettings'            = [ordered]@{
                    'Name'        = '[x={ $Node.NodeName }=]'
                    'Description' = '[x= "$($Node.Role) in $($Node.Environment)" =]'
                }
                'NetworkIpConfiguration'      = [ordered]@{'Interfaces' = , [ordered]@{
                        'InterfaceAlias' = 'DscWorkshop 0'
                        'IpAddress'      = '192.168.111.110'
                        'Prefix'         = 24
                        'Gateway'        = '192.168.111.50'
                        'DnsServer'      = , '192.168.111.10'
                        'DisableNetbios' = $true
                    }
                }
                'PSDscAllowPlainTextPassword' = $true
                'PSDscAllowDomainUser'        = $true
                'LcmConfig'                   = [ordered]@{'ConfigurationRepositoryWeb' = [ordered]@{'Server' = [ordered]@{'ConfigurationNames' = '[x={ $Node.NodeName }=]' } } }
                'DscTagging'                  = [ordered]@{'Layers' = , '[x={ Get-DatumSourceFile -Path $File } =]' }
                'Name'                        = 'DSCFile02'
            }
            'DSCWeb02'  = [ordered]@{
                'NodeName'                    = '[x={ $Node.Name }=]'
                'Environment'                 = '[x={ $File.Directory.BaseName } =]'
                'Role'                        = 'WebServer'
                'Description'                 = '[x= "$($Node.Role) in $($Node.Environment)" =]'
                'Location'                    = 'Singapore'
                'Baseline'                    = 'Server'
                'ComputerSettings'            = [ordered]@{
                    'Name'        = '[x={ $Node.NodeName }=]'
                    'Description' = '[x= "$($Node.Role) in $($Node.Environment)" =]'
                }
                'NetworkIpConfiguration'      = [ordered]@{'Interfaces' = , [ordered]@{
                        'InterfaceAlias' = 'DscWorkshop 0'
                        'IpAddress'      = '192.168.111.111'
                        'Prefix'         = 24
                        'Gateway'        = '192.168.111.50'
                        'DnsServer'      = , '192.168.111.10'
                        'DisableNetbios' = $true
                    }
                }
                'PSDscAllowPlainTextPassword' = $true
                'PSDscAllowDomainUser'        = $true
                'LcmConfig'                   = [ordered]@{'ConfigurationRepositoryWeb' = [ordered]@{'Server' = [ordered]@{'ConfigurationNames' = '[x={ $Node.NodeName }=]' } } }
                'DscTagging'                  = [ordered]@{'Layers' = , '[x={ Get-DatumSourceFile -Path $File } =]' }
                'Name'                        = 'DSCWeb02'
            }
        }
    }
}
