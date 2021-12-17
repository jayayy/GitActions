import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'this was casued by a  change in the file in vs code ';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}