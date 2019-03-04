import { animate, state, style, transition, trigger } from '@angular/animations';

export const Animations = {
    slideUpDown: trigger('slideUpDown', [
        state('0', style({ height: 0, transform: 'scaleY(0)', opacity: 0 })),
        state('1', style({ height: '*', transform: 'scaleY(1)', opacity: 1 })),
        transition('0 => 1', animate('400ms ease-in-out')),
        transition('1 => 0', animate('400ms ease-in-out'))
      ]),
      fadeInOut: trigger('fadeInOut', [
        transition(':enter', [
          style({
            opacity: 0
          }),
          animate(300, style({
            opacity: 1
          }))
        ]),
        transition(':leave', [
          style({
            opacity: 1
          }),
          animate(300, style({
            opacity: 0
          }))
        ])
      ]),
      fadeInOutExpandContract: trigger('fadeInOutExpandContract', [
        transition(':enter', [
          style({
            opacity: 0,
            width: 0
          }),
          animate(300, style({
            opacity: 1,
            width: '*'
          }))
        ]),
        transition(':leave', [
          style({
            opacity: 1,
            width: '*'
          }),
          animate(300, style({
            opacity: 0,
            width: 0
          }))
        ])
      ])
};
