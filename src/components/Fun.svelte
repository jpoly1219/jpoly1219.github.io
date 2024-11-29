<script lang="ts">
  import BumperSticker from "./BumperSticker.svelte";

  interface BumperStickerType {
    link: string;
    desc: string;
  }
  const bumperStickers: BumperStickerType[] = [
    {
      link: "https://img.shields.io/badge/OCaml-EC6813.svg?style=for-the-badge&logo=OCaml&logoColor=white",
      desc: "OCaml"
    },
    {
      link: "https://img.shields.io/badge/Reason-DD4B39.svg?style=for-the-badge&logo=Reason&logoColor=white",
      desc: "Reason"
    },
    {
      link: "https://img.shields.io/badge/Racket-9F1D20.svg?style=for-the-badge&logo=Racket&logoColor=white",
      desc: "Racket"
    },
    {
      link: "https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white",
      desc: "Go"
    },
    {
      link: "https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white",
      desc: "TypeScript"
    },
    {
      link: "https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E",
      desc: "JavaScript"
    },
    {
      link: "https://img.shields.io/badge/C%2B%2B-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white",
      desc: "C++"
    },
    {
      link: "https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white",
      desc: "Python"
    },
    {
      link: "https://img.shields.io/badge/Lua-2C2D72.svg?style=for-the-badge&logo=Lua&logoColor=white",
      desc: "Lua"
    },
    {
      link: "https://img.shields.io/badge/NIX-5277C3.svg?style=for-the-badge&logo=NixOS&logoColor=white",
      desc: "Nix"
    },
    {
      link: "https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white",
      desc: "HTML"
    },
    {
      link: "https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white",
      desc: "CSS"
    },
    {
      link: "https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white",
      desc: "NodeJS"
    },
    {
      link: "https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB",
      desc: "React"
    },
    {
      link: "https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00",
      desc: "Svelte"
    },
    {
      link: "https://img.shields.io/badge/Astro-BC52EE.svg?style=for-the-badge&logo=Astro&logoColor=white",
      desc: "Astro"
    },
    {
      link: "https://img.shields.io/badge/vite-%23646CFF.svg?style=for-the-badge&logo=vite&logoColor=white",
      desc: "Vite"
    },
    {
      link: "https://img.shields.io/badge/express.js-%23404d59.svg?style=for-the-badge&logo=express&logoColor=%2361DAFB",
      desc: "ExpressJS"
    },
    {
      link: "https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white",
      desc: "TailwindCSS"
    },
    {
      link: "https://img.shields.io/badge/Flask-000000?style=for-the-badge&logo=flask&logoColor=white",
      desc: "Flask"
    },
    {
      link: "https://img.shields.io/badge/Django-092E20?style=for-the-badge&logo=django&logoColor=white",
      desc: "Django"
    },
    {
      link: "https://img.shields.io/badge/Insomnia-4000BF?logo=insomnia&logoColor=white&style=for-the-badge",
      desc: "Insomnia"
    },
    {
      link: "https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=Postman&logoColor=white",
      desc: "Postman"
    },
    {
      link: "https://img.shields.io/badge/MongoDB-4EA94B?style=for-the-badge&logo=mongodb&logoColor=white",
      desc: "MongoDB"
    },
    {
      link: "https://img.shields.io/badge/Mongoose-880000.svg?style=for-the-badge&logo=Mongoose&logoColor=white",
      desc: "Mongoose"
    },
    {
      link: "https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white",
      desc: "MySQL"
    },
    {
      link: "https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white",
      desc: "PostgreSQL"
    },
    {
      link: "https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white",
      desc: "SQLite"
    },
    {
      link: "https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white",
      desc: "Git"
    },
    {
      link: "https://img.shields.io/badge/Amazon_AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white",
      desc: "AWS"
    },
    {
      link: "https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white",
      desc: "Docker"
    },
    {
      link: "https://img.shields.io/badge/Apache%20Kafka-231F20.svg?style=for-the-badge&logo=Apache-Kafka&logoColor=white",
      desc: "Apache Kafka"
    },
    {
      link: "https://img.shields.io/badge/Vultr-007BFC.svg?style=for-the-badge&logo=vultr",
      desc: "Vultr"
    },
    {
      link: "https://img.shields.io/badge/Cloudflare%20Pages-F38020.svg?style=for-the-badge&logo=Cloudflare-Pages&logoColor=white",
      desc: "Cloudflare Pages"
    },
    {
      link: "https://img.shields.io/badge/WSL-0a97f5?style=for-the-badge&logo=linux&logoColor=white",
      desc: "WSL"
    },
    {
      link: "https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white",
      desc: "Ubuntu"
    },
    {
      link: "https://img.shields.io/badge/Fedora-51A2DA.svg?style=for-the-badge&logo=Fedora&logoColor=white",
      desc: "Fedora"
    },
    {
      link: "https://img.shields.io/badge/OpenAI-412991.svg?style=for-the-badge&logo=OpenAI&logoColor=white",
      desc: "OpenAI"
    }
  ];
</script>

<div class="fun">
  <h1 class="pacifico-regular">Fun Stuff</h1>
  <h2 class="pacifico-regular">My Gears</h2>
  <h3 class="pacifico-regular">Desk</h3>
  <ul class="quicksand">
    <li>Self-built PC with Fractal Nord case</li>
    <li>i7-14700K, 64GB, Arc A750</li>
    <li>Samsung S80A 4K monitor</li>
    <li>Glove 80 keyboard</li>
    <li>ProtoArc EM03 fingerball mouse</li>
    <li>Sennheiser Momentum 4 headphones</li>
    <li>Branch Ergonomic Chair</li>
  </ul>
  <h3 class="pacifico-regular">On The Go</h3>
  <ul class="quicksand">
    <li>Thinkpad Z16 Gen 1</li>
    <li>HHKB Professional Hybrid</li>
    <li>Samsung Galaxy S23+</li>
    <li>Samsung Galaxy Tab S8</li>
    <li>Samsung Galaxy Buds FE</li>
    <li>Supernote A5X</li>
  </ul>
  <h1 class="pacifico-regular">Bumper Stickers :D</h1>
  <div class="bumper-stickers-container">
    {#each bumperStickers as b}
      <BumperSticker link={b.link} desc={b.desc} />
    {/each}
  </div>
</div>

<style>
  .fun {
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
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
