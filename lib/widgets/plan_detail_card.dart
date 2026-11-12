import 'package:flutter/material.dart';

// Adjust this import to match your actual folder structure.
import '../../core/theme/app_colors.dart';

/// A collapsible "your plan" summary. Collapsed by default so the
/// subjects/practices grid stays the focus of the screen — the full
/// pricing and feature list is one tap away, not shoved in front of
/// what the user actually came here to do.

/// A collapsible "your plan" summary. Collapsed by default so the
/// subjects/practices grid stays the focus of the screen — the full
/// pricing and feature list is one tap away, not shoved in front of
/// what the user actually came here to do.

// class PlanDetailsCard extends StatefulWidget {
//   final String planLabel;
//   final String summary;
//   final Color accent;
//   final Color accentSoft;
//   final Color accentDark;
//   final List<String> features;

//   const PlanDetailsCard({
//     super.key,
//     required this.planLabel,
//     required this.summary,
//     required this.accent,
//     required this.accentSoft,
//     required this.accentDark,
//     required this.features,
//   });

//   @override
//   State<PlanDetailsCard> createState() => _PlanDetailsCardState();
// }

// class _PlanDetailsCardState extends State<PlanDetailsCard> {
//   bool _expanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: widget.accentSoft,
//         borderRadius: BorderRadius.circular(18),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           InkWell(
//             borderRadius: BorderRadius.circular(18),
//             onTap: () => setState(() => _expanded = !_expanded),
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Row(
//                 children: [
//                   Icon(Icons.workspace_premium_rounded, color: widget.accentDark, size: 20),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Your plan: ${widget.planLabel}',
//                           style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w800, color: widget.accentDark),
//                         ),
//                         const SizedBox(height: 2),
//                         Text(
//                           widget.summary,
//                           style: TextStyle(fontSize: 12, color: widget.accentDark.withOpacity(0.8)),
//                         ),
//                       ],
//                     ),
//                   ),
//                   AnimatedRotation(
//                     turns: _expanded ? 0.5 : 0,
//                     duration: const Duration(milliseconds: 200),
//                     child: Icon(Icons.keyboard_arrow_down_rounded, color: widget.accentDark),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           AnimatedCrossFade(
//             duration: const Duration(milliseconds: 200),
//             crossFadeState: _expanded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
//             firstChild: Padding(
//               padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: widget.features
//                     .map(
//                       (feature) => Padding(
//                         padding: const EdgeInsets.only(bottom: 8),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Icon(Icons.check_circle_rounded, size: 15, color: widget.accent),
//                             const SizedBox(width: 8),
//                             Expanded(
//                               child: Text(
//                                 feature,
//                                 style: const TextStyle(fontSize: 12.5, height: 1.4, color: AppColors.ink),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                     .toList(),
//               ),
//             ),
//             secondChild: const SizedBox(width: double.infinity),
//           ),
//         ],
//       ),
//     );
//   }
// }


class PlanDetailsCard extends StatefulWidget {
  final String planLabel;
  final String summary;
  final Color accent;
  final Color accentSoft;
  final Color accentDark;
  final List<String> features;
final String? introText;
final List<String> introPoints;
final String? highlightedIntroPoint;
  const PlanDetailsCard({
    super.key,
    required this.planLabel,
    required this.summary,
    required this.accent,
    required this.accentSoft,
    required this.accentDark,
    required this.features,
    this.introText,
this.introPoints = const [],
this.highlightedIntroPoint,
  });

  @override
  State<PlanDetailsCard> createState() => _PlanDetailsCardState();
}

class _PlanDetailsCardState extends State<PlanDetailsCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.accentSoft,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Plan header
          InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: () => setState(() => _expanded = !_expanded),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    Icons.workspace_premium_rounded,
                    color: widget.accentDark,
                    size: 22,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
  widget.planLabel,
  style: TextStyle(
    fontSize: 13.5,
    fontWeight: FontWeight.w800,
    color: widget.accentDark,
  ),
),
                        const SizedBox(height: 4),
                        Text(
                          widget.summary,
                          style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
                            color: widget.accentDark.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AnimatedRotation(
                    turns: _expanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: widget.accentDark,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Expandable plan details
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 200),
            crossFadeState: _expanded
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            firstChild: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
// INTRO SECTION
if (widget.introText != null) ...[
  // First point with tick icon
  Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.check_circle_rounded,
          size: 15,
          color: widget.accent,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            widget.introText!,
            style: const TextStyle(
              fontSize: 12.5,
              height: 1.45,
              color: AppColors.ink,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
  ),

  // Sub-points with slightly indented bullets
  Padding(
    padding: const EdgeInsets.only(left: 23),
    child: Column(
      children: widget.introPoints.map((point) {
        final isHighlighted =
            point == widget.highlightedIntroPoint;

        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 7,
                height: 7,
                margin: const EdgeInsets.only(top: 6),
                decoration: BoxDecoration(
                  color: widget.accent,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  point,
                  style: TextStyle(
                    fontSize: 12.5,
                    height: 1.45,
                    color: AppColors.ink,
                    fontWeight:
                         FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    ),
  ),
],
                  
                  ...widget.features.map(
                    (feature) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_circle_rounded,
                            size: 15,
                            color: widget.accent,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              feature,
                              style: const TextStyle(
                                fontSize: 12.5,
                                height: 1.45,
                                color: AppColors.ink,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                 
                ],
              ),
            ),
            secondChild: const SizedBox(
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
