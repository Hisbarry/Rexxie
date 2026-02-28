# REXXIE - Security-First Development Agency

Production-grade full-stack application built with Next.js 14, Tailwind CSS, TypeScript, and modern best practices.

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ 
- npm 9+

### Installation

```bash
npm install
```

### Development

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

### Build for Production

```bash
npm run build
npm start
```

## 📁 Project Structure

```
REXXIE/
├── src/
│   ├── app/                 # Next.js App Router
│   │   ├── (marketing)/     # Marketing pages group
│   │   ├── api/             # API routes
│   │   ├── layout.tsx       # Root layout
│   │   ├── page.tsx         # Home page
│   │   └── globals.css      # Global styles
│   ├── components/          # React components
│   │   ├── ui/              # Base UI components
│   │   └── blocks/          # Section components
│   └── lib/                 # Utilities & helpers
├── public/                  # Static assets
├── DESIGN_SYSTEM.md         # Design tokens & specs
├── package.json
├── tailwind.config.ts       # Tailwind configuration
├── tsconfig.json            # TypeScript configuration
└── next.config.js           # Next.js configuration
```

## 🎨 Design System

See [DESIGN_SYSTEM.md](./DESIGN_SYSTEM.md) for:
- Color palette
- Typography scale
- Spacing system
- Component variants
- Accessibility standards
- Performance budgets

## 🛠️ Tech Stack

- **Framework**: Next.js 14 (App Router, Turbopack)
- **Styling**: Tailwind CSS 3.4 + custom components
- **Forms**: React Hook Form + Zod validation
- **Animations**: Framer Motion
- **Icons**: Lucide React
- **Language**: TypeScript
- **Auth**: NextAuth.js (configurable)
- **State**: Zustand (lightweight)

## 📊 Performance Targets

- FCP: < 1.2s
- LCP: < 2.5s
- TTI: < 3.8s
- CLS: < 0.1
- Bundle Size: < 200kb initial

## 🧪 Quality Assurance

```bash
# Type checking
npm run type-check

# Linting
npm run lint

# Format code
npm run format
```

## 📈 Phase Roadmap

### Phase 1: MVP (Current)
- ✅ Hero & service sections
- ✅ Design system foundation
- ✅ API health endpoint
- 🔄 Lead capture form
- 🔄 Email integration (Resend/Loops)

### Phase 2: Authentication & Portal
- [ ] NextAuth setup
- [ ] Client dashboard
- [ ] Project management portal
- [ ] Role-based access control

### Phase 3: Full Platform
- [ ] Backend API expansion
- [ ] Database schema (Supabase/PlanetScale)
- [ ] Advanced analytics
- [ ] Monitoring & logging

## 🔒 Security Checklist

- [x] No `any` types in TypeScript
- [x] No inline styles (Tailwind only)
- [x] CSP headers configured
- [x] XSS protection enabled
- [ ] Environment variables secured
- [ ] API rate limiting setup
- [ ] Input validation with Zod
- [ ] CSRF protection enabled

## 🚀 Deployment

### Vercel (Recommended)

```bash
npm install -g vercel
vercel login
vercel
```

### Environment Variables

Create `.env.local`:

```env
# API Configuration
NEXT_PUBLIC_API_URL=https://api.rexxie.com

# Authentication
NEXTAUTH_SECRET=your-secret-here
NEXTAUTH_URL=https://rexxie.com

# Optional: Third-party services
RESEND_API_KEY=your-resend-key
```

## 📝 Component Usage

### Button Component

```tsx
import { Button } from '@/components/ui'

export default function Example() {
  return (
    <>
      <Button variant="primary">Primary Action</Button>
      <Button variant="secondary">Secondary Action</Button>
      <Button variant="ghost">Ghost Action</Button>
      <Button size="lg" isLoading>Loading...</Button>
    </>
  )
}
```

### Card Component

```tsx
import { Card, CardHeader, CardContent } from '@/components/ui'

export default function Example() {
  return (
    <Card hover>
      <CardHeader>
        <h3>Card Title</h3>
      </CardHeader>
      <CardContent>
        Content goes here
      </CardContent>
    </Card>
  )
}
```

## 🎯 Best Practices

1. **Server Components First**: Use server components by default, mark interactive sections with `'use client'`
2. **Type Safety**: Leverage TypeScript strictly, no `any` types
3. **Performance**: Lazy load images, optimize bundles, use dynamic imports
4. **Accessibility**: Follow WCAG 2.1 AA standards, test with screen readers
5. **CSS**: Use Tailwind utilities, avoid custom CSS unless necessary
6. **Forms**: Use React Hook Form for validation, Zod for schemas

## 📞 Support & Contributing

For issues or feature requests, please create an issue on the project repository.

## 📄 License

Proprietary - REXXIE 2026
