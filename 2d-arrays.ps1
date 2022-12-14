$array = @("a", "b", "c")

$array[0]

$array2 = @(
    @("O", "O", "O"), 
    @("O", "X", "O"), 
    @("O", "O", "O")
)

for ($i = -1; $i -le 1; $i++) {
    for ($j = -1; $j -le 1; $j++) {
        "$i $j"
    }   
}