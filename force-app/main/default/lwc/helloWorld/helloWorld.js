import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'THIS WILL BE A NEW BRANCH WHICH WILL BE PULLED TO THE RBD AND CHERRYPICKED FURTHER ON';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}