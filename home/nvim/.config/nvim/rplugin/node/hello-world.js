module.exports = plugin => {
  const {nvim: n} = plugin;
  plugin.setOptions({ dev: true });

  plugin.registerCommand(
    "EchoMessage",
    async () => {
      try {
        await plugin.nvim.outWrite("Dayman (ah-ah-ah) \n");
      } catch (err) {
        console.error(err);
      }
    },
    { sync: false }
  );
  plugin.registerCommand(
    "LogMessage",
    async () => {
      const {nvim} = plugin;
      const buffer = await nvim.buffer;

      await nvim.command('vsp');
      
      debugger;
    },

    { sync: false }
  );
};
