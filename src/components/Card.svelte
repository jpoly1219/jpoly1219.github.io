<script lang="ts">
  const { title, metadata, desc }: { title: string; metadata: string; desc: string[] } = $props();
</script>

<div class="card">
  <h2 class="pacifico-regular">
    {title}
  </h2>
  <p class="quicksand">
    {#if metadata.slice(0, 8) === "https://"}
      <a href={metadata}>{metadata}</a>
    {:else}
      {metadata}
    {/if}
  </p>
  {#each desc as d}
    <p class="quicksand">{d}</p>
  {/each}
</div>

<style>
  .pacifico-regular {
    font-family: "Pacifico", cursive;
    font-weight: 400;
    font-style: normal;
  }

  .lora {
    font-family: "Lora", serif;
    font-optical-sizing: auto;
    font-weight: 400;
    font-style: normal;
  }

  .quicksand {
    font-family: "Quicksand", sans-serif;
    font-optical-sizing: auto;
    font-weight: 500;
    font-style: normal;
  }
</style>
