export class Demo {
  message: string;

  constructor(message: string) {
    this.message = message;
  }

  hello() {
    return 'Hello ' + this.message;
  }
}

const demo = new Demo('Typescript');
console.log(demo.hello());