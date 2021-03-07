# accessors
TypeScript supports getters/setters as a way of intercepting accesses to a member of an object.
Accessors with a get and no set are automatically inferred to be readonly.

example:

class Employee {
    private _fullName: string;

    get fullName(): string {
        return this._fullName;
    }

    set fullName(newName: string) {
        this._fullName = newName;
    }
}


# sources
https://www.typescriptlang.org/docs/handbook/classes.html

