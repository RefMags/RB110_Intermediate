shelter = { meagan: ["rock", "zombie"], noah: ["lou", "seal", "tipper"], ammie: ["skip"] }
# shelter.sort.to_h

p shelter.sort {|a, b| p (a[1].size <=> b[1].size) }

=begin
  - The `shelter` variable is initialized with name symbols as keys (:meagan, :noah and :ammie)
   and array of strings as values. The `sort` method is called on the `shelter` hash.

  - The `sort` method is called on the `shelter` hash. It converts `shelter` into an
  array of pairs: [[:meagan, ["rock", "zombie"]], [:noah, ["lou", "seal", "tipper"]],
  [:ammie, ["skip"]]] and sorts them using a block.

  - Inside the block,
    - `a[1]` and `b[1]` access the array values of each pair.
    - `a[1].size <=> b[1].size` compares their size
      - Returns `-1` if `a[1].size < b[1].size`(a comes before b)
      - Returns `0` if `a[1].size == b[1].size` (no change in order, equal size)
      - Returns `1` if `a[1].size > b[1].size` (b comes before a)
    - This sorts the pairs by array size in ascending order`:ammie` (array size 1)
  comes first, then `:meagan` (size 2), then `:noah` (size 3)

  - The `sort` method returns a new array of the ordered items:
  [[:ammie, ["skip"]], [:meagan, ["rock", "zombie"]], [:noah, ["lou", "seal", "tipper"]]]



=end
