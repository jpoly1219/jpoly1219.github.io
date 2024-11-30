<script>
  import { base } from "$app/paths";
  import About from "../components/About.svelte";
  import Projects from "../components/Projects.svelte";
  import ProfessionalExperiences from "../components/ProfessionalExperiences.svelte";
  import Fun from "../components/Fun.svelte";
  import ScrollableDiv from "../components/ScrollableDiv.svelte";

  const sections = ["about", "professional-experiences", "projects", "fun"];
</script>

<div class="container">
  <div class="left">
    <img src="./img3.webp" alt="me coding" class="profile-pic" />
  </div>
  <div class="right">
    <ScrollableDiv sectionTitles={sections} />
    <!---
    <About />
    <ProfessionalExperiences />
    <Projects />
    <Fun />
    -->
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

  .profile-pic {
    width: 80%;
    height: auto;
  }

  .right {
    width: 50%;
    height: 100%;
    min-height: 100%;
    padding-right: 3rem;
    /* position: relative; */
    /* overflow-y: scroll; */
    /* scroll-snap-type: y mandatory; */
    /* scroll-behavior: smooth; */
  }
</style>
