import 'package:flutter/material.dart';
import 'package:portfolio/ux/shared/resources/app_colors.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool isExpanded = false;
  int selectedIndex = 2;
  int? hoveredIndex; // Track which item is hovered

  final List<NavItem> navItems = [
    NavItem(icon: Icons.home, label: 'Home', pinned: true),
    NavItem(icon: Icons.person, label: 'About'),
    NavItem(icon: Icons.work, label: 'Projects', pinned: true),
    NavItem(icon: Icons.build, label: 'Toolstack', pinned: true),
    // NavItem(icon: Icons.article, label: 'Blogs', pinned: true),
    // NavItem(icon: Icons.shopping_bag, label: 'Shop'),
    NavItem(icon: Icons.music_note, label: 'Songs'),
    // NavItem(icon: Icons.games, label: 'Playground'),
    NavItem(icon: Icons.mail, label: 'Contact', pinned: true),
  ];

  @override
  Widget build(BuildContext context) {
    final displayItems =
        isExpanded ? navItems : navItems.where((item) => item.pinned).toList();
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: MouseRegion(
          onEnter: (_) => setState(() => isExpanded = true),
          onExit: (_) => setState(() => isExpanded = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            width: isExpanded ? 220 : 88,
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                displayItems.length,
                (index) {
                  final item = displayItems[index];
                  final originalIndex = navItems.indexOf(item);
                  return _buildNavItem(
                    item,
                    originalIndex,
                    isExpanded,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(NavItem item, int index, bool expanded) {
    final isHovering = hoveredIndex == index;

    return InkWell(
      onTap: () => setState(() => selectedIndex = index),
      borderRadius: BorderRadius.circular(20),
      onHover: (value) {
        setState(() {
          hoveredIndex = value ? index : null;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color:
              isHovering ? Colors.white.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Icon(
                item.icon,
                color: isHovering ? Colors.white : Colors.grey[600],
                size: 24,
              ),
              Positioned(
                left: 40,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: expanded ? 1.0 : 0.0,
                  child: Text(
                    item.label,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: isHovering
                              ? AppColors.white
                              : AppColors.darkTextGrey,
                          fontWeight:
                              selectedIndex == index ? FontWeight.bold : null,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem {
  final IconData icon;
  final String label;
  final bool pinned;

  NavItem({
    required this.icon,
    required this.label,
    this.pinned = false,
  });
}
