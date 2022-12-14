function isOdd ($value) {
    $odd = $false;
    switch($value) {
        (1) {}
        (3) {}
        (5) {}
        (7) {}
        (9) { $odd = $true; break; }

        (2) {}
        (4) {}
        (6) {}
        (8) { $odd = $false; break; }
    }

    return $odd
}

isOdd(2)