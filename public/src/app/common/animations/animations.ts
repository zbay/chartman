import { animate, state, style, transition, trigger } from '@angular/animations';

import { NavbarLoadStatus } from '@app/enums/navbar-load-status';

export const Animations = {
    slideUpDown: trigger('slideUpDown', [
        state('0', style({ transform: 'translateY(-100%)', opacity: 0 })),
        state('1', style({ transform: 'translateY(0)', opacity: 1 })),
        transition('0 => 1', animate('200ms ease-in-out')),
        transition('1 => 0', animate('200ms ease-in-out'))
      ]),
    slideFadeInOutFromLeft: trigger('slideFadeInOutFromLeft', [
      state('0', style({ transform: 'translateX(-100%)', width: 0, opacity: 0})),
      state('1', style({ transform: 'translateX(0)', width: '*', opacity: 1 })),
      transition('* => *', animate('300ms ease-in-out'))
    ]),
    elasticUpDown: trigger('elasticUpDown', [
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
      fadeInOutExpandContractNavButton: trigger('fadeInOutExpandContractNavButton', [
        state(`${NavbarLoadStatus.INITIAL}`, style({
          opacity: 1,
          width: '*'
        })),
        state(`${NavbarLoadStatus.SUBSEQUENT}`, style({
          opacity: 1,
          width: '*'
        })),
        state('void', style({
          opacity: 0,
          width: 0
        })),
        transition('* => void', [
          animate('300ms 300ms')
        ]),
        transition('void => subsequent', [
          animate('300ms 300ms')
        ]),
        transition('void => initial', [
          animate(0)
        ])
      ])
};
