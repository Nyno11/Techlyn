$cssPath = 'c:\Users\frank\Downloads\Arsha\Arsha\assets\css\main.css'
$css = [System.IO.File]::ReadAllText($cssPath, [System.Text.Encoding]::UTF8)

$oldHeroCSS = @'
/*--------------------------------------------------------------
# Hero Section
--------------------------------------------------------------*/
.hero {
  width: 100%;
  min-height: 80vh;
  position: relative;
  padding: 80px 0 30px 0;
  display: flex;
  align-items: center;
}

.hero h1 {
  margin: 0;
  font-size: clamp(28px, 5vw, 48px); 
  font-weight: 600;
  line-height: 1.2; /* better responsive behavior */
}

.hero p {
  color: color-mix(in srgb, var(--default-color), transparent 30%);
  margin: 5px 0 30px 0;
  font-size: clamp(14px, 2vw, 18px);
  line-height: 1.6;
  font-weight: 400;
}

.hero .animated {
  animation: up-down 2s ease-in-out infinite alternate-reverse both;
}

.hero h1 {
  font-size: 48px;
  line-height: 56px;
}

@media (max-width: 768px) {
  .hero h1 {
    font-size: 36px;
    line-height: 44px;
  }
}

@media (max-width: 480px) {
  .hero h1 {
    font-size: 28px;
    line-height: 36px;
  }
}


@media (max-width: 640px) {
  .hero h1 {
    font-size: 28px;
    line-height: 36px;
  }

  .hero p {
    font-size: 18px;
    line-height: 24px;
    margin-bottom: 30px;
  }

  .hero .btn-get-started,
  .hero .btn-watch-video {
    font-size: 13px;
  }
}

@keyframes up-down {
  0% {
    transform: translateY(10px);
  }

  100% {
    transform: translateY(-10px);
  }
}
'@

$newHeroCSS = @'
/*--------------------------------------------------------------
# Hero Section - Sophisticated IT
--------------------------------------------------------------*/

/* ── Canvas & Overlays ── */
#hero-canvas {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  z-index: 0;
  opacity: 0.45;
}

.hero {
  width: 100%;
  min-height: 100vh;
  position: relative;
  padding: 120px 0 60px 0;
  display: flex;
  align-items: center;
  background: linear-gradient(135deg, #050d1a 0%, #0a1628 35%, #0d1f3c 65%, #112240 100%);
  overflow: hidden;
}

.hero-grid-overlay {
  position: absolute;
  inset: 0;
  z-index: 0;
  background-image:
    linear-gradient(rgba(71,178,228,0.06) 1px, transparent 1px),
    linear-gradient(90deg, rgba(71,178,228,0.06) 1px, transparent 1px);
  background-size: 50px 50px;
}

.hero::before {
  content: '';
  position: absolute;
  top: -200px;
  right: -200px;
  width: 700px;
  height: 700px;
  background: radial-gradient(circle, rgba(71,178,228,0.12) 0%, transparent 70%);
  z-index: 0;
  border-radius: 50%;
  pointer-events: none;
}

.hero::after {
  content: '';
  position: absolute;
  bottom: -150px;
  left: -150px;
  width: 500px;
  height: 500px;
  background: radial-gradient(circle, rgba(124,77,255,0.1) 0%, transparent 70%);
  z-index: 0;
  border-radius: 50%;
  pointer-events: none;
}

.hero-container {
  position: relative;
  z-index: 2;
}

/* ── Eyebrow Badge ── */
.hero-eyebrow {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  background: rgba(71,178,228,0.12);
  border: 1px solid rgba(71,178,228,0.3);
  color: #47b2e4;
  font-size: 13px;
  font-weight: 600;
  letter-spacing: 1.5px;
  text-transform: uppercase;
  padding: 7px 18px;
  border-radius: 50px;
  margin-bottom: 28px;
  backdrop-filter: blur(6px);
}

.eyebrow-dot {
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: #47b2e4;
  box-shadow: 0 0 8px #47b2e4;
  animation: blink-pulse 1.4s ease-in-out infinite;
}

@keyframes blink-pulse {
  0%, 100% { opacity: 1; transform: scale(1); }
  50%       { opacity: 0.4; transform: scale(0.7); }
}

/* ── Headline ── */
.hero-headline {
  font-size: clamp(36px, 5vw, 64px);
  font-weight: 800;
  line-height: 1.15;
  color: #ffffff;
  margin: 0 0 24px 0;
  letter-spacing: -1px;
}

.hero-typed-wrapper {
  display: block;
  background: linear-gradient(90deg, #47b2e4, #00e5ff, #7c4dff);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  min-height: 1.2em;
}

.hero-cursor {
  display: inline-block;
  -webkit-text-fill-color: #47b2e4;
  animation: cursor-blink 0.8s step-end infinite;
  font-weight: 300;
}

@keyframes cursor-blink {
  0%, 100% { opacity: 1; }
  50%       { opacity: 0; }
}

/* ── Description ── */
.hero-desc {
  color: rgba(255,255,255,0.65) !important;
  font-size: clamp(15px, 1.8vw, 18px) !important;
  line-height: 1.75 !important;
  margin: 0 0 36px 0 !important;
  max-width: 520px;
}

/* ── CTA Buttons ── */
.hero-cta-group {
  display: flex;
  align-items: center;
  gap: 16px;
  flex-wrap: wrap;
  margin-bottom: 36px;
}

.hero-btn-primary {
  display: inline-flex;
  align-items: center;
  gap: 10px;
  padding: 14px 32px;
  background: linear-gradient(135deg, #47b2e4 0%, #0ea5e9 100%);
  color: #fff !important;
  font-weight: 700;
  font-size: 15px;
  border-radius: 50px;
  text-decoration: none;
  box-shadow: 0 8px 32px rgba(71,178,228,0.35);
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
}

.hero-btn-primary::before {
  content: '';
  position: absolute;
  inset: 0;
  background: linear-gradient(135deg, #0ea5e9 0%, #47b2e4 100%);
  opacity: 0;
  transition: opacity 0.3s ease;
}

.hero-btn-primary:hover {
  transform: translateY(-2px);
  box-shadow: 0 14px 40px rgba(71,178,228,0.5);
  color: #fff !important;
}

.hero-btn-primary:hover::before { opacity: 1; }
.hero-btn-primary span, .hero-btn-primary i { position: relative; z-index: 1; }

.hero-btn-secondary {
  display: inline-flex;
  align-items: center;
  gap: 10px;
  padding: 13px 28px;
  background: rgba(255,255,255,0.06);
  color: rgba(255,255,255,0.9) !important;
  font-weight: 600;
  font-size: 15px;
  border-radius: 50px;
  text-decoration: none;
  border: 1px solid rgba(255,255,255,0.2);
  backdrop-filter: blur(8px);
  transition: all 0.3s ease;
}

.hero-btn-secondary:hover {
  background: rgba(71,178,228,0.15);
  border-color: rgba(71,178,228,0.5);
  color: #47b2e4 !important;
  transform: translateY(-2px);
}

/* ── Tech Pills ── */
.hero-pills {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
}

.hero-pill {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: 6px 16px;
  background: rgba(255,255,255,0.05);
  border: 1px solid rgba(255,255,255,0.12);
  border-radius: 50px;
  color: rgba(255,255,255,0.75);
  font-size: 13px;
  font-weight: 500;
  transition: all 0.3s ease;
  backdrop-filter: blur(4px);
}

.hero-pill i {
  color: #47b2e4;
  font-size: 13px;
}

.hero-pill:hover {
  border-color: rgba(71,178,228,0.4);
  background: rgba(71,178,228,0.1);
  color: #fff;
  transform: translateY(-2px);
}

/* ── Hero Visual Column ── */
.hero-visual-col {
  position: relative;
}

/* ── Dashboard Card ── */
.hero-dashboard {
  background: rgba(10,20,40,0.85);
  backdrop-filter: blur(20px);
  border: 1px solid rgba(71,178,228,0.2);
  border-radius: 16px;
  padding: 0 0 20px 0;
  position: relative;
  overflow: hidden;
  box-shadow:
    0 0 0 1px rgba(71,178,228,0.08),
    0 30px 80px rgba(0,0,0,0.5),
    0 0 60px rgba(71,178,228,0.06);
}

.hd-titlebar {
  display: flex;
  align-items: center;
  gap: 8px;
  background: rgba(255,255,255,0.04);
  border-bottom: 1px solid rgba(71,178,228,0.12);
  padding: 12px 18px;
}

.hd-dot {
  width: 12px;
  height: 12px;
  border-radius: 50%;
  flex-shrink: 0;
}

.hd-dot-red    { background: #ff5f57; }
.hd-dot-yellow { background: #febc2e; }
.hd-dot-green-dot  { background: #28c840; }

.hd-bar-title {
  font-size: 12px;
  color: rgba(255,255,255,0.4);
  font-family: 'Courier New', monospace;
  letter-spacing: 0.5px;
  margin-left: 8px;
}

.hd-status-row {
  display: flex;
  gap: 0;
  border-bottom: 1px solid rgba(71,178,228,0.1);
  padding: 14px 20px;
  justify-content: space-between;
}

.hd-status-item {
  display: flex;
  flex-direction: column;
  gap: 4px;
}

.hd-status-label {
  font-size: 11px;
  color: rgba(255,255,255,0.35);
  text-transform: uppercase;
  letter-spacing: 0.8px;
}

.hd-status-value {
  font-size: 13px;
  font-weight: 600;
  color: rgba(255,255,255,0.85);
}

.hd-green {
  color: #00e676 !important;
}

.hd-green i {
  font-size: 8px;
  vertical-align: middle;
  margin-right: 2px;
}

.hd-metrics {
  padding: 18px 20px 10px;
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.hd-metric {}

.hd-metric-head {
  display: flex;
  justify-content: space-between;
  font-size: 12px;
  color: rgba(255,255,255,0.5);
  margin-bottom: 6px;
}

.hd-metric-val {
  color: rgba(255,255,255,0.8);
  font-weight: 600;
}

.hd-bar {
  height: 5px;
  background: rgba(255,255,255,0.07);
  border-radius: 10px;
  overflow: hidden;
}

.hd-bar-fill {
  height: 100%;
  border-radius: 10px;
  transition: width 1.5s ease;
}

.hd-chart-area {
  padding: 16px 20px 10px;
  border-top: 1px solid rgba(71,178,228,0.1);
  margin-top: 8px;
}

.hd-chart-label {
  font-size: 12px;
  color: rgba(255,255,255,0.45);
  margin-bottom: 10px;
  display: flex;
  align-items: center;
  gap: 8px;
}

.hd-chart-badge {
  background: rgba(255,80,80,0.25);
  color: #ff5555;
  font-size: 10px;
  font-weight: 700;
  padding: 2px 7px;
  border-radius: 4px;
  letter-spacing: 1px;
  animation: live-pulse 1.5s ease-in-out infinite;
}

@keyframes live-pulse {
  0%, 100% { opacity: 1; }
  50%       { opacity: 0.5; }
}

.hd-sparkline {
  width: 100%;
  height: 60px;
  display: block;
}

.hd-services-list {
  padding: 10px 20px 0;
  border-top: 1px solid rgba(71,178,228,0.1);
  margin-top: 10px;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.hd-service-item {
  display: flex;
  align-items: center;
  gap: 10px;
}

.hd-svc-dot {
  width: 8px;
  height: 8px;
  border-radius: 50%;
  flex-shrink: 0;
  box-shadow: 0 0 6px currentColor;
}

.hd-svc-name {
  font-size: 13px;
  color: rgba(255,255,255,0.65);
  flex: 1;
}

.hd-svc-status {
  font-size: 11px;
  font-weight: 600;
  padding: 2px 10px;
  border-radius: 20px;
  background: rgba(0,230,118,0.12);
  letter-spacing: 0.5px;
}

.hd-glow {
  position: absolute;
  top: 0;
  right: 0;
  width: 200px;
  height: 200px;
  background: radial-gradient(circle, rgba(71,178,228,0.15) 0%, transparent 70%);
  pointer-events: none;
  border-radius: 50%;
}

/* ── Floating Badges ── */
.hero-float-badge {
  position: absolute;
  display: flex;
  align-items: center;
  gap: 12px;
  background: rgba(10,20,40,0.9);
  border: 1px solid rgba(71,178,228,0.25);
  backdrop-filter: blur(12px);
  border-radius: 12px;
  padding: 12px 18px;
  box-shadow: 0 8px 32px rgba(0,0,0,0.3);
  z-index: 3;
}

.hero-float-badge i {
  font-size: 22px;
  color: #47b2e4;
}

.hero-float-badge strong {
  display: block;
  font-size: 16px;
  font-weight: 800;
  color: #fff;
  line-height: 1;
}

.hero-float-badge span {
  display: block;
  font-size: 11px;
  color: rgba(255,255,255,0.5);
  margin-top: 3px;
}

.hero-float-badge-1 {
  bottom: 20px;
  left: -30px;
  animation: float-badge 4s ease-in-out infinite;
}

.hero-float-badge-2 {
  top: 30px;
  right: -20px;
  animation: float-badge 4s ease-in-out infinite reverse;
}

@keyframes float-badge {
  0%, 100% { transform: translateY(0px); }
  50%       { transform: translateY(-10px); }
}

/* ── Stats Bar ── */
.hero-stats-bar {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-wrap: wrap;
  gap: 0;
  margin-top: 70px;
  padding: 28px 40px;
  background: rgba(255,255,255,0.04);
  border: 1px solid rgba(71,178,228,0.15);
  border-radius: 16px;
  backdrop-filter: blur(10px);
}

.hero-stat {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 0 40px;
}

.hero-stat-num {
  font-size: clamp(28px, 3.5vw, 42px);
  font-weight: 800;
  background: linear-gradient(90deg, #47b2e4, #00e5ff);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  line-height: 1;
}

.hero-stat-label {
  font-size: 13px;
  color: rgba(255,255,255,0.45);
  margin-top: 6px;
  letter-spacing: 0.5px;
}

.hero-stat-divider {
  width: 1px;
  height: 50px;
  background: rgba(71,178,228,0.2);
}

/* ── Responsive ── */
@media (max-width: 992px) {
  .hero-float-badge-1 { left: 0; }
  .hero-float-badge-2 { right: 0; }
}

@media (max-width: 768px) {
  .hero {
    padding: 100px 0 50px 0;
    min-height: auto;
  }

  .hero-headline {
    font-size: 36px;
  }

  .hero-stats-bar {
    gap: 16px;
    padding: 24px 20px;
  }

  .hero-stat { padding: 0 20px; }
  .hero-float-badge { display: none; }
}

@media (max-width: 480px) {
  .hero-headline { font-size: 30px; }
  .hero-stat-divider { display: none; }
}

@keyframes up-down {
  0%   { transform: translateY(10px); }
  100% { transform: translateY(-10px); }
}
'@

# Normalize line endings
$oldHeroCSSNorm = $oldHeroCSS -replace "`r`n", "`n"
$cssNorm = $css -replace "`r`n", "`n"

if ($cssNorm.Contains($oldHeroCSSNorm)) {
    $newCSS = $cssNorm.Replace($oldHeroCSSNorm, $newHeroCSS)
    [System.IO.File]::WriteAllText($cssPath, $newCSS, [System.Text.Encoding]::UTF8)
    Write-Host "SUCCESS: Hero CSS replaced."
}
else {
    Write-Host "NOT FOUND in CSS. Searching for partial match..."
    $idx = $cssNorm.IndexOf("# Hero Section")
    Write-Host "Index of Hero Section comment: $idx"
    if ($idx -ge 0) {
        Write-Host $cssNorm.Substring($idx, [Math]::Min(200, $cssNorm.Length - $idx))
    }
}
