# CSS Grid

Grid Cells - rectangle column (at the intersection of columsn and rows)
Grid Columns
Grid Rows
Grid Tracks: columns and rows collectively (space between two grid lines)
Grid Lines: runs the whole length or width of the layout
Grid areas: arbitrary rectangular sections of the grid
Grid items: items positioned in the grid area (like article, side navigation, picture, etc.)
Gap : or gutter (print world): space between grid cells.
Margin: surround the whole grid



## Grid definition
[grid container] {
  display: grid; // changes all of contained elements into grid items

  grid-template-columns: 200px 200px; // takes in width of our columns / track sizes
  // 200px 200px: creates two columns
  // 200px auto 200px: using "auto" as the width for a column tells the width can be as large as it needs to be to fill the space grid has access to


}

Default  grid settings make one column and one row grid.


## Positioning Grid items
By default a grid item takes one column.

[grid item] {
  grid-column-start: 1; // takes in a grid line number the gird items should start at. Grid line nubmer starts at 1.

  grid-column-end: 4;
}


## Grid Rows - Implicit Grid
- Implicit Grid: By default rows are created automatically based on number of grid items and columns (defined by grid-template-columns). Every row takes as much height as it needs to fill the content.

- Explicit Grid
[grid container] {
  grid-template-rows: min-content auto min-content; // takes in grack sizes, defines the number of rows and their heights
  // min-cotent: large enough to hold the content and no larger
}


## grid-template-columns
can be defined in fixed size (like px, em, etc.) or percentages

- 25em auto 25em; // center grid track takes up the remaining width
- 25em auto auto; // last two traks take up the remaining widht equally
- 25em 1fr 1fr; // same as above (fr: fractional unit)
- 50% 50%; // two tracks of equal size
- 1fr 1fr; // same as above (useful when percentage becomes little complex, like using 6 tracks all of 16.66% )
- 1fr min-content 1fr; // min-content: text -> width of largest word.
- 1fr max-content 1fr; // max-content: text -> width of largest line.
- 1fr minmax(max-content, 50%) 1fr; minmax(min size, max size)
- 1fr fitcontent() 1fr; fitcontent(max size); fit the track size to the content, but don't allow to go above the value specified

Viewport-responsive
- Percentage
- fr
- auto

Content-responsive
- min-content
- max-content
- fit-content()


## Grid shorthands
- grid-template-column: repeat(3, 20em); repeat(number of repetitions, track sizes),  same as "20em 20em 20em"
- repeat(2, 1fr 2fr); same as "1fr 2fr 1fr 2fr"
- repeat(auto-fill, 10em); columns are dynamically filled in response to size of view-port
- repeat(auto-fit, minmax(15em, 1fr)); Same as auto-fill, but when there is empty space (column), fills the width of viewport, doesn't create empty columns


- grid-template: 12em 8em 3em / repeat(4, 1fr); row track size / column track sizes (same as defining grid-template-columns and grid-template-rows)
- grid: 12em 8em 3em / repeat(4, 1fr); // same as above


## Grid flow
grid-auto-flow: row (default) | column
row: grid items flow left to right on rows


## Implicit Grid
Implicit Grid: Rows/Columns auto-created to accomodate grid items (for eg if you define 2 rows and 2 columns, but you have 5 grid items)
Explicit Grid: columns/rows that you define yourself.

grid-auto-rows: 10em; size of any implicitly-created rows (default: auto)
grid-auto-columns: 10em; (works when grid-auto-flow: column)


grid: auto-flow 10em / 10em 10em; // implicit+excplicit rows: all of 10em

## Gaps / Gutter
grid-column-gap: 1em;
grid-row-gap: 1em;
grid-gap: 1em 1em; grid-row-gap and grid-column-gap



