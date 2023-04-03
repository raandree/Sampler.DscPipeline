Import-Module -Name Sampler.DscPipeline -Force

InModuleScope -ModuleName Datum {

    $here = $PSScriptRoot
    $projectPath = "$here\..\.." | Convert-Path

    Describe 'Split-Array' {

        Context 'By MaxChunkSize' {

            $testCases = 1..100 | ForEach-Object {
                @{
                    MaxListCount = 100
                    MaxChunkSize = $_
                }
            }

            $testCases += 1..200 | ForEach-Object {
                @{
                    MaxListCount = 10000
                    MaxChunkSize = Get-Random -Minimum 1 -Maximum 500
                }
            }

            It "Splits list of <MaxListCount> items correctly into n chunks of MaxChunkSize <MaxChunkSize>." -TestCases $testCases {
                param ($MaxListCount, $MaxChunkSize)

                $expectedCount = [System.Math]::Ceiling($MaxListCount / $MaxChunkSize)

                if ($MaxChunkSize -eq $MaxListCount)
                {
                    { Split-Array -List (1..$MaxListCount) -MaxChunkSize $MaxChunkSize } | Should -Throw -ExceptionType 'System.Management.Automation.MetadataException'
                }
                else
                {
                    $result = Split-Array -List (1..$MaxListCount) -MaxChunkSize $MaxChunkSize
                    $result.Count | Should -Be $expectedCount

                ($result | ForEach-Object { $_ } | Measure-Object).Count | Should -Be $MaxListCount
                }
            }
        }

        Context 'By ChunkCount' {

            $testCases = 1..100 | ForEach-Object {
                @{
                    MaxListCount = 100
                    ChunkCount   = $_
                }
            }

            $testCases += 1..200 | ForEach-Object {
                @{
                    MaxListCount = 10000
                    ChunkCount   = Get-Random -Minimum 1 -Maximum 500
                }
            }

            It "Splits list of <MaxListCount> items correctly into <ChunkCount> chunks." -TestCases $testCases {
                param ($MaxListCount, $ChunkCount)

                if ($ChunkCount -eq 1)
                {
                    { Split-Array -List (1..$MaxListCount) -ChunkCount $ChunkCount } | Should -Throw -ExceptionType 'System.Management.Automation.ParameterBindingException'
                }
                else
                {
                    $result = Split-Array -List (1..$MaxListCount) -ChunkCount $ChunkCount
                    $result.Count | Should -Be $ChunkCount

                ($result | ForEach-Object { $_ } | Measure-Object).Count | Should -Be $MaxListCount
                }
            }
        }

    }

}
