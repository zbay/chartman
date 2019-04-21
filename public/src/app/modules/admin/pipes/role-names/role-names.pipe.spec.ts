import { RoleNamesPipe } from '@admin/pipes/role-names/role-names.pipe';

describe('RoleNamesPipe', () => {
  it('create an instance', () => {
    const pipe = new RoleNamesPipe();
    expect(pipe).toBeTruthy();
  });
});
