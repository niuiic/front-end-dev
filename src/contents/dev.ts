import type { PlasmoCSConfig } from 'plasmo'

export const config: PlasmoCSConfig = {
  matches: ['https://*', 'http://*']
}

window.addEventListener('load', () => {
  console.log('hello world')
})
