import 'bootstrap';
import 'select2/dist/css/select2.css';
import { selectMultiple } from '../components/form';

console.log('Hello World from Webpacker')
selectMultiple();

const arrowDown = document.querySelector("#arrow-down")

arrowDown.addEventListener('click', (event) => {
  window.scrollTo({ top: 800, behavior: 'smooth' })
});
