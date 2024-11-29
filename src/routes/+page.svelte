<script>
  import { base } from "$app/paths";
  import ScrollableDiv from "../components/ScrollableDiv.svelte";

  const sections = ["about", "professional-experiences", "projects", "fun"];
</script>

<div class="container">
  <div class="left">
    <img src="%sveltekit.assets%/img3.webp" alt="me coding" />
  </div>
  <div class="right">
    <ScrollableDiv sectionTitles={sections} />
  </div>
</div>

<style>
  :global(body) {
    margin: 0;
    padding: 0;
    overflow: hidden;
    /* background-color: #fdf6e3; */
  }

  .container {
    display: flex;
    flex-direction: row;
    width: 100vw;
    height: 100vh;
  }

  .left {
    width: 50%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .right {
    width: 50%;
    height: 100%;
    min-height: 100%;
    padding-right: 3rem;
    position: relative;
  }
</style>
