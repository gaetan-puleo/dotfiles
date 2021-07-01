local snap = require'snap'

snap.register.map('n', '<Leader>fg', snap.create(function ()
  return {
    producer = snap.get'producer.ripgrep.vimgrep',
    select = snap.get'select.vimgrep'.select,
    multiselect = snap.get'select.vimgrep'.multiselect,
    views = {snap.get'preview.vimgrep'}
  }
end))
