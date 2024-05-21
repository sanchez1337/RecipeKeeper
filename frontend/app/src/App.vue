<template>
  <header class="py-10">
    <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
      <nav class="relative z-50 flex justify-between">
        <div class="flex items-center md:gap-x-12">
          <a aria-label="Home" href="#home">
            LOGO HERE
          </a>
          <div class="hidden md:flex md:gap-x-6">
            <a href="#features" class="inline-block rounded-lg px-2 py-1 text-sm text-slate-700 hover:bg-slate-100 hover hover:text-slate-900">Features</a>
            <a href="#testimonials" class="inline-block rounded-lg px-2 py-1 text-sm text-slate-700 hover:bg-slate-100 hover hover:text-slate-900">Testimonials</a>
            <a href="#pricing" class="inline-block rounded-lg px-2 py-1 text-sm text-slate-700 hover:bg-slate-100 hover hover:text-slate-900">Pricing</a>
          </div>
        </div>
        <div class="flex items-center gap-x-5 md:gap-x-8">
          <div class="hidden md:block">
            <a href="#login" class="group inline-flex items-center justify-center rounded-full">Log in</a>
          </div>
          <a class="group inline-flex items-center justify-center rounded-full py-2 px-4 text-sm font-semibold focus:outline-none focus-visible:outline-2 focus-visible:outline-offset-2 bg-rk-accent100 text-rk-text100 hover:text-rk-text200 hover:bg-rk-accent200 active:bg-blue-800 active:text-blue-100 focus-visible:outline-blue-600" color="blue" variant="solid" href="#register"><span>Get started <span class="hidden lg:inline">today</span></span></a>
        </div>
      </nav>
    </div>
  </header>
  <main class="px-6 py-6 bg-rk-bg100">
    <RouterView />
  </main>
</template>

