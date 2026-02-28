# Phase 0: Visual Discovery Checklist

## Visual Strategy Documentation

This checklist ensures complete visual and UX strategy before Phase 1 implementation.

---

## 1. Brand Visual System ✅

### Color Psychology & Application

**Primary (Trust & Authority)**
- **Primary-600 (#0284c7)**: CTA buttons, important actions, brand highlight
- **Psychology**: Conveys trust, security, technical competence
- **Usage**: Hero buttons, navigation highlights, hover states

**Accent (Action & Energy)**
- **Accent-600 (#db2777)**: Secondary CTAs, micro-interactions
- **Psychology**: Draws attention, creates urgency
- **Usage**: Forms focus states, hover states on secondary elements

**Neutral (Professional Foundation)**
- **Neutral-50 to Neutral-900**: Text hierarchy, backgrounds
- **Hierarchy**: 
  - Headlines: Neutral-900
  - Body: Neutral-600
  - Meta: Neutral-500
  - Disabled: Neutral-400

### Color Contrast Verification
- [ ] Headline text on all backgrounds: 9:1+ contrast
- [ ] Body text: 4.5:1+ contrast (WCAG AA)
- [ ] Interactive elements: 3:1+ contrast minimum
- [ ] Focus indicators: Clearly visible on all backgrounds

### Visual Brand Language
- **Approach**: Clean minimalism + purposeful motion
- **Aesthetic**: Modern, trustworthy, technical-but-accessible
- **Competitors to differentiate from**:
  - Overly corporate (avoid sterile enterprise look)
  - Overly startup-y (avoid excessive motion/neon)
  - Generic SaaS (need unique visual identity)

---

## 2. Component Visual Hierarchy ✅

### Hero Section Z-Pattern
```
[Logo/Nav]
[Headline - focal point]
[Subheadline]
[Primary CTA ← Eye path starts here
[Social Proof Below]
```

- [ ] Headline is 3-5x larger than body
- [ ] Whitespace around hero elements (not cramped)
- [ ] Hero takes up 60-70% of viewport height
- [ ] Primary CTA color stands out dramatically

### Section Structure
Every section should follow:
1. **Focal Point** (headline, image, or large element)
2. **Supporting Context** (2-3 sentences max)
3. **Clear CTA** (button or link)
4. **Whitespace** (breathing room)

- [ ] No sections feel cramped (min 16px padding)
- [ ] Clear visual separation between sections (64px gap)
- [ ] Consistent heading hierarchy (H1 > H2 > H3)

### Card Design
- [ ] Border: 1px Neutral-200 (subtle, not harsh)
- [ ] Padding: 24px (consistent 4px grid multiples)
- [ ] Hover effect: Border → Primary-300, shadow increase
- [ ] Shadow depth: sm (default) → md (hover) → lg (active)

---

## 3. Typography Hierarchy ✅

### Font Scale Verification
- [ ] H1 (40px): Page titles, hero headlines only
- [ ] H2 (32px): Major section headers
- [ ] H3 (24px): Subsection/card titles
- [ ] Body (16px): Primary reading text
- [ ] Small (14px): Secondary, meta information
- [ ] Captions (12px): Labels, timestamps

### Line Height & Spacing
- [ ] Headlines: 1.2x line height (tight for impact)
- [ ] Body: 1.6x line height (readable, not cramped)
- [ ] Margin between elements: Consistent multiples (8px, 16px, 24px)

### Font Weights
- [ ] Regular (400): Body copy
- [ ] Semibold (600): Emphasis, labels
- [ ] Bold (700): Headlines only

---

## 4. Responsive Breakpoint Behavior

### Mobile (320px - 767px)
- [ ] Stack all sections vertically
- [ ] CTAs: Full-width (48px padding on sides)
- [ ] Hero headline: Readable (not overflowing)
- [ ] Cards: Single column
- [ ] Touch targets: Minimum 44x44px

### Tablet (768px - 1023px)
- [ ] Two-column layouts emerge
- [ ] Hero: May show image on right
- [ ] Cards: 2-column grid
- [ ] Spacing: Slightly more breathing room

### Desktop (1024px+)
- [ ] Full layouts, 3+ column grids
- [ ] Hero: Dual-column (text left, visual right)
- [ ] Cards: 3+ column grids
- [ ] Max-width container: 1280px (prevents reading line too long)

### Responsive Testing
- [ ] Mobile (iPhone 12): 390x844
- [ ] Tablet (iPad): 768x1024
- [ ] Desktop (1440p): 1440x900
- [ ] Ultrawide (2560p): 2560x1440
- [ ] Tablet landscape orientation
- [ ] Mobile landscape orientation

---

## 5. Interaction Design & Micro-interactions

### Button States
- [ ] **Default**: Primary-600 background, white text
- [ ] **Hover**: Primary-700 (darker), scale 102%
- [ ] **Active**: Primary-800, scale 98%
- [ ] **Disabled**: 50% opacity, cursor not-allowed
- [ ] **Focus**: 2px ring, 2px offset (keyboard nav)

### Form Interactions
- [ ] **Focus state**: Input border Primary-500, label color Primary-600
- [ ] **Valid**: Green checkmark, border Primary-500
- [ ] **Error**: Red border, error message below field
- [ ] **Loading**: Spinner overlay, form disabled
- [ ] **Success**: Brief success message (3-4 sec fade)

### Scroll Animations
- [ ] **Fade-in**: Elements fade in as they enter viewport
- [ ] **Slide-up**: Cards/sections slide up from below
- [ ] **Stagger**: Multiple elements animate with 100ms delay
- [ ] **No motion**: Respect `prefers-reduced-motion`

### Animation Timing
- [ ] **Micro (200ms)**: Hover states, quick feedback
- [ ] **Standard (300ms)**: Page transitions
- [ ] **Entrance (500ms)**: Hero animations, section reveals
- [ ] **Easing**: ease-out for natural feel

---

## 6. Asset Strategy & Optimization

### Images
- [ ] Format: WebP primary, PNG/JPEG fallback
- [ ] Sizes: Multiple srcsets for responsive delivery
- [ ] LQIP: Low-quality image placeholder (blur while loading)
- [ ] Dimensions: Always set width/height (prevent CLS)
- [ ] Lazy loading: `loading="lazy"` for below-fold images
- [ ] Compression: < 100KB each (target < 50KB for thumbnails)

### Icons
- [ ] Set: Lucide React (consistent system)
- [ ] Stroke weight: 1.5px (uniform weight)
- [ ] Sizes: 16px (small), 24px (medium), 32px (large)
- [ ] Color: Inherit from text color or explicitly set
- [ ] Accessibility: Icon buttons need `aria-label`

### Illustrations (If Used)
- [ ] Style consistency: All from same artist/tool
- [ ] Format: SVG for crispness, optimize with SVGO
- [ ] Color palette: Match brand colors
- [ ] Complexity: Minimal detail, maximum impact

---

## 7. Visual Performance & Accessibility

### Performance Targets
- [ ] **FCP (First Contentful Paint)**: < 1.2s
- [ ] **LCP (Largest Contentful Paint)**: < 2.5s
- [ ] **CLS (Cumulative Layout Shift)**: < 0.1
- [ ] **TTI (Time to Interactive)**: < 3.8s

### Core Web Vitals Verification
- [ ] Run Lighthouse audit (target 90+)
- [ ] Check PageSpeed Insights
- [ ] Test on slow 4G connection
- [ ] Mobile performance: Priority

### Accessibility Compliance (WCAG 2.1 AA)
- [ ] **Color Contrast**: 4.5:1 minimum (7:1 for AAA)
- [ ] **Focus Visible**: All interactive elements
- [ ] **Keyboard Navigation**: Tab through all interactive elements
- [ ] **Screen Reader**: Test with NVDA or VoiceOver
- [ ] **Reduced Motion**: Respects user preference
- [ ] **Touch Targets**: 44x44px minimum
- [ ] **Alt Text**: Descriptive for all images
- [ ] **Semantic HTML**: Proper heading, nav, main elements

---

## 8. Visual QA Checklist

### Desktop QA
- [ ] Chrome/Edge (Chromium)
- [ ] Firefox
- [ ] Safari
- [ ] All at 1440p resolution

### Mobile QA
- [ ] iOS Safari (iPhone 12/14/latest)
- [ ] Chrome Mobile (Android)
- [ ] Edge Mobile
- [ ] Landscape orientation

### Specific Component QA
- [ ] Buttons: All states (default, hover, active, disabled, loading)
- [ ] Forms: All states (empty, focus, filled, error, success)
- [ ] Cards: With/without hover effect
- [ ] Navigation: Mobile menu open/closed
- [ ] Images: Loaded, placeholder, error state

### Visual Regression Testing
- [ ] Screenshots at breakpoints saved
- [ ] Compare against design mockups
- [ ] No unexpected layout shifts
- [ ] Colors match design system exactly

---

## 9. Conversion Optimization

### Trust Signals Placement
- [ ] **Hero Section**: 1-2 trust indicators visible
  - [ ] Company logo/badge
  - [ ] Brief credential/award
  - [ ] Social proof (testimonial or stat)

- [ ] **CTA Button**: Clear, contrasting, above fold
  - [ ] Primary color (Primary-600 minimum)
  - [ ] Compelling copy ("Get Started" > "Submit")
  - [ ] Micro-copy below button (e.g., "No credit card required")

- [ ] **Contact Form**: Visible, simple, trustworthy
  - [ ] SSL indicator/lock symbol
  - [ ] Privacy statement below form
  - [ ] Form field count: 5 fields max

### CTA Color Psychology
- [ ] Primary CTA: Primary-600 (trust, authority)
- [ ] Secondary CTA: Neutral-100 (lower friction)
- [ ] Hover state: +1 shade darker
- [ ] Contrast check: 4.5:1 minimum

### Visual Hierarchy for Conversion
- [ ] Headline: Largest, most prominent
- [ ] Subheading: 60% size of headline
- [ ] Body copy: 40% size of headline
- [ ] CTA: Visually dominant, not buried

---

## 10. Brand Consistency Across Pages

### Visual Audit Across All Pages
- [ ] Typography: Consistent scale across pages
- [ ] Colors: Match design system exactly
- [ ] Spacing: Consistent 4px grid multiples
- [ ] Component styles: Buttons, cards, forms identical
- [ ] Navigation: Consistent positioning & styling
- [ ] Footer: Present on all pages, consistent
- [ ] Animations: Consistent timing & easing

### Asset Consistency
- [ ] Icon sizes: Same across sections
- [ ] Image aspect ratios: Consistent (1:1, 16:9, etc.)
- [ ] Border radius: Consistent (12px for components)
- [ ] Shadow depth: Consistent (sm/md/lg scale)

---

## Sign-Off

**Visual Discovery Complete**: _______________
**Date**: _______________
**Verified By**: _______________

### Next Steps
→ Proceed to Phase 1: Component Implementation
→ Reference this checklist during QA
→ Update DESIGN_SYSTEM.md if deviations discovered
