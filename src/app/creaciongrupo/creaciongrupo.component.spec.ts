import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CreaciongrupoComponent } from './creaciongrupo.component';

describe('CreaciongrupoComponent', () => {
  let component: CreaciongrupoComponent;
  let fixture: ComponentFixture<CreaciongrupoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [CreaciongrupoComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CreaciongrupoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
