try {
    $projects = oc projects -q
    if ($projects) {
        oc project $($projects | fzf --height 40%)
    }
    else {
        Write-Host "No projects available. Are you logged in?"
    }
}
catch {
    Write-Host "An error occurred: $_"
}