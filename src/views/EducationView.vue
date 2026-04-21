<script setup lang="ts">
const education = [
  {
    institution: 'Bina Nusantara University',
    degree: 'Bachelor of Computer Science',
    period: '2019 – 2023',
    icon: 'mdi-school',
    details: 'Focused on advanced algorithms, software architecture, and full-stack engineering during this four-year academic journey.'
  },
  {
    institution: 'Indocyber Global Teknologi',
    degree: 'Fullstack Developer Bootcamp',
    period: 'Professional Training',
    icon: 'mdi-laptop-account',
    details: 'Intensive hands-on training covering modern web ecosystems, Java/Spring Boot backend, and responsive frontend UI/UX development.'
  }
]
</script>

<template>
  <v-container class="py-12">
    <v-row v-reveal class="mb-16">
      <v-col cols="12">
        <h2 class="text-h2 font-weight-black text-center mb-4">Academic <span class="text-gradient">Foundation</span></h2>
        <p class="text-h6 text-center text-medium-emphasis mx-auto max-width-700">
          The educational milestones and professional certifications that shaped my technical expertise.
        </p>
      </v-col>
    </v-row>

    <v-row justify="center">
      <v-col v-for="(edu, i) in education" :key="i" cols="12" md="6" v-reveal>
        <v-card border flat class="glass pa-8 mb-8 edu-card h-100" rounded="xl">
          <div class="d-flex align-start justify-space-between mb-8 overflow-visible">
            <div class="edu-icon-box glow-primary">
              <v-icon :icon="edu.icon" color="primary" size="36"></v-icon>
            </div>
            <v-chip color="primary" variant="tonal" rounded="pill" class="font-weight-bold">
              {{ edu.period }}
            </v-chip>
          </div>
          
          <h3 class="text-h4 font-weight-bold text-primary mb-2">{{ edu.degree }}</h3>
          <h4 class="text-h5 font-weight-medium mb-6">{{ edu.institution }}</h4>
          
          <v-divider class="mb-6 opacity-10"></v-divider>
          
          <p class="text-h6 font-weight-regular text-medium-emphasis leading-relaxed">
            {{ edu.details }}
          </p>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<style scoped>
.max-width-700 {
  max-width: 700px;
}

.edu-card {
  transition: all 0.4s ease;
  position: relative;
  overflow: visible;
}

.edu-card:hover {
  transform: scale(1.02);
  border-color: rgba(var(--v-theme-primary), 0.4) !important;
}

.edu-icon-box {
  width: 72px;
  height: 72px;
  background: rgba(var(--v-theme-primary), 0.1);
  border: 1px solid rgba(var(--v-theme-primary), 0.2);
  border-radius: 20px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: -40px; /* Modern offset look */
}

.leading-relaxed {
  line-height: 1.6;
}

.opacity-10 {
  opacity: 0.1;
}
</style>
