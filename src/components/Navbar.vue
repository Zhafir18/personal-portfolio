<script setup lang="ts">
import { useTheme } from 'vuetify'
import { ref } from 'vue'

const theme = useTheme()
const drawer = ref(false)

const toggleTheme = () => {
  theme.global.name.value = theme.global.current.value.dark 
    ? 'myCustomLightTheme' 
    : 'myCustomDarkTheme'
}

const navItems = [
  { title: 'Home', icon: 'mdi-home', path: '/' },
  { title: 'Experience', icon: 'mdi-briefcase', path: '/experience' },
  { title: 'Projects', icon: 'mdi-code-braces', path: '/projects' },
  { title: 'Education', icon: 'mdi-school', path: '/education' },
]
</script>

<template>
  <div class="navbar-wrapper d-flex justify-center w-100 pa-4">
    <v-card
      flat
      border
      class="navbar-island glass px-6 d-flex align-center"
      height="64"
      rounded="pill"
    >
      <div class="d-flex align-center">
        <h1 class="text-h6 font-weight-bold mr-8 cursor-pointer" @click="$router.push('/')">
          <span class="text-primary">&lt;</span>ZHAFIR<span class="text-primary"> /&gt;</span>
        </h1>

        <!-- Desktop Menu -->
        <div class="hidden-sm-and-down d-flex gap-2">
          <v-btn
            v-for="item in navItems"
            :key="item.title"
            :to="item.path"
            variant="text"
            rounded="pill"
            class="nav-btn"
            active-color="primary"
          >
            {{ item.title }}
          </v-btn>
        </div>
      </div>

      <v-spacer></v-spacer>

      <div class="d-flex align-center gap-2">
        <!-- Theme Toggle -->
        <v-btn icon size="small" @click="toggleTheme" class="glow-primary">
          <v-icon size="small">{{ theme.global.current.value.dark ? 'mdi-weather-sunny' : 'mdi-moon-waning-crescent' }}</v-icon>
        </v-btn>

        <!-- Mobile Menu Toggle -->
        <v-app-bar-nav-icon class="hidden-md-and-up" @click="drawer = !drawer"></v-app-bar-nav-icon>
      </div>
    </v-card>
  </div>

  <!-- Mobile Drawer -->
  <v-navigation-drawer v-model="drawer" temporary location="top" class="glass">
    <v-list class="pa-4">
      <v-list-item
        v-for="item in navItems"
        :key="item.title"
        :to="item.path"
        :prepend-icon="item.icon"
        :title="item.title"
        active-color="primary"
        rounded="pill"
        class="mb-2"
        @click="drawer = false"
      ></v-list-item>
    </v-list>
  </v-navigation-drawer>
</template>

<style scoped>
.navbar-wrapper {
  position: fixed;
  top: 0;
  z-index: 1000;
  pointer-events: none;
}

.navbar-island {
  width: 100%;
  max-width: 900px;
  pointer-events: auto;
  border-color: rgba(var(--v-theme-primary), 0.1) !important;
}

.nav-btn {
  text-transform: none;
  font-weight: 500;
  letter-spacing: 0.5px;
}

.gap-2 {
  gap: 8px;
}

.cursor-pointer {
  cursor: pointer;
}
</style>
