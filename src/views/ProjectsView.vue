<script setup lang="ts">
const projects = [
  {
    title: 'SiPenarik',
    subtitle: 'Electronic Signature System',
    platform: 'Full Stack Laravel',
    tech: ['Laravel', 'MVC', 'e-Signature'],
    icon: 'mdi-pen-lock',
    description: 'Designed and developed an electronic signature system for secure document approval at the Secretariat General of DPR RI. Digitized manual processes, improving workflow efficiency.',
  },
  {
    title: 'Gaspro',
    subtitle: 'PLN Asset Tracking',
    platform: 'AngularJS Application',
    tech: ['AngularJS', 'REST API', 'Interactive Maps'],
    icon: 'mdi-map-marker-path',
    description: 'Developed an application to document and manage PLN property assets. Enabled users to visualize and manage property assets directly on an interactive map interface.',
  },
  {
    title: 'PLN Properti',
    subtitle: 'Property Rental Portal',
    platform: 'Web Application with SSR',
    tech: ['AngularJS', 'OpenLayers', 'OWASP', 'SSR'],
    icon: 'mdi-home-city-outline',
    description: 'Built a web application for managing property rentals. Upgraded mapping capabilities with OpenLayers and OSM. Implemented SSR for superior performance.',
  },
  {
    title: 'Portal Sekper',
    subtitle: 'Centralized Access Portal',
    platform: 'SSO Implementation (VueJS)',
    tech: ['VueJS', 'SSO', 'OWASP', 'Auth'],
    icon: 'mdi-shield-key-outline',
    description: 'Built a Single Sign-On (SSO) portal to centralize access to multiple internal applications within PLN’s Communication Division.',
  },
  {
    title: 'DAMS',
    subtitle: 'Digital Asset Management',
    platform: 'Media Management System (VueJS)',
    tech: ['VueJS', 'Chunked Upload', 'Media Storage'],
    icon: 'mdi-folder-multiple-image',
    description: 'Developed a system enabling users to upload and manage files. Implemented chunked file upload for handling large media files reliably.',
  }
]
</script>

<template>
  <v-container class="py-12">
    <!-- Section Header -->
    <v-row v-reveal class="mb-16">
      <v-col cols="12">
        <h2 class="text-h2 font-weight-black text-center mb-4">Engineering <span class="text-gradient">Showcase</span></h2>
        <p class="text-h6 text-center text-medium-emphasis mx-auto max-width-700">
          A collection of architecting complex solutions and high-performance enterprise applications.
        </p>
      </v-col>
    </v-row>

    <!-- Projects Grid -->
    <v-row>
      <v-col v-for="(project, i) in projects" :key="i" cols="12" md="6" lg="4" v-reveal>
        <v-card border flat class="glass h-100 d-flex flex-column project-card" rounded="xl">
          <div class="project-header pa-6">
            <div class="d-flex align-center mb-4">
              <div class="icon-box mr-4 glow-primary">
                <v-icon :icon="project.icon" color="primary" size="28"></v-icon>
              </div>
              <div>
                <div class="text-overline font-weight-bold text-primary">{{ project.platform }}</div>
                <h3 class="text-h4 font-weight-bold">{{ project.title }}</h3>
              </div>
            </div>
            
            <div class="d-flex flex-wrap gap-2 mb-4">
              <v-chip
                v-for="skill in project.tech"
                :key="skill"
                size="small"
                variant="tonal"
                rounded="lg"
                color="primary"
                class="font-weight-bold"
              >
                {{ skill }}
              </v-chip>
            </div>
          </div>

          <v-divider class="mx-6"></v-divider>

          <v-card-text class="px-6 py-6 text-body-1 text-medium-emphasis flex-grow-1">
            <div class="subtitle-text mb-4">{{ project.subtitle }}</div>
            {{ project.description }}
          </v-card-text>

          <v-card-actions class="pa-6 pt-0">
            <v-btn
              color="primary"
              variant="flat"
              rounded="pill"
              class="px-6"
              append-icon="mdi-open-in-new"
            >
              Case Study
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<style scoped>
.max-width-700 {
  max-width: 700px;
}
.gap-2 {
  gap: 8px;
}

.project-card {
  transition: all 0.5s cubic-bezier(0.23, 1, 0.32, 1);
  overflow: hidden;
  position: relative;
}

.project-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(135deg, rgba(var(--v-theme-primary), 0.05) 0%, transparent 50%);
  opacity: 0;
  transition: opacity 0.5s ease;
}

.project-card:hover {
  transform: translateY(-15px);
  border-color: rgba(var(--v-theme-primary), 0.5) !important;
  box-shadow: 0 30px 60px rgba(var(--v-theme-primary), 0.15) !important;
}

.project-card:hover::before {
  opacity: 1;
}

.icon-box {
  width: 56px;
  height: 56px;
  background: rgba(var(--v-theme-primary), 0.1);
  border: 1px solid rgba(var(--v-theme-primary), 0.2);
  border-radius: 16px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.subtitle-text {
  font-weight: 700;
  letter-spacing: 1px;
  text-transform: uppercase;
  font-size: 0.75rem;
  color: rgb(var(--v-theme-primary));
}

:deep(.v-chip) {
  font-size: 0.7rem;
}
</style>
