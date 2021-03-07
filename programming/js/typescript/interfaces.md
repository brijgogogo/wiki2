# interfaces
A specification identifying a related set of properties and methods.
A class commits to supporting the specification by implementing the interface.
Use as a data type.
Development time only!

export interface IDemo {
  id: number;
  code: string;
  dob: Date;
  show(num: number): number;
}

demoes : any[];
demoes: IDemo[];


