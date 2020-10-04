# Positioning
position: static | relative | absolute | fixed;
top: measurement | percentage | auto;
right: measurement | percentage | auto;
bottom: measurement | percentage | auto;
left: measurement | percentage | auto;
z-index: integer | auto;

top/right/bottom/left : offset properties

z-index: sets the element's position in the stacking context, which defines how elements are layered "on top" of and "under" one another when they overlap. An element with a higher z-index value appears layered over one with a lower value.

position : static (default) - ignores the offset properties.
position : relative : positions the element offset from its default position while keeping the element's default position within the page flow.
position : absolute - positions elements at a specific place within the nearest ancestor that has a nonsatic position while removing the element from the page flow.
position : fixed: positions the element at a specific place within the browser viewport while removing the element from the page flow.



