# TT-006: Implement Collaboration Interaction Style

## Summary
Implement the visual representation for Collaboration interaction mode between teams.

## Description
Create the styling and visual elements for the Collaboration interaction mode, which represents close collaboration between teams. This should be visually distinct from other interaction types.

The collaboration interaction is best represented by visualizing overlapping teams, as shown in the Team Topologies book. In PlantUML, we'll implement this using bidirectional dashed arrows and a "Collaboration" label to indicate the relationship.

## Tasks
1. Define collaboration visual style (bidirectional dashed arrows)
2. Implement consistent color scheme (#757575 for lines)
3. Add proper "Collaboration" indicators/labels
4. Support custom interaction descriptions
5. Ensure clear bidirectional indication
6. Create example usage

## Acceptance Criteria
- [x] Collaboration interactions can be created using `Collaboration()` macro
- [x] Interaction is visually distinct from other types
- [x] Styling matches specification (#757575 for lines)
- [x] Interaction labels are properly positioned
- [x] Bidirectional nature is clearly indicated
- [x] Example usage is documented
- [x] Style scales appropriately with diagram size

## Dependencies
- TT-001: Basic PlantUML include file
- At least one team type implementation (TT-002 through TT-005)

## Estimated Effort
Medium (2-3 days)

## Implementation Notes
- The visual style draws inspiration from the Team Topologies book, which shows collaboration as overlapping circles/teams
- In PlantUML, this is implemented using bidirectional dashed arrows with a collaboration label
- The implementation provides two macros:
  - `Collaboration($from, $to)` - Basic collaboration without custom label
  - `Collaboration($from, $to, $label)` - Collaboration with descriptive label