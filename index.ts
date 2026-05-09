import { definePluginEntry } from "openclaw/plugin-sdk/plugin-entry";

export default definePluginEntry({
  id: "coven-devkit",
  name: "OpenCoven Coven Devkit",
  description: "Bundled skills for expert Coven development workflows.",
  register() {
    // Skills are declared in openclaw.plugin.json. No runtime hooks are needed.
  },
});
