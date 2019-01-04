module.exports = {
  'matthewferderber/lq-api': {
    type: 'node',
    name: 'lq-api',
    git_url: 'https://github.com/matthewferderber/lq-api.git',
  },
  'matthewferderber/league-quest': {
    type: 'web',
    name: 'league-quest',
    git_url: 'https://github.com/matthewferderber/league-quest.git',
    location: 'cobaltium.net',
  },
  'matthewferderber/co-bot': {
    type: 'docker',
    name: 'co-bot',
    git_url: 'https://github.com/matthewferderber/co-bot.git',
    image_name: 'matthewferderber/co-bot',
    tag: 'latest',
    arguments: ['-e DISCORD_BOT_TOKEN=$DISCORD_BOT_TOKEN', '-e LEAGUE_API_KEY=$LEAGUE_API_KEY']
  },
  'matthewferderber/league-rank-api': {
    type: 'node',
    name: 'league-rank-api',
    git_url: 'https://github.com/matthewferderber/league-rank-api.git',
  },
  'matthewferderber/league-rank': {
    type: 'web',
    name: 'league-rank',
    git_url: 'https://github.com/matthewferderber/league-rank.git',
    location: 'cobaltium.net',
  },
};
