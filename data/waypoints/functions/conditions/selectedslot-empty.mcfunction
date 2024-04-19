# if selected item slot is not empty
execute if data entity @s SelectedItem run return 0

# if selected item slot is empty
execute unless data entity @s SelectedItem run return 1