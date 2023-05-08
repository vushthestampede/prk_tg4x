# Initialize a Keyboard
kbd = Keyboard.new

# Initialize GPIO assign
kbd.init_pins(
  [ 9, 5, 8, 4, 7, 17, 6, 16 ],
  [ 0, 20, 22, 26, 27, 28, 29 ]
)

# default layer should be added at first
kbd.add_layer :default, %i[
  KC_ESC    KC_Q     KC_W      KC_E     KC_R     KC_T    KC_Y       KC_U       KC_I      KC_O      KC_P      KC_NO     KC_BSPC
  KC_NO     KC_TAB   KC_A      KC_S     KC_D     KC_F    KC_G       KC_H       KC_J      KC_K      KC_L      KC_SCLN   KC_ENT
  KC_NO     KC_NO    KC_LSFT   KC_Z     KC_X     KC_C    KC_V       KC_B       KC_N      KC_M      KC_COMM   KC_DOT    KC_UP     KC_RSFT
  KC_NO     KC_NO    KC_LCTL   KC_LGUI  KC_LALT  KC_NO   SPC_RAISE  SPC_LOWER  KC_NO     KC_NO     KC_DEL    KC_LEFT   KC_DOWN   KC_RGHT
]

kbd.add_layer :raise, %i[
  KC_F1     KC_F2    KC_F3     KC_F4    KC_F5    KC_F6   KC_F7      KC_F8      KC_F9     KC_F10    KC_F11    KC_NO     KC_F12
  KC_NO     KC_NO    KC_NO     KC_NO    KC_NO    KC_NO   KC_NO      KC_NO      KC_NO     KC_NO     KC_NO     DM_PLY1   NK_TOGG
  KC_NO     KC_NO    KC_CAPS   KC_PAUS  KC_NO    KC_NO   KC_NO      KC_NO      KC_NO     KC_NO     KC_NO     KC_NO    DM_RSTP    DM_REC1
  KC_NO     KC_NO    KC_TRNS   KC_TRNS  KC_TRNS  KC_NO   KC_TRNS    KC_PSCR    KC_NO     KC_NO     KC_RCTL   KC_NO    KC_NO      TO(3)
]

kbd.add_layer :lower, %i[
  KC_1      KC_2     KC_3      KC_4     KC_5     KC_6    KC_7       KC_8       KC_9      KC_0      KC_MINS   KC_NO     KC_EQL
  KC_NO     KC_GRV   KC_NO     KC_NO    KC_NO    KC_NO   KC_NO      KC_NO      KC_LBRC   KC_RBRC   KC_SCLN   KC_NUHS   KC_NO
  KC_NO     KC_NO    KC_TRNS   KC_NUBS  KC_NO    KC_NO   KC_NO      KC_NO      KC_M      KC_COMM   KC_DOT    KC_SLSH   KC_VOLU   KC_TRNS
  KC_NO     KC_NO    KC_TRNS   KC_TRNS  KC_TRNS  KC_NO   KC_MUTE    KC_TRNS    KC_NO     KC_NO     KC_RALT   KC_MPRV   KC_VOLD   KC_MNXT
]

kbd.add_layer :adjust, %i[
  TO(0)     KC_NO    KC_NO     KC_NO    KC_NO    KC_NO   KC_NO      KC_NO      KC_NO     KC_NO     KC_NO     KC_NO     KC_NO
  KC_NO     KC_NO    KC_NO     KC_NO    KC_NO    KC_NO   KC_NO      KC_NO      KC_NO     KC_NO     KC_NO     KC_NO     KC_NO
  KC_NO     KC_NO    KC_NO     KC_NO    KC_NO    KC_NO   KC_NO      KC_NO      KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO
  KC_NO     KC_NO    KC_NO     KC_NO    KC_NO    KC_NO   KC_NO      KC_NO      KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO
]

#
#                   Your custom     Keycode or             Keycode (only modifiers)      Release time      Re-push time
#                   key name        Array of Keycode       or Layer Symbol to be held    threshold(ms)     threshold(ms)
#                                   or Proc                or Proc which will run        to consider as    to consider as
#                                   when you click         while you keep press          `click the key`   `hold the key`
kbd.define_mode_key :SPC_RAISE,      [ :KC_SPC,             :raise,                       150,              150 ]
kbd.define_mode_key :SPC_LOWER,      [ :KC_SPC,             :lower,                       150,              150 ]

kbd.start!
