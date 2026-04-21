<script setup lang="ts">
import Navbar from './components/Navbar.vue'
</script>

<template>
  <v-app class="tech-bg">
    <Navbar />

    <v-main class="mt-5">
      <v-container class="page-container" fluid>
        <router-view v-slot="{ Component }">
          <transition name="fade" mode="out-in">
            <component :is="Component" />
          </transition>
        </router-view>
      </v-container>
    </v-main>
  </v-app>
</template>

<style>
/* Global styles for the app */
html {
  overflow-y: auto;
}

.text-primary {
  color: rgb(var(--v-theme-primary)) !important;
}
</style>
