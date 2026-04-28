module ft.data;
import inmath.linalg;

enum BlendshapeNames : string {
    eyeBlinkLeft = "EyeBlinkLeft",
    eyeLookDownLeft = "EyeLookDownLeft",
    eyeLookInLeft = "EyeLookInLeft",
    eyeLookOutLeft = "EyeLookOutLeft",
    eyeLookUpLeft = "EyeLookUpLeft",
    eyeSquintLeft = "EyeSquintLeft",
    eyeWideLeft = "EyeWideLeft",

    eyeBlinkRight = "EyeBlinkRight",
    eyeLookDownRight = "EyeLookDownRight",
    eyeLookInRight = "EyeLookInRight",
    eyeLookOutRight = "EyeLookOutRight",
    eyeLookUpRight = "EyeLookUpRight",
    eyeSquintRight = "EyeSquintRight",
    eyeWideRight = "EyeWideRight",

    jawForward = "JawForward",
    jawLeft = "JawLeft",
    jawRight = "JawRight",
    jawOpen = "JawOpen",
    mouthClose = "MouthClose",
    mouthFunnel = "MouthFunnel",
    mouthPucker = "MouthPucker",
    mouthLeft = "MouthLeft",
    mouthRight = "MouthRight",
    mouthSmileLeft = "MouthSmileLeft",
    mouthSmileRight = "MouthSmileRight",
    mouthFrownLeft = "MouthFrownLeft",
    mouthFrownRight = "MouthFrownRight",
    mouthDimpleLeft = "MouthDimpleLeft",
    mouthDimpleRight = "MouthDimpleRight",
    mouthStretchLeft = "MouthStretchLeft",
    mouthStretchRight = "MouthStretchRight",
    mouthRollLower = "MouthRollLower",
    mouthRollUpper = "MouthRollUpper",
    mouthShrugLower = "MouthShrugLower",
    mouthShrugUpper = "MouthShrugUpper",
    mouthPressLeft = "MouthPressLeft",
    mouthPressRight = "MouthPressRight",
    mouthLowerDownLeft = "MouthLowerDownLeft",
    mouthLowerDownRight = "MouthLowerDownRight",
    mouthUpperUpLeft = "MouthUpperUpLeft",
    mouthUpperUpRight = "MouthUpperUpRight",

    browDownLeft = "BrowDownLeft",
    browDownRight = "BrowDownRight",
    browInnerUp = "BrowInnerUp",
    browOuterUpLeft = "BrowOuterUpLeft",
    browOuterUpRight = "BrowOuterUpRight",
    cheekPuff = "CheekPuff",
    cheekSquintLeft = "CheekSquintLeft",
    cheekSquintRight = "CheekSquintRight",
    noseSneerLeft = "NoseSneerLeft",
    noseSneerRight = "NoseSneerRight",

    tongueOut = "TongueOut",

    vrmNeutral = "NEUTRAL",
    vrmA = "A",
    vrmI = "I",
    vrmU = "U",
    vrmE = "E",
    vrmO = "O",
    vrmBlink = "BLINK",
    vrmJoy = "JOY",
    vrmAngry = "ANGRY",
    vrmSorrow = "SORROW",
    vrmFun = "FUN",
    vrmLookUp = "LOOKUP",
    vrmLookLeft = "LOOKLEFT",
    vrmLookRight = "LOOKRIGHT",
    vrmBlinkLeft = "BLINK_L",
    vrmBlinkRight = "BLINK_R",

    // LEFT EYE
    ftEyeBlinkLeft = "ftEyeBlinkLeft",
    ftEyeYLeft = "ftEyeYLeft",
    ftEyeXLeft = "ftEyeXLeft",
    ftEyeSquintLeft = "ftEyeSquintLeft",
    ftEyeWidenLeft = "ftEyeWidenLeft",

    // RIGHT EYE
    ftEyeBlinkRight = "ftEyeBlinkRight",
    ftEyeYRight = "ftEyeYRight",
    ftEyeXRight = "ftEyeXRight",
    ftEyeSquintRight = "ftEyeSquintRight",
    ftEyeWidenRight = "ftEyeWidenRight",

    // MOUTH
    ftMouthOpen = "ftMouthOpen",
    ftMouthX = "ftMouthX",
    ftMouthEmotion = "ftMouthEmotion",

    // VOWELS
    ftA = "ftA",
    ftI = "ftI",
    ftU = "ftU",
    ftE = "ftE",
    ftO = "ftO",
}

/**
    Names of humanoid bones according to Unity
    and the VMC protocol
*/
enum BoneNames {
    vmcHips = "Hips",
    vmcLeftUpperLeg = "LeftUpperLeg",
    vmcRightUpperLeg = "RightUpperLeg",
    vmcLeftLowerLeg = "LeftLowerLeg",
    vmcRightLowerLeg = "RightLowerLeg",
    vmcLeftFoot = "LeftFoot",
    vmcRightFoot = "RightFoot",
    vmcSpine = "Spine",
    vmcChest = "Chest",
    vmcUpperChest = "UpperChest",
    vmcNeck = "Neck",
    vmcHead = "Head",
    vmcLeftShoulder = "LeftShoulder",
    vmcRightShoulder = "RightShoulder",
    vmcLeftUpperArm = "LeftUpperArm",
    vmcRightUpperArm = "RightUpperArm",
    vmcLeftLowerArm = "LeftLowerArm",
    vmcRightLowerArm = "RightLowerArm",
    vmcLeftHand = "LeftHand",
    vmcRightHand = "RightHand",
    vmcLeftToes = "LeftToes",
    vmcRightToes = "RightToes",
    vmcLeftEye = "LeftEye",
    vmcRightEye = "RightEye",
    vmcJaw = "Jaw",
    vmcLeftThumbProximal = "LeftThumbProximal",
    vmcLeftThumbIntermediate = "LeftThumbIntermediate",
    vmcLeftThumbDistal = "LeftThumbDistal",
    vmcLeftIndexProximal = "LeftIndexProximal",
    vmcLeftIndexIntermediate = "LeftIndexIntermediate",
    vmcLeftIndexDistal = "LeftIndexDistal",
    vmcLeftMiddleProximal = "LeftMiddleProximal",
    vmcLeftMiddleIntermediate = "LeftMiddleIntermediate",
    vmcLeftMiddleDistal = "LeftMiddleDistal",
    vmcLeftRingProximal = "LeftRingProximal",
    vmcLeftRingIntermediate = "LeftRingIntermediate",
    vmcLeftRingDistal = "LeftRingDistal",
    vmcLeftLittleProximal = "LeftLittleProximal",
    vmcLeftLittleIntermediate = "LeftLittleIntermediate",
    vmcLeftLittleDistal = "LeftLittleDistal",
    vmcRightThumbProximal = "RightThumbProximal",
    vmcRightThumbIntermediate = "RightThumbIntermediate",
    vmcRightThumbDistal = "RightThumbDistal",
    vmcRightIndexProximal = "RightIndexProximal",
    vmcRightIndexIntermediate = "RightIndexIntermediate",
    vmcRightIndexDistal = "RightIndexDistal",
    vmcRightMiddleProximal = "RightMiddleProximal",
    vmcRightMiddleIntermediate = "RightMiddleIntermediate",
    vmcRightMiddleDistal = "RightMiddleDistal",
    vmcRightRingProximal = "RightRingProximal",
    vmcRightRingIntermediate = "RightRingIntermediate",
    vmcRightRingDistal = "RightRingDistal",
    vmcRightLittleProximal = "RightLittleProximal",
    vmcRightLittleIntermediate = "RightLittleIntermediate",
    vmcRightLittleDistal = "RightLittleDistal",
    vmcLastBone = "LastBone",


    ftHead = "Head"
}


enum KeyNames {
    // Alphabet
    KeyA = "A", KeyB = "B", KeyC = "C", KeyD = "D", KeyE = "E", KeyF = "F", KeyG = "G", KeyH = "H", KeyI = "I", KeyJ = "J",
    KeyK = "K", KeyL = "L", KeyM = "M", KeyN = "N", KeyO = "O", KeyP = "P", KeyQ = "Q", KeyR = "R", KeyS = "S", KeyT = "T",
    KeyU = "U", KeyV = "V", KeyW = "W", KeyX = "X", KeyY = "Y", KeyZ = "Z",
    
    // Numbers
    Key0 = "0", Key1 = "1", Key2 = "2", Key3 = "3", Key4 = "4", Key5 = "5", Key6 = "6", Key7 = "7", Key8 = "8", Key9 = "9",
    
    // Symbols and punctuation
    KeyBacktick = "`", KeyTilde = "~",
    KeyMinus = "-", KeyUnderscore = "_",
    KeyEquals = "=", KeyPlus = "+",
    KeyOpenBracket = "[", KeyCloseBracket = "]",
    KeyBackslash = "\\", KeyPipe = "|",
    KeySemicolon = ";", KeyColon = ":",
    KeyApostrophe = "'", KeyDoubleQuote = "\"",
    KeyComma = ",", KeyLess = "<",
    KeyPeriod = ".", KeyGreater = ">",
    KeySlash = "/", KeyQuestion = "?",
    
    // Modificators and system
    KeyLeftShift = "LeftShift", KeyRightShift = "RightShift",
    KeyLeftCtrl = "LeftCtrl", KeyRightCtrl = "RightCtrl",
    KeyLeftAlt = "LeftAlt", KeyRightAlt = "RightAlt",
    KeyLeftMeta = "LeftMeta", KeyRightMeta = "RightMeta",
    KeyCapsLock = "CapsLock", KeyNumLock = "NumLock", KeyScrollLock = "ScrollLock",
    KeyPrintScreen = "PrintScreen", KeyPause = "Pause", KeyBreak = "Break",
    KeyContextMenu = "ContextMenu",
    
    // Navigation and things
    KeyEscape = "Escape", KeyTab = "Tab", KeySpace = "Space",
    KeyBackspace = "Backspace", KeyEnter = "Enter", KeyReturn = "Return",
    KeyDelete = "Delete", KeyInsert = "Insert",
    KeyHome = "Home", KeyEnd = "End",
    KeyPageUp = "PageUp", KeyPageDown = "PageDown",
    KeyUp = "Up", KeyDown = "Down", KeyLeft = "Left", KeyRight = "Right",
    
    // Numpad
    KeyNumpad0 = "Numpad0", KeyNumpad1 = "Numpad1", KeyNumpad2 = "Numpad2", KeyNumpad3 = "Numpad3",
    KeyNumpad4 = "Numpad4", KeyNumpad5 = "Numpad5", KeyNumpad6 = "Numpad6", KeyNumpad7 = "Numpad7",
    KeyNumpad8 = "Numpad8", KeyNumpad9 = "Numpad9",
    KeyNumpadDecimal = "NumpadDecimal", KeyNumpadDivide = "NumpadDivide",
    KeyNumpadMultiply = "NumpadMultiply", KeyNumpadSubtract = "NumpadSubtract",
    KeyNumpadAdd = "NumpadAdd", KeyNumpadEnter = "NumpadEnter",
    
    // Functional  F1-F24
    F1 = "F1", F2 = "F2", F3 = "F3", F4 = "F4", F5 = "F5", F6 = "F6", F7 = "F7", F8 = "F8",
    F9 = "F9", F10 = "F10", F11 = "F11", F12 = "F12", F13 = "F13", F14 = "F14", F15 = "F15", F16 = "F16",
    F17 = "F17", F18 = "F18", F19 = "F19", F20 = "F20", F21 = "F21", F22 = "F22", F23 = "F23", F24 = "F24",
    
    // Combinations F1-F24 + Shift
    F1Shift = "F1+Shift", F2Shift = "F2+Shift", F3Shift = "F3+Shift", F4Shift = "F4+Shift",
    F5Shift = "F5+Shift", F6Shift = "F6+Shift", F7Shift = "F7+Shift", F8Shift = "F8+Shift",
    F9Shift = "F9+Shift", F10Shift = "F10+Shift", F11Shift = "F11+Shift", F12Shift = "F12+Shift",
    F13Shift = "F13+Shift", F14Shift = "F14+Shift", F15Shift = "F15+Shift", F16Shift = "F16+Shift",
    F17Shift = "F17+Shift", F18Shift = "F18+Shift", F19Shift = "F19+Shift", F20Shift = "F20+Shift",
    F21Shift = "F21+Shift", F22Shift = "F22+Shift", F23Shift = "F23+Shift", F24Shift = "F24+Shift",
    
    // Combinations F1-F24 + Ctrl
    F1Ctrl = "F1+Ctrl", F2Ctrl = "F2+Ctrl", F3Ctrl = "F3+Ctrl", F4Ctrl = "F4+Ctrl",
    F5Ctrl = "F5+Ctrl", F6Ctrl = "F6+Ctrl", F7Ctrl = "F7+Ctrl", F8Ctrl = "F8+Ctrl",
    F9Ctrl = "F9+Ctrl", F10Ctrl = "F10+Ctrl", F11Ctrl = "F11+Ctrl", F12Ctrl = "F12+Ctrl",
    F13Ctrl = "F13+Ctrl", F14Ctrl = "F14+Ctrl", F15Ctrl = "F15+Ctrl", F16Ctrl = "F16+Ctrl",
    F17Ctrl = "F17+Ctrl", F18Ctrl = "F18+Ctrl", F19Ctrl = "F19+Ctrl", F20Ctrl = "F20+Ctrl",
    F21Ctrl = "F21+Ctrl", F22Ctrl = "F22+Ctrl", F23Ctrl = "F23+Ctrl", F24Ctrl = "F24+Ctrl",
    
    // Combinations F1-F24 + Alt
    F1Alt = "F1+Alt", F2Alt = "F2+Alt", F3Alt = "F3+Alt", F4Alt = "F4+Alt",
    F5Alt = "F5+Alt", F6Alt = "F6+Alt", F7Alt = "F7+Alt", F8Alt = "F8+Alt",
    F9Alt = "F9+Alt", F10Alt = "F10+Alt", F11Alt = "F11+Alt", F12Alt = "F12+Alt",
    F13Alt = "F13+Alt", F14Alt = "F14+Alt", F15Alt = "F15+Alt", F16Alt = "F16+Alt",
    F17Alt = "F17+Alt", F18Alt = "F18+Alt", F19Alt = "F19+Alt", F20Alt = "F20+Alt",
    F21Alt = "F21+Alt", F22Alt = "F22+Alt", F23Alt = "F23+Alt", F24Alt = "F24+Alt"
}
struct Bone {
    /**
        Position of the bone
    */
    vec3 position = vec3(0);

    /**
        Rotation of the bone
    */
    quat rotation = quat.identity;
}