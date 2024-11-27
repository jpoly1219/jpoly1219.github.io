<script>
  import ScrollableDiv from "../components/ScrollableDiv.svelte";

  const sections = ["about", "projects"];
</script>

<div class="container">
  <div class="left">
    <p>image goes here</p>
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
    background-color: #fdf6e3;
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
  }

  .right {
    width: 50%;
    height: 100%;
    min-height: 100%;
  }
</style>
