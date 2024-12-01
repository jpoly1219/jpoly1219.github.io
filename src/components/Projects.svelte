<script lang="ts">
  import Card from "./Card.svelte";
  import Carousel from "./Carousel.svelte";

  interface ProjectItem {
    title: string;
    metadata: string;
    desc: string[];
  }

  const projects: ProjectItem[] = [
    {
      title: "ChatLSP",
      metadata: "Website under construction!",
      desc: [
        "Lead the development of an augmented language server to embed LLM-friendly features into different language servers.",
        "Created a VSCode extension to provide a GitHub Copilot-esque developer experience."
      ]
    },
    {
      title: "Statically Contextualizing Large Language Models with Typed Holes",
      metadata: "https://dl.acm.org/doi/10.1145/3689728",
      desc: [
        "Co-authored a paper accepted to OOPSLA 2024 on LLM static contextualization to boost code completion correctness.",
        "Devised a repository-aware contextualization algorithm and replicated results with a high-resource language such as TypeScript."
      ]
    },
    {
      title: "Context-Extractor",
      metadata: "https://github.com/jpoly1219/context-extractor",
      desc: [
        "Created a static analysis tool to analyze the type of an incomplete program hole, then extract relevant types and headers in the codebase."
      ]
    },
    {
      title: "ts-lsp-client",
      metadata: "https://github.com/jpoly1219/ts-lsp-client",
      desc: [
        "Improved upon a editor-agnostic language server client to call language server features remotely, making the previously manual process automatic.",
        "Added support for more TypeScript LSP methods coverage and Ocaml LSP by upgrading the JSON-RPC marshalling process."
      ]
    },
    {
      title: "Gambas",
      metadata: "https://github.com/jpoly1219/gambas",
      desc: [
        "Published a data wrangling tool for Go developers. Supported 1D/2D data handling, file I/O, and statistics, with test-driven development and benchmarks.",
        "Improved performance by 80% by using goroutines. Received 80+ stars on GitHub."
      ]
    },
    {
      title: "Go-Leetcode",
      metadata: "https://github.com/jpoly1219/go-leetcode",
      desc: [
        "Developed and deployed a containerized full-stack web app for students practicing coding skills.",
        "Decreased code evaluation time by 30% using non-blocking operations."
      ]
    }
  ];
</script>

<div class="projects">
  <h1 class="pacifico-regular">Projects, Contributions, and Publications</h1>
  <!---
  {#each projects as p}
    <Card title={p.title} metadata={p.metadata} desc={p.desc} />
  {/each}
  -->
  <Carousel cardData={projects} />
</div>

<style>
  .projects {
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    /* scroll-snap-align: start; */
    @media screen and (max-width: 480px) {
      justify-content: start;
    }
  }

  /* h1 { */
  /*   font-size: 2rem; */
  /* } */
  /**/
  /* p, */
  /* li { */
  /*   font-size: 1.5rem; */
  /* } */

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
