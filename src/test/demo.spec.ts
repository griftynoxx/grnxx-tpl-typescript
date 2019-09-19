import { Demo } from '../app/demo';

describe('Demo', () => {
  it('should return Hello Typescript', () => {
    let demo = new Demo('Typescript');
    expect(demo.hello()).toBe('Hello Typescript');
  })
})