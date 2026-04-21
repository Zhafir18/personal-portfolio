<script setup lang="ts">
const experiences = [
  {
    company: 'Indocyber Global Teknologi',
    role: 'Software Engineer',
    period: 'Nov 2023 – Present',
    logo: 'mdi-shield-check-outline',
    description: [
      'Developed enterprise web applications using Vue.js and Angular',
      'Integrated REST APIs and improved performance',
      'Applied OWASP security best practices'
    ]
  },
  {
    company: 'Sekretariat Jenderal DPR RI',
    role: 'Web Developer',
    period: 'Jan 2022 – Feb 2023',
    logo: 'mdi-gavel',
    description: [
      'Built Laravel-based applications with MVC architecture',
      'Implemented electronic signature workflows'
    ]
  },
  {
    company: 'CSEAS Indonesia',
    role: 'IT Support',
    period: 'Jun 2021 – Aug 2021',
    logo: 'mdi-help-network-outline',
    description: [
      'Provided IT support and managed database records'
    ]
  }
]
</script>

<template>
  <v-container class="py-12">
    <v-row v-reveal class="mb-16">
      <v-col cols="12">
        <h2 class="text-h2 font-weight-black text-center mb-4">Carrier <span class="text-gradient">Timeline</span></h2>
        <p class="text-h6 text-center text-medium-emphasis mx-auto max-width-600">
          A retrospective of my professional journey in software engineering.
        </p>
      </v-col>
    </v-row>

    <v-row justify="center">
      <v-col cols="12" md="10" lg="8">
        <div class="modern-timeline">
          <div v-for="(exp, i) in experiences" :key="i" class="timeline-item" v-reveal>
            <div class="timeline-marker">
              <v-icon :icon="exp.logo" color="primary" size="24"></v-icon>
            </div>
            
            <v-card border flat class="timeline-card glass pa-6" rounded="xl">
              <div class="d-flex justify-space-between align-center flex-wrap gap-2 mb-4">
                <div>
                  <h3 class="text-h4 font-weight-bold text-primary">{{ exp.role }}</h3>
                  <h4 class="text-h6 font-weight-medium">{{ exp.company }}</h4>
                </div>
                <v-chip color="primary" variant="tonal" rounded="pill" class="font-weight-bold">
                  {{ exp.period }}
                </v-chip>
              </div>

              <v-list density="compact" bg-color="transparent">
                <v-list-item
                  v-for="(task, j) in exp.description"
                  :key="j"
                  prepend-icon="mdi-hexagon-outline"
                  class="px-0 pb-2"
                >
                  <div class="text-body-1 text-medium-emphasis">{{ task }}</div>
                </v-list-item>
              </v-list>
            </v-card>
          </div>
        </div>
      </v-col>
    </v-row>
  </v-container>
</template>

<style scoped>
.modern-timeline {
  position: relative;
  padding-left: 50px;
}

.modern-timeline::before {
  content: '';
  position: absolute;
  left: 11px;
  top: 0;
  bottom: 0;
  width: 2px;
  background: linear-gradient(to bottom, 
    rgb(var(--v-theme-primary)) 0%, 
    rgba(var(--v-theme-primary), 0.2) 100%
  );
}

.timeline-item {
  position: relative;
  margin-bottom: 60px;
}

.timeline-marker {
  position: absolute;
  left: -50px;
  top: 10px;
  width: 44px;
  height: 44px;
  background: rgb(var(--v-theme-surface));
  border: 2px solid rgb(var(--v-theme-primary));
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 2;
  box-shadow: 0 0 20px rgba(var(--v-theme-primary), 0.3);
}

.timeline-card {
  transition: all 0.3s ease;
}

.timeline-card:hover {
  transform: translateX(10px);
  border-color: rgba(var(--v-theme-primary), 0.3) !important;
}

.max-width-600 {
  max-width: 600px;
}

.gap-2 {
  gap: 12px;
}

:deep(.v-list-item__prepend .v-icon) {
  opacity: 1;
  color: rgb(var(--v-theme-primary)) !important;
}
</style>
