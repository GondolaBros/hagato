module Hagato.Core.Input where

import Hagato.Core.Math.Vec2 (Vec2)

data Input = Input
  { events :: ![Event]
  , cursor :: !Vec2
  }
  deriving (Eq, Ord, Read, Show)

data Event
  = KeyEvent !Key !Int !KeyState !Modifiers
  | MouseEvent !Vec2 !MouseButton !MouseButtonState !Modifiers
  | ScrollEvent !Vec2 !Vec2
  | ResizeEvent !Vec2
  | CloseEvent
  | TickEvent !Float
  deriving (Eq, Ord, Read, Show)

data Key
  = Key'Unknown
  | Key'Space
  | Key'Apostrophe
  | Key'Comma
  | Key'Minus
  | Key'Period
  | Key'Slash
  | Key'0
  | Key'1
  | Key'2
  | Key'3
  | Key'4
  | Key'5
  | Key'6
  | Key'7
  | Key'8
  | Key'9
  | Key'Semicolon
  | Key'Equal
  | Key'A
  | Key'B
  | Key'C
  | Key'D
  | Key'E
  | Key'F
  | Key'G
  | Key'H
  | Key'I
  | Key'J
  | Key'K
  | Key'L
  | Key'M
  | Key'N
  | Key'O
  | Key'P
  | Key'Q
  | Key'R
  | Key'S
  | Key'T
  | Key'U
  | Key'V
  | Key'W
  | Key'X
  | Key'Y
  | Key'Z
  | Key'LeftBracket
  | Key'Backslash
  | Key'RightBracket
  | Key'GraveAccent
  | Key'World1
  | Key'World2
  | Key'Escape
  | Key'Enter
  | Key'Tab
  | Key'Backspace
  | Key'Insert
  | Key'Delete
  | Key'Right
  | Key'Left
  | Key'Down
  | Key'Up
  | Key'PageUp
  | Key'PageDown
  | Key'Home
  | Key'End
  | Key'CapsLock
  | Key'ScrollLock
  | Key'NumLock
  | Key'PrintScreen
  | Key'Pause
  | Key'F1
  | Key'F2
  | Key'F3
  | Key'F4
  | Key'F5
  | Key'F6
  | Key'F7
  | Key'F8
  | Key'F9
  | Key'F10
  | Key'F11
  | Key'F12
  | Key'F13
  | Key'F14
  | Key'F15
  | Key'F16
  | Key'F17
  | Key'F18
  | Key'F19
  | Key'F20
  | Key'F21
  | Key'F22
  | Key'F23
  | Key'F24
  | Key'F25
  | Key'Pad0
  | Key'Pad1
  | Key'Pad2
  | Key'Pad3
  | Key'Pad4
  | Key'Pad5
  | Key'Pad6
  | Key'Pad7
  | Key'Pad8
  | Key'Pad9
  | Key'PadDecimal
  | Key'PadDivide
  | Key'PadMultiply
  | Key'PadSubtract
  | Key'PadAdd
  | Key'PadEnter
  | Key'PadEqual
  | Key'LeftShift
  | Key'LeftControl
  | Key'LeftAlt
  | Key'LeftSuper
  | Key'RightShift
  | Key'RightControl
  | Key'RightAlt
  | Key'RightSuper
  | Key'Menu
  deriving (Eq, Ord, Read, Show)

data KeyState
  = Key'Pressed
  | Key'Released
  | Key'Repeating
  deriving (Eq, Ord, Read, Show)

data Modifiers = Modifiers
  { shift    :: Bool
  , control  :: Bool
  , alt      :: Bool
  , super    :: Bool
  , capsLock :: Bool
  , numLock  :: Bool
  }
  deriving (Eq, Ord, Read, Show)

data MouseButton
  = Mouse'Left
  | Mouse'Right
  | Mouse'Middle
  | Mouse'Extra1
  | Mouse'Extra2
  | Mouse'Extra3
  | Mouse'Extra4
  | Mouse'Extra5
  deriving (Eq, Ord, Read, Show)

data MouseButtonState
  = Mouse'Pressed
  | Mouse'Released
  deriving (Eq, Ord, Read, Show)