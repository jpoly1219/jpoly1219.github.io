<!---
<script lang="ts">
  interface CardData {
    title: string;
    metadata: string;
    desc: string[];
  }

  const { cardData }: { cardData: CardData[] } = $props();
</script>

<div class="carousel"></div>
-->
<script lang="ts">
  import { flip } from "svelte/animate";
  import { crossfade } from "svelte/transition";
  import { quintOut } from "svelte/easing";
  import Card from "./Card.svelte";

  // Sample data for cards
  // let cards = [
  //   { id: 1, title: "Card 1", content: "Content for Card 1" },
  //   { id: 2, title: "Card 2", content: "Content for Card 2" },
  //   { id: 3, title: "Card 3", content: "Content for Card 3" },
  //   { id: 4, title: "Card 4", content: "Content for Card 4" },
  //   { id: 5, title: "Card 5", content: "Content for Card 5" }
  // ];

  interface CardData {
    title: string;
    metadata: string;
    desc: string[];
  }

  const { cardData }: { cardData: CardData[] } = $props();

  // let visibleCards = $state(cardData.slice(0, 3));
  let visibleCards = $state([cardData[0]]);
  let currentIndex = $state(0);

  const [send, receive] = crossfade({
    duration: 400,
    fallback(node, params) {
      const style = getComputedStyle(node);
      const transform = style.transform === "none" ? "" : style.transform;

      return {
        duration: 600,
        easing: quintOut,
        css: (t) => `
          transform: ${transform} scale(${t});
          opacity: ${t}
        `
      };
    }
  });

  function moveLeft() {
    if (currentIndex > 0) {
      currentIndex--;
      updateVisibleCards();
    }
  }

  function moveRight() {
    if (currentIndex < cardData.length - 1) {
      currentIndex++;
      updateVisibleCards();
    }
  }

  function updateVisibleCards() {
    // visibleCards = cardData.slice(currentIndex, currentIndex + 3);
    visibleCards = [cardData[currentIndex]];
  }
</script>

<div class="relative w-full max-w-3xl mx-auto p-4">
  <div class="flex justify-center space-x-4">
    {#each visibleCards as card (card.desc)}
      <div
        animate:flip={{ duration: 300 }}
        in:receive={{ key: card.desc }}
        out:send={{ key: card.desc }}
        class="bg-white shadow-lg rounded-lg p-6 w-64"
      >
        <Card title={card.title} metadata={card.metadata} desc={card.desc} />
      </div>
    {/each}
  </div>
  <div class="flex justify-between items-center mb-4">
    <button
      class="bg-blue-500 text-white px-4 py-2 rounded-full focus:outline-none"
      on:click={moveLeft}
      disabled={currentIndex === 0}
    >
      ←
    </button>
    <button
      class="bg-blue-500 text-white px-4 py-2 rounded-full focus:outline-none"
      on:click={moveRight}
      disabled={currentIndex === cardData.length - 1}
    >
      →
    </button>
  </div>
</div>
