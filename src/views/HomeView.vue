<script setup lang="ts">
import { ref } from 'vue'

const dialog = ref(false)

const skills = {
  Core: ['Vue.js', 'Angular', 'TypeScript', 'JavaScript'],
  Backend: ['Laravel', 'Spring Boot'],
  Database: ['PostgreSQL', 'MySQL'],
  Other: ['OWASP', 'SSR', 'REST API']
}

const socialLinks = [
  { text: 'Email', icon: 'mdi-email', value: 'm.zhafirghiffari@gmail.com', href: 'mailto:m.zhafirghiffari@gmail.com' },
  { text: 'LinkedIn', icon: 'mdi-linkedin', value: 'Muhammad Zhafir Ghiffari', href: 'https://linkedin.com/in/muhammad-zhafir-ghiffari' },
  { text: 'GitHub', icon: 'mdi-github', value: 'Zhafir18', href: 'https://github.com/Zhafir18' },
]
</script>

<template>
  <v-container class="py-12 position-relative">
    <!-- Abstract Decoration -->
    <div class="tech-decoration hidden-sm-and-down"></div>

    <!-- Hero Section -->
    <v-row align="center" justify="center" class="min-vh-80 mb-12">
      <v-col cols="12" md="10" lg="8" class="text-center" v-reveal>
        <div class="badge mb-6 glow-primary d-inline-block px-4 py-1 rounded-pill">
          <span class="text-caption font-weight-bold">AVAILABLE FOR PROJECTS</span>
        </div>
        
        <h2 class="text-h6 font-weight-bold text-medium-emphasis mb-2">HEY THERE, I'M</h2>
        <h1 class="text-h1 font-weight-black mb-4 tech-title">
          <span class="text-gradient">ZHAFIR</span> GHIFFARI
        </h1>
        <h3 class="text-h4 font-weight-medium text-medium-emphasis mb-8">
          Crafting <span class="text-primary glow-text">Scalable</span> & Secure Modern Web Systems
        </h3>
        
        <p class="text-h6 font-weight-regular mb-10 max-width-700 mx-auto text-medium-emphasis">
          I'm a <span class="white-text font-weight-bold">Software Engineer</span> specializing in 
          enterprise-scale frontend architecture and backend integration. 
          2+ years of experience delivering robust solutions for government and state-owned sectors.
        </p>

        <div class="d-flex justify-center flex-wrap gap-4">
          <v-btn color="primary" size="x-large" elevation="8" rounded="pill" class="glow-primary px-10" to="/projects">
            Check Projects
          </v-btn>
          <v-btn size="x-large" variant="outlined" rounded="pill" border class="px-10" @click="dialog = true">
            Get In Touch
          </v-btn>
        </div>
      </v-col>
    </v-row>

    <!-- Technical Expertise Section -->
    <v-row class="mt-16 pt-16" v-reveal>
      <v-col cols="12">
        <h2 class="text-h3 font-weight-bold mb-12 text-center">Technical <span class="text-primary">Stacks</span></h2>
      </v-col>
      <v-col v-for="(items, category) in skills" :key="category" cols="12" sm="6" md="3">
        <v-card flat border class="glass h-100 pa-6 tech-card" rounded="xl">
          <div class="category-icon mb-4">
            <v-icon color="primary" size="32">
              {{ category === 'Core' ? 'mdi-layers-triple' : category === 'Backend' ? 'mdi-server' : category === 'Database' ? 'mdi-database' : 'mdi-shield-check' }}
            </v-icon>
          </div>
          <h3 class="text-h6 font-weight-bold mb-4">{{ category }}</h3>
          <div class="d-flex flex-wrap gap-2">
            <v-chip
              v-for="skill in items"
              :key="skill"
              size="small"
              variant="tonal"
              color="primary"
              class="font-weight-medium"
            >
              {{ skill }}
            </v-chip>
          </div>
        </v-card>
      </v-col>
    </v-row>

    <!-- Get In Touch Popup -->
    <v-dialog v-model="dialog" max-width="500" transition="dialog-bottom-transition">
      <v-card class="glass pa-8" rounded="xl" border>
        <v-card-title class="text-h4 font-weight-bold mb-6 text-center">Let's Talk!</v-card-title>
        <v-card-text class="pa-0">
          <div class="social-grid">
            <v-btn
              v-for="link in socialLinks"
              :key="link.text"
              :href="link.href"
              target="_blank"
              block
              height="80"
              variant="flat"
              class="mb-4 glass pa-4 d-flex justify-start text-none"
              rounded="xl"
              border
            >
              <v-icon color="primary" size="32" class="mr-4">{{ link.icon }}</v-icon>
              <div class="text-left">
                <div class="text-subtitle-1 font-weight-bold text-primary">{{ link.text }}</div>
                <div class="text-caption text-medium-emphasis">{{ link.value }}</div>
              </div>
            </v-btn>
          </div>
        </v-card-text>
        <v-card-actions class="mt-4 pa-0">
          <v-btn block color="primary" variant="tonal" height="50" rounded="pill" @click="dialog = false">
            Maybe Later
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-container>
</template>

<style scoped>
.min-vh-80 {
  min-height: 80vh;
}
.max-width-700 {
  max-width: 700px;
}
.gap-4 {
  gap: 20px;
}
.gap-2 {
  gap: 10px;
}

.tech-title {
  font-size: clamp(3rem, 8vw, 6rem) !important;
  line-height: 1.1;
  letter-spacing: -2px;
}

.badge {
  background: rgba(var(--v-theme-primary), 0.1);
  border: 1px solid rgba(var(--v-theme-primary), 0.2);
  color: rgb(var(--v-theme-primary));
}

.tech-card {
  transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.tech-card:hover {
  transform: translateY(-12px);
  border-color: rgba(var(--v-theme-primary), 0.5) !important;
  box-shadow: 0 20px 40px rgba(var(--v-theme-primary), 0.1);
}

.tech-decoration {
  position: absolute;
  top: 10%;
  right: -5%;
  width: 400px;
  height: 400px;
  background: radial-gradient(circle, rgba(var(--v-theme-primary), 0.1) 0%, transparent 70%);
  filter: blur(50px);
  z-index: -1;
  animation: float 10s infinite alternate ease-in-out;
}

@keyframes float {
  from { transform: translate(0, 0); }
  to { transform: translate(-50px, 50px); }
}

.white-text {
  color: rgb(var(--v-theme-on-surface));
}

:deep(.v-btn--size-x-large) {
  font-weight: 700;
  letter-spacing: 1px;
}
</style>
