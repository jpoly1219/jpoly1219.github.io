<script lang="ts">
  import { onMount } from "svelte";
  import { fly } from "svelte/transition";
  import About from "./About.svelte";
  import Projects from "./Projects.svelte";
  import ProfessionalExperiences from "./ProfessionalExperiences.svelte";
  import Fun from "./Fun.svelte";

  const { sectionTitles }: { sectionTitles: string[] } = $props();
  console.log(sectionTitles);

  let activeSection = $state(0);
  let containerRef: HTMLDivElement;
  let lastScrollTime = 0;
  const scrollCooldown = 500;
  let startY = 0;

  onMount(() => {
    const handleScroll = (event: WheelEvent) => {
      event.preventDefault();
      const now = new Date().getTime();
      if (now - lastScrollTime < scrollCooldown) return;

      const scrollDirection = event.deltaY > 0 ? 1 : -1;
      const nextSection = Math.max(
        0,
        Math.min(sectionTitles.length - 1, activeSection + scrollDirection)
      );

      if (nextSection !== activeSection) {
        activeSection = nextSection;
        lastScrollTime = now;
      }
      console.log(scrollDirection);
      console.log(activeSection);
    };

    const handleTouchScroll = (event: TouchEvent) => {
      event.preventDefault();
      const now = new Date().getTime();
      if (now - lastScrollTime < scrollCooldown) return;

      // Handle touch scroll (for mobile)
      const moveY = event.touches[0].pageY;
      // const diff = startY - moveY;
      // startY = 0;
      // console.log(moveY, diff);

      const scrollDirection = moveY > 0 ? 1 : -1;
      const nextSection = Math.max(
        0,
        Math.min(sectionTitles.length - 1, activeSection + scrollDirection)
      );

      if (nextSection !== activeSection) {
        activeSection = nextSection;
        lastScrollTime = now;
      }
      console.log(scrollDirection);
      console.log(activeSection);
    };

    containerRef.addEventListener("wheel", handleScroll, { passive: false });
    containerRef.addEventListener("touchmove", handleTouchScroll, { passive: false });

    return () => {
      containerRef.removeEventListener("wheel", handleScroll);
      containerRef.removeEventListener("touchmove", handleTouchScroll);
    };
  });

  function goToSection(index: number) {
    activeSection = index;
  }

  let direction = $derived(activeSection > activeSection - 1 ? 1 : -1);
</script>

<div bind:this={containerRef} class="scrollable-container">
  {#each sectionTitles as sectionTitle, index (index)}
    {#if index === activeSection}
      <div
        class="component-container"
        in:fly={{ y: 100 * direction, duration: 300 }}
        out:fly={{ y: -100 * direction, duration: 300 }}
      >
        {#if sectionTitle === "about"}
          <About />
        {/if}
        {#if sectionTitle === "professional-experiences"}
          <ProfessionalExperiences />
        {/if}
        {#if sectionTitle === "projects"}
          <Projects />
        {/if}
        {#if sectionTitle === "fun"}
          <Fun />
        {/if}
      </div>
    {/if}
  {/each}

  <div class="scroll-nav-container">
    <nav class="scroll-nav">
      {#each sectionTitles as _, index}
        <button
          onclick={() => goToSection(index)}
          class="scroll-button {activeSection === index
            ? 'scroll-button-active'
            : 'scroll-button-inactive bg-gray-400'}"
          aria-label="Go to section {index + 1}"
        ></button>
      {/each}
    </nav>
  </div>
  <!---
  -->
</div>

<!---
<svelte:window
  on:keydown={(e) => {
    if (e.key === "ArrowUp" && activeSection > 0) {
      goToSection(activeSection - 1);
    } else if (e.key === "ArrowDown" && activeSection < sections.length - 1) {
      goToSection(activeSection + 1);
    }
  }}
/>
-->

<style>
  .scrollable-container {
    width: 100%;
    height: 100%;
    /* display: flex; */
    /* flex-direction: row; */
    /* position: relative; */
  }

  .component-container {
    width: 100%;
    height: 100%;
    /* margin-left: 4rem; */
    /* margin-right: 4rem; */
  }

  .scroll-nav {
    position: absolute;
    right: 1.5rem;
    top: 50%; /* top-1/2 */
    transform: translateY(-50%); /* transform -translate-y-1/2 */
    display: flex; /* flex */
    flex-direction: column; /* flex-col */
    gap: 0.5rem; /* space-y-2 (2 * 0.25rem = 0.5rem) */
    z-index: 10; /* z-10 */
  }

  .scroll-button {
    width: 1rem; /* w-3 (3 * 0.25rem = 0.75rem) */
    height: 1rem; /* h-3 (3 * 0.25rem = 0.75rem) */
    border-radius: 100%; /* rounded-full */
    border: none;
    cursor: pointer;
  }

  .scroll-button-active {
    background-color: darkgray;
  }

  .scroll-button-inactive {
    background-color: bg-gray-400;
  }
</style>
