<script lang="ts">
  import Card from "./Card.svelte";
  interface Experience {
    title: string;
    employer: string;
    desc: string[];
  }

  const experiences: Experience[] = [
    {
      title: "Reasearch Assistant",
      employer: "University of Michigan - Oct 2024 to Present",
      desc: ["Formally verified 120 Calcite SQL rewrite rules using the Lean theorem prover."]
    },
    {
      title: "Research Software Engineer",
      employer: "University of Michigan - Feb 2024 to Present",
      desc: [
        "Improved LLM-generated TypeScript code correctness by 71% v.s. RAG by inventing a static analysis tool that retrieves relevant context for incomplete programs.",
        "Implemented the integration and automation of remote LSP method calls by designing a headless language server client to interface with TypeScript and OCaml language servers via a library method call.",
        "Accelerated onboarding by 12.5% and automated GUI tests by writing a ReasonML test suite with Alcotest."
      ]
    },
    {
      title: "Managing Online Editor",
      employer: "The Michigan Daily - Jan 2024 to Present",
      desc: [
        "Led a team of 20 software engineers and increased new and returning reader counts by 7%.",
        "Increased the retention rate of new engineers from previous year’s maximum of 50% to 93%.",
        "Increased delivery times by 20% by improving communication between subteams via Notion and standups."
      ]
    },
    {
      title: "Full-Stack Software Engineer",
      employer: "University of Michigan - May 2023 to Dec 2023",
      desc: [
        "Developed an AI web app using React and Node, enhancing student engagement and learning efficiency by 20%.",
        "Decreased AWS Lambda runtime by 75% and saved costs by optimizing queries in MongoDB.",
        "Supported an online class of 500+ students by ensuring authentication and implementing personalization features."
      ]
    },
    {
      title: "Software Engineer",
      employer: "The Michigan Daily - Oct 2022 to Dec 2023",
      desc: [
        "Served 13,000 requests weekly by creating a full-stack serverless web app.",
        "Lowered the push notification delay by 40% by caching repeated I/O operations.",
        "Reduced crashes by 50% by designing a robust full-stack architecture over a fragile Google Drive-based design."
      ]
    }
  ];
</script>

<div class="professional-experiences">
  <h1 class="pacifico-regular">Professional Experience</h1>
  {#each experiences as exp}
    <Card title={exp.title} employer={exp.employer} desc={exp.desc} />
  {/each}
</div>

<style>
  .professional-experiences {
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    scroll-snap-align: start;
  }

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
