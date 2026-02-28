/**
 * Design System Documentation
 * Centralized reference for all design tokens and component patterns
 */

# REXXIE Design System v1.0

## Color Palette

### Primary Colors (Trust & Authority)
- **Primary-50**: #f0f9ff (Lightest)
- **Primary-600**: #0284c7 (Brand Primary)
- **Primary-700**: #0369a1 (Interactive Hover)
- **Primary-900**: #0c3d66 (Darkest)

### Accent Colors (Action & Energy)
- **Accent-500**: #ec4899 (CTA Highlight)
- **Accent-600**: #db2777 (Hover State)

### Neutral Colors (Text & Backgrounds)
- **Neutral-50**: #f9fafb (Background)
- **Neutral-100**: #f3f4f6 (Cards)
- **Neutral-600**: #4b5563 (Body Text)
- **Neutral-900**: #111827 (Headlines)

## Typography

### Scale (Pixel-based)
- **XL**: 40px - Page titles, hero headlines
- **LG**: 32px - Section headers
- **MD**: 24px - Subsection headers
- **SM**: 18px - Card titles
- **Base**: 16px - Body copy, default
- **SM**: 14px - Secondary text
- **XS**: 12px - Labels, captions

### Font Stack
```css
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 
             Roboto, 'Helvetica Neue', Arial, sans-serif;
```

### Font Weights
- **400**: Regular text, default
- **600**: Semibold, emphasis
- **700**: Bold, headlines

## Spacing System (4px Grid)

```
xs:  4px    (0.25rem)
sm:  8px    (0.5rem)
md:  16px   (1rem)
lg:  24px   (1.5rem)
xl:  32px   (2rem)
2xl: 48px   (3rem)
3xl: 64px   (4rem)
```

## Component Variants

### Buttons

#### Primary Button
- Background: Primary-600
- Hover: Primary-700
- Size options: sm (small), md (medium), lg (large)
- Always includes focus ring for accessibility

#### Secondary Button
- Background: Neutral-100
- Hover: Neutral-200
- Used for non-primary actions

#### Ghost Button
- Background: Transparent
- Border: Neutral-300
- Used for tertiary actions or links

### Cards

- Border: 1px Neutral-200
- Padding: 24px
- Border Radius: 12px
- Shadow: Small (hover: medium)
- Hover effect: Border to Primary-300, shadow increase

## Animation Timing

- Fast: 200ms (hover states, micro-interactions)
- Normal: 300ms (standard transitions)
- Slow: 500ms (entrance animations, reveals)
- Easing: ease-out for transitions, custom springs for Framer Motion

## Accessibility

- **Minimum Contrast**: 4.5:1 (WCAG AA)
- **Focus Indicators**: Always visible, 2px ring offset 2px
- **Reduced Motion**: Respects `prefers-reduced-motion` media query
- **Touch Targets**: Minimum 44x44px (mobile buttons)

## Performance Budgets

- **First Contentful Paint (FCP)**: < 1.2s
- **Largest Contentful Paint (LCP)**: < 2.5s
- **Time to Interactive (TTI)**: < 3.8s
- **Cumulative Layout Shift (CLS)**: < 0.1
- **Initial Bundle**: < 200kb

## Responsive Breakpoints

```
Mobile:  320px  (default)
Tablet:  768px  (md:)
Desktop: 1024px (lg:)
Wide:    1440px (xl:)
```

## Icon System

- **Set**: Lucide React
- **Stroke Weight**: 1.5px (consistency)
- **Sizes**: 16px (sm), 24px (md), 32px (lg)
- **Color**: Inherit from parent (primary for CTAs, neutral for content)

## Visual Language

- **Approach**: Clean minimalism with purposeful motion
- **Depth**: Subtle shadows (not flat, not skeuomorphic)
- **Curves**: 12px border-radius standard (12px on components, 4px on icons)
- **Whitespace**: Intentional breathing room, never cramped
- **Imagery**: High-quality, optimized WebP with LQIP fallbacks
