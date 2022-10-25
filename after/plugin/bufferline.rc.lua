local status, bufferline = pcall(require, 'bufferline')

if (not status) then return end

bufferline.setup {
  highlights = {
    fill = {
      bg = '#171925'
    }
  }
}
