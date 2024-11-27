<script lang="ts">
  import { onMount } from "svelte";
  import { fly } from "svelte/transition";
  import About from "./About.svelte";
  import Projects from "./Projects.svelte";

  const { sectionTitles }: { sectionTitles: string[] } = $props();
  console.log(sectionTitles);

  let activeSection = $state(0);
  let containerRef: HTMLDivElement;
  let lastScrollTime = 0;
  const scrollCooldown = 500;

  // const sections = [
  //   { bg: "bg-red-200", title: "Section 1" },
  //   { bg: "bg-green-200", title: "Section 2" },
  //   { bg: "bg-blue-200", title: "Section 3" }
  // ];

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

    containerRef.addEventListener("wheel", handleScroll, { passive: false });

    return () => {
      containerRef.removeEventListener("wheel", handleScroll);
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
        {#if sectionTitle === "projects"}
          <Projects />
        {/if}
      </div>
    {/if}
  {/each}

  <!---
  <nav class="absolute right-4 top-1/2 transform -translate-y-1/2 flex flex-col space-y-2 z-10">
    {#each sectionTitles as _, index}
      <button
        onclick={() => goToSection(index)}
        class="w-3 h-3 rounded-full {activeSection === index ? 'bg-white' : 'bg-gray-400'}"
        aria-label="Go to section {index + 1}"
      ></button>
    {/each}
  </nav>
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
  }

  .component-container {
    width: 100%;
    height: 100%;
  }
</style>
