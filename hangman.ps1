$correct = (Read-Host "Enter a word to guess").ToCharArray()
$guessed = @()

$misses = 0

Write-Host "Hangman"

$hangmanArt = (@"
+---+
|   |
    |
    |
    |
    |
=========
"@, 
@"
+---+
|   |
O   |
    |
    |
    |
=========
"@,
@"
 +---+
 |   |
 O   |
 |   |
     |
     |
=========
"@,
@"
 +---+
 |   |
 O   |
/|   |
     |
     |
=========
"@,
@"
 +---+
 |   |
 O   |
/|\  |
     |
     |
=========
"@, 
@"
 +---+
 |   |
 O   |
/|\  |
/    |
     |
=========
"@, 
@"
 +---+
 |   |
 O   |
/|\  |
/ \  |
     |
=========
"@)

$maxMisses = $hangmanArt.Length;

# Loop until the player has won or lost
while($misses -lt $maxMisses -and ($correct | Where-Object {$guessed -notcontains $_}).Length -gt 0)
{
    # Show the current progress
    foreach($char in $correct)
    {
        if($guessed -contains $char)
        {
            Write-Host $char -ForegroundColor Green -NoNewLine
        }
        else
        {
            Write-Host "_" -ForegroundColor Red -NoNewLine
        }
    }

    Write-Host ""
    Write-Host $hangmanArt[$misses]

    # Get the next guess
    $guess = Read-Host "Guess a letter"

    
    if($guess.Length -gt 1 -or $guess.Length -lt 1)
    {
        Write-Host "Invalid guess" -ForegroundColor Red
    }
    elseif ($guessed -contains $guess) {
        Write-Host "You've already guessed $guess" -ForegroundColor Red
    }
    else
    {
        if (!($correct -contains $guess)) {
            $misses++;
        }

        $guessed += $guess;
    }
}

# Show the result
if($misses -ge $maxMisses)
{
    Write-Host "You lost!"
}
else
{
    Write-Host "You won!"
}