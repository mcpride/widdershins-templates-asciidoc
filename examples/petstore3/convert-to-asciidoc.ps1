# Invoke-Expression "npm install -d widdershins"

$buildDocArgs = 
@(
    "--verbose",
    "--user_templates ../../templates/openapi3",
    # "--expandBody true",
    "--omitHeader true",
    "--language_tabs ""shell:Shell""",
    "--language_tabs ""javascript:Javascript""",
    "--",
    """petstore3.json""",
    """petstore3.adoc"""
 )
Invoke-Expression "npx widdershins $buildDocArgs"

exit $LASTEXITCODE;