const { Client } = require('discord.js');
const client = new Client({ ws: { intents: ['GUILDS', 'GUILD_MESSAGES'] } });
const dotenv = require('dotenv');
dotenv.config();

client.on('ready', () => {
  console.log(`ready to go`);
});

client.on('message', msg => {
  if (msg.content === 'js/hello') {
    msg.channel.send('Hello!');
  }
});

client.login(`${process.env.TOKEN}`);