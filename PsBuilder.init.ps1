@echo off
echo "PsBuilder - Version 0.1 Beta."
echo "© 2022 PsBuilder and contributors. All rights reserved."
echo "Use of this application is governed by a BSD license in the BSD3 file."
echo ""
echo "Build started."
using (PowerShell ps = PowerShell.Create())

{

    ps

        .AddScript(scriptString)

        .AddCommand("Out-String");

    var result = ps.Invoke();

    foreach (var line in result)

    {

        Console.WriteLine(line);

    }

}
