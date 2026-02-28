# 🚀 Deployment & Pre-Launch Checklist

Complete this checklist before pushing to production.

---

## Phase 1: Pre-Launch Verification

### Code Quality
- [ ] `npm run lint` passes (no ESLint errors)
- [ ] `npm run type-check` passes (no TypeScript errors)
- [ ] `npm run build` succeeds (no build errors)
- [ ] No `console.log()` in production code
- [ ] No TODO comments remaining
- [ ] All dependencies are used

### Performance
- [ ] Lighthouse score 90+ (all categories)
- [ ] FCP < 1.2s (First Contentful Paint)
- [ ] LCP < 2.5s (Largest Contentful Paint)
- [ ] CLS < 0.1 (Cumulative Layout Shift)
- [ ] TTI < 3.8s (Time to Interactive)
- [ ] Bundle size < 200kb

**How to check**:
```bash
npm run build
npm start
# Open http://localhost:3000
# Run Lighthouse in DevTools (F12 → Lighthouse)
```

### Functionality
- [ ] Homepage loads without errors
- [ ] All buttons/CTAs work
- [ ] Forms submit successfully
- [ ] API endpoints respond correctly
- [ ] Mobile navigation works
- [ ] No broken links

### Responsiveness
- [ ] Mobile (320px): Readable, functional
- [ ] Tablet (768px): Proper layout
- [ ] Desktop (1440px): Full layout
- [ ] Landscape orientation works
- [ ] Touch targets 44x44px+ (mobile)

### Accessibility
- [ ] WCAG 2.1 AA compliant
- [ ] Color contrast 4.5:1 minimum
- [ ] Focus indicators visible
- [ ] Keyboard navigation works (Tab)
- [ ] Screen reader friendly (test with NVDA/VoiceOver)
- [ ] No alt text missing on images
- [ ] Form labels properly associated

### SEO & Metadata
- [ ] Title tag: Descriptive (< 60 chars)
- [ ] Meta description: Compelling (< 160 chars)
- [ ] OG image: 1200x630px optimized
- [ ] Schema.org markup: Organization, WebSite, Service
- [ ] XML sitemap: `/sitemap.xml`
- [ ] Robots.txt: Configured
- [ ] Favicon: Multiple sizes (32px, 180px, SVG)

### Security
- [ ] No secrets in code (check .env.example)
- [ ] CSP headers configured
- [ ] X-Frame-Options set
- [ ] X-Content-Type-Options set
- [ ] No external scripts without SRI
- [ ] HTTPS enforced
- [ ] Dependencies scanned (npm audit)

### Analytics & Monitoring
- [ ] Google Analytics configured
- [ ] Vercel Analytics enabled
- [ ] Sentry error tracking setup
- [ ] 404 page branded and functional
- [ ] Error pages styled consistently

---

## Phase 2: Deployment Preparation

### Environment Configuration
- [ ] `.env.local` created locally (not committed)
- [ ] `.env.example` has all required vars (without secrets)
- [ ] Production environment variables set on Vercel
- [ ] Database URL configured (if needed)
- [ ] API keys secured in Vercel secrets

### Vercel Setup
- [ ] GitHub repository connected
- [ ] Vercel project created
- [ ] Build command: `npm run build`
- [ ] Start command: `next start`
- [ ] Output directory: `.next`
- [ ] Node version: 18+ specified
- [ ] Environment variables added to Vercel

### DNS & Domain
- [ ] Domain registered
- [ ] DNS records configured
- [ ] SSL certificate auto-generated
- [ ] Domain verified on Vercel
- [ ] Redirect non-www to www (or vice versa)

### Documentation
- [ ] README.md updated with deployment info
- [ ] DEPLOYMENT_GUIDE.md created (if complex)
- [ ] Environment variables documented
- [ ] Known issues documented
- [ ] Rollback procedure documented

---

## Phase 3: Pre-Launch Final Check (24 Hours Before)

### Site Functionality
- [ ] Visit live URL in browser (desktop)
- [ ] Visit live URL on mobile
- [ ] Check all links work
- [ ] Test all forms
- [ ] Check images load
- [ ] Verify animations smooth

### Performance Check
- [ ] Lighthouse 90+ on production URL
- [ ] Core Web Vitals passing
- [ ] No 404 errors in console
- [ ] No network errors
- [ ] Page loads < 3 seconds

### Content Check
- [ ] No placeholder text
- [ ] No Lorem ipsum
- [ ] No typos/grammar errors
- [ ] All dates current
- [ ] All contact info correct
- [ ] All links point to correct pages

### Browser Testing
- [ ] Chrome (latest)
- [ ] Firefox (latest)
- [ ] Safari (latest)
- [ ] Edge (latest)
- [ ] Mobile Chrome
- [ ] Mobile Safari

### Legal/Compliance
- [ ] Privacy policy exists and linked
- [ ] Terms of service (if applicable)
- [ ] Accessibility statement
- [ ] Cookie notice (if needed)
- [ ] GDPR compliant (if EU traffic)

---

## Phase 4: Launch Day

### Morning (Before Launch)
- [ ] Do final full site walkthrough
- [ ] Verify analytics codes firing
- [ ] Test error pages (404, 500)
- [ ] Check server logs for errors
- [ ] Create backup of database (if applicable)

### Launch
- [ ] Announce on social media
- [ ] Send to email list
- [ ] Update portfolio/LinkedIn
- [ ] Submit to search engines
- [ ] Monitor analytics first hour

### Post-Launch Monitoring
- [ ] Check error logs (Sentry)
- [ ] Monitor Core Web Vitals
- [ ] Watch analytics for anomalies
- [ ] Respond to any reported issues
- [ ] Monitor uptime (status page)

---

## Phase 5: Post-Launch (Week 1)

### Performance Monitoring
- [ ] Collect baseline metrics
- [ ] Monitor for performance degradation
- [ ] Collect user feedback
- [ ] Fix critical bugs immediately
- [ ] Plan improvements for v1.1

### Analytics
- [ ] Verify traffic patterns
- [ ] Check conversion rates
- [ ] Identify bottleneck pages
- [ ] Review user flow
- [ ] Plan optimization tests

### Feedback & Issues
- [ ] Monitor issue reports
- [ ] Prioritize fixes
- [ ] Plan hotfixes for critical issues
- [ ] Document lessons learned
- [ ] Plan next sprint

---

## Deployment Commands

### Build & Test Locally
```bash
npm run build
npm run start
# Visit http://localhost:3000
```

### Deploy to Vercel
```bash
npm install -g vercel
vercel login
vercel --prod
```

### View Logs
```bash
vercel logs --prod
```

### Rollback (if needed)
```bash
vercel --prod --rollback
```

---

## Troubleshooting

### Build Fails
```bash
# Clear cache and rebuild
rm -rf .next
npm run build
```

### Performance Issues
```bash
# Analyze bundle
npm run build
# Check output size in .next/static
```

### Environment Variable Issues
```bash
# Verify .env.local (local)
# Verify Vercel secrets (production)
# Restart deployment
```

---

## Quick Links

- [Vercel Dashboard](https://vercel.com/dashboard)
- [Next.js Deployment Docs](https://nextjs.org/docs/app/building-your-application/deploying)
- [Google Analytics](https://analytics.google.com/)
- [Sentry Dashboard](https://sentry.io/)

---

## Sign-Off

**Pre-Launch Approval**: _______________
**Deployed By**: _______________
**Date**: _______________
**Version**: 1.0.0

---

## Post-Launch Notes

Document any issues or decisions made during launch:

- [ ] Issue: _______________
  Solution: _______________

- [ ] Decision: _______________
  Rationale: _______________

---

**Ready to launch?** Run through this checklist once more, then proceed with confidence! 🚀
