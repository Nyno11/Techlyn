$filePath = 'c:\Users\frank\Downloads\Arsha\Arsha\index.html'
$content = [System.IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)

# Find the hero section boundaries using literal (non-encoded) markers
$startMarker = '<!-- Hero Section -->'
$endMarker = '</section><!-- /Hero Section -->'

$startIdx = $content.IndexOf($startMarker)
$endIdx = $content.IndexOf($endMarker)

if ($startIdx -lt 0 -or $endIdx -lt 0) {
    Write-Host "Could not find markers. Start=$startIdx End=$endIdx"
    exit 1
}

$endIdx += $endMarker.Length

$beforeHero = $content.Substring(0, $startIdx)
$afterHero = $content.Substring($endIdx)

$newHero = @'
<!-- Hero Section -->
    <section id="hero" class="hero section dark-background">

      <!-- Animated particle canvas background -->
      <canvas id="hero-canvas"></canvas>

      <!-- Glowing grid overlay -->
      <div class="hero-grid-overlay"></div>

      <div class="container hero-container">
        <div class="row align-items-center gy-5">

          <!-- Left: Text content -->
          <div class="col-lg-6 order-2 order-lg-1 hero-text-col" data-aos="fade-right" data-aos-delay="100">

            <!-- Eyebrow badge -->
            <div class="hero-eyebrow" data-aos="fade-down" data-aos-delay="200">
              <span class="eyebrow-dot"></span>
              <span>Next-Gen IT Solutions</span>
            </div>

            <!-- Main headline with typed text -->
            <h1 class="hero-headline">
              We Build<br>
              <span class="hero-typed-wrapper">
                <span id="hero-typed"></span><span class="hero-cursor">|</span>
              </span>
            </h1>

            <p class="hero-desc">Techlyn is a forward-thinking IT solutions company helping businesses design, build, and scale digital products that drive growth, efficiency, and innovation.</p>

            <!-- CTA Buttons -->
            <div class="hero-cta-group" data-aos="fade-up" data-aos-delay="400">
              <a href="#contact" class="hero-btn-primary">
                <span>Get Started</span>
                <i class="bi bi-arrow-right-circle-fill"></i>
              </a>
              <a href="#services" class="hero-btn-secondary">
                <i class="bi bi-grid-3x3-gap-fill"></i>
                <span>Our Services</span>
              </a>
            </div>

            <!-- Floating tech pills -->
            <div class="hero-pills" data-aos="fade-up" data-aos-delay="500">
              <span class="hero-pill"><i class="bi bi-shield-check"></i> Cyber Security</span>
              <span class="hero-pill"><i class="bi bi-cloud-arrow-up"></i> Cloud Solutions</span>
              <span class="hero-pill"><i class="bi bi-phone"></i> Mobile Apps</span>
              <span class="hero-pill"><i class="bi bi-code-slash"></i> Web Dev</span>
            </div>
          </div>

          <!-- Right: Tech dashboard visual -->
          <div class="col-lg-6 order-1 order-lg-2 hero-visual-col" data-aos="fade-left" data-aos-delay="300">
            <div class="hero-dashboard">

              <!-- Top bar -->
              <div class="hd-titlebar">
                <span class="hd-dot hd-dot-red"></span>
                <span class="hd-dot hd-dot-yellow"></span>
                <span class="hd-dot hd-dot-green-dot"></span>
                <span class="hd-bar-title">techlyn_dashboard.exe</span>
              </div>

              <!-- Uptime / status row -->
              <div class="hd-status-row">
                <div class="hd-status-item">
                  <span class="hd-status-label">System Status</span>
                  <span class="hd-status-value hd-green"><i class="bi bi-circle-fill"></i> Operational</span>
                </div>
                <div class="hd-status-item">
                  <span class="hd-status-label">Uptime</span>
                  <span class="hd-status-value">99.98%</span>
                </div>
                <div class="hd-status-item">
                  <span class="hd-status-label">Response</span>
                  <span class="hd-status-value">12 ms</span>
                </div>
              </div>

              <!-- Metric bars -->
              <div class="hd-metrics">
                <div class="hd-metric">
                  <div class="hd-metric-head">
                    <span>CPU Usage</span><span class="hd-metric-val">34%</span>
                  </div>
                  <div class="hd-bar"><div class="hd-bar-fill" style="width:34%; background: linear-gradient(90deg,#47b2e4,#00e5ff);"></div></div>
                </div>
                <div class="hd-metric">
                  <div class="hd-metric-head">
                    <span>Memory</span><span class="hd-metric-val">61%</span>
                  </div>
                  <div class="hd-bar"><div class="hd-bar-fill" style="width:61%; background: linear-gradient(90deg,#7c4dff,#47b2e4);"></div></div>
                </div>
                <div class="hd-metric">
                  <div class="hd-metric-head">
                    <span>Network I/O</span><span class="hd-metric-val">78%</span>
                  </div>
                  <div class="hd-bar"><div class="hd-bar-fill" style="width:78%; background: linear-gradient(90deg,#00c9a7,#47b2e4);"></div></div>
                </div>
                <div class="hd-metric">
                  <div class="hd-metric-head">
                    <span>Disk I/O</span><span class="hd-metric-val">22%</span>
                  </div>
                  <div class="hd-bar"><div class="hd-bar-fill" style="width:22%; background: linear-gradient(90deg,#ffb300,#ff6f00);"></div></div>
                </div>
              </div>

              <!-- Mini sparkline chart area -->
              <div class="hd-chart-area">
                <div class="hd-chart-label">Live Traffic <span class="hd-chart-badge">LIVE</span></div>
                <svg class="hd-sparkline" viewBox="0 0 260 60" preserveAspectRatio="none">
                  <defs>
                    <linearGradient id="sg" x1="0" y1="0" x2="0" y2="1">
                      <stop offset="0%" stop-color="#47b2e4" stop-opacity="0.5"/>
                      <stop offset="100%" stop-color="#47b2e4" stop-opacity="0"/>
                    </linearGradient>
                  </defs>
                  <path d="M0,50 C20,40 30,20 60,30 C90,40 100,10 130,15 C160,20 180,35 200,25 C220,15 240,30 260,20 L260,60 L0,60 Z" fill="url(#sg)"/>
                  <path d="M0,50 C20,40 30,20 60,30 C90,40 100,10 130,15 C160,20 180,35 200,25 C220,15 240,30 260,20" fill="none" stroke="#47b2e4" stroke-width="2"/>
                </svg>
              </div>

              <!-- Active services list -->
              <div class="hd-services-list">
                <div class="hd-service-item">
                  <span class="hd-svc-dot" style="background:#47b2e4;"></span>
                  <span class="hd-svc-name">Web Infrastructure</span>
                  <span class="hd-svc-status hd-green">Active</span>
                </div>
                <div class="hd-service-item">
                  <span class="hd-svc-dot" style="background:#7c4dff;"></span>
                  <span class="hd-svc-name">Security Layer</span>
                  <span class="hd-svc-status hd-green">Active</span>
                </div>
                <div class="hd-service-item">
                  <span class="hd-svc-dot" style="background:#00c9a7;"></span>
                  <span class="hd-svc-name">Cloud Sync</span>
                  <span class="hd-svc-status hd-green">Active</span>
                </div>
              </div>

              <!-- Glow accent -->
              <div class="hd-glow"></div>
            </div>

            <!-- Floating badge: clients -->
            <div class="hero-float-badge hero-float-badge-1" data-aos="zoom-in" data-aos-delay="600">
              <i class="bi bi-people-fill"></i>
              <div>
                <strong>500+</strong>
                <span>Happy Clients</span>
              </div>
            </div>

            <!-- Floating badge: projects -->
            <div class="hero-float-badge hero-float-badge-2" data-aos="zoom-in" data-aos-delay="700">
              <i class="bi bi-rocket-takeoff-fill"></i>
              <div>
                <strong>1,200+</strong>
                <span>Projects Delivered</span>
              </div>
            </div>
          </div>
        </div>

        <!-- Bottom stats bar -->
        <div class="hero-stats-bar" data-aos="fade-up" data-aos-delay="600">
          <div class="hero-stat">
            <span class="hero-stat-num">10+</span>
            <span class="hero-stat-label">Years Experience</span>
          </div>
          <div class="hero-stat-divider"></div>
          <div class="hero-stat">
            <span class="hero-stat-num">500+</span>
            <span class="hero-stat-label">Happy Clients</span>
          </div>
          <div class="hero-stat-divider"></div>
          <div class="hero-stat">
            <span class="hero-stat-num">1,200+</span>
            <span class="hero-stat-label">Projects Done</span>
          </div>
          <div class="hero-stat-divider"></div>
          <div class="hero-stat">
            <span class="hero-stat-num">99.9%</span>
            <span class="hero-stat-label">Uptime SLA</span>
          </div>
        </div>
      </div>

    </section><!-- /Hero Section -->
'@

$newContent = $beforeHero + $newHero + $afterHero
[System.IO.File]::WriteAllText($filePath, $newContent, [System.Text.Encoding]::UTF8)
Write-Host "SUCCESS: Hero section replaced. File saved."
