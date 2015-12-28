"""
This is an implementation of a castle siege on a rectangular map. Enemies attempt to reach the castle at the top of the map, while towers attempt to fend them off.

Each round of the game has the following three phases:

1. Each tower targets a single enemy within a 5×5 square centred on itself, if any.

Towers prioritise targets by the following criteria, in order of precedence. Each criteria is used to break ties of the above criteria.

Criteria:
1. The enemy furthest NORTH
2. The enemy closest to the tower
3. The enemy furthest EAST

2. Each enemy's HP is reduced by the number of towers that targeted it. Then, each enemy that has 0 or less HP is DESTROYED. Then, if no enemies remain, the player WINS.

3. Each enemy moves NORTH one cell. If an enemy moves into a tower this way, the enemy is DESTROYED. If an enemy moves off the top of the map, the player LOSES.

You must output WIN/LOSE followed by the round number when the game ended.

INPUT:
Line 1: The width W and the height H of the map.
Next H Lines: Strings W characters long, representing entities in each cell of the initial state of the map. Entities are represented by the following characters:
. Empty Space
N An enemy with N HP
T A Tower

OUTPUT:
A single line containing the WIN/LOSE state of the game State (either 'WIN' or 'LOSE') followed by the round number R (starting from 1) when the game ended.

CONSTRAINTS:
0 ≤ N ≤ 9
1 ≤ W, H ≤ 8

EXAMPLE:
Input
6 4
.T....
......
...3..
......
"""
class EnemyWinError(Exception):
    pass


def main():
    w, h = [int(i) for i in input().split()]
    grid = [list(input()) for _ in range(h)]
    result = play(grid)
    print(' '.join(str(x) for x in result))


def play(grid):
    result = 'WIN'
    num_rounds = 0
    while not all(x in '.T' for row in grid for x in row):
        num_rounds += 1
        targets = get_tower_targets(grid)
        grid = remove_hp(grid, targets)
        try:
            grid = move_enemies(grid)
        except EnemyWinError:
            result = 'LOSE'
    return (result, num_rounds)


def get_tower_targets(grid):
    # TODO: Needs implementation.
    return []


def get_towers(grid):
    for row_idx, row in enumerate(grid):
        for col_idx, cell in enumerate(row):
            if cell != 'T':
                continue
            yield (row_idx, col_idx)


def get_enemies(grid):
    for row_idx, row in enumerate(grid):
        for col_idx, cell in enumerate(row):
            if cell in '.T':
                continue
            yield (row_idx, col_idx)


def remove_hp(grid, targets):
    for row_idx, col_idx in targets:
        hp = int(grid[row_idx][col_idx])
        hp -= 1
        grid[row_idx][col_idx] = str(hp)
    return grid


def move_enemies(grid):
    for row_idx, col_idx in get_enemies(grid):
        hp = grid[row_idx][col_idx]
        grid[row_idx][col_idx] = '.'
        row_idx -= 1
        if row_idx < 0:
            raise EnemyWinError
        if grid[row_idx][col_idx] == 'T':
            # Dies if hits tower.
            continue
        grid[row_idx][col_idx] = hp
    return grid


if __name__ == '__main__':
    main()
