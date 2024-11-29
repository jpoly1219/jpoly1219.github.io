<script lang="ts">
  const { link, desc }: { link: string; desc: string } = $props();
</script>

<img src={link} alt={desc} />
