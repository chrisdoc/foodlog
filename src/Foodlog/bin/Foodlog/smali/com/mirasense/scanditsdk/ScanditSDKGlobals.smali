.class public Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
.super Ljava/lang/Object;
.source "ScanditSDKGlobals.java"


# static fields
.field public static final EVALUATION_SDK:Z = true

.field public static final LOCATION_POLL_INTERVAL:I = 0xa

.field public static final LOG_NAME:Ljava/lang/String; = "ScanditSDK"

.field public static final ONLY_REGISTRATION_SDK:Z

.field private static instance:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;


# instance fields
.field private final DEFAULT_1D_RECOGNITION_ENABLED:Z

.field private final DEFAULT_2D_RECOGNITION_ENABLED:Z

.field private final DEFAULT_BARCODE_DECODING_IN_PROGRESS:Ljava/lang/String;

.field private final DEFAULT_BARCODE_PRESENCE_DETECTED:Ljava/lang/String;

.field private final DEFAULT_BEEP_ENABLED:Z

.field private final DEFAULT_DRAW_VIEWFINDER_TEXT_HOOK:Z

.field private final DEFAULT_HOT_SPOT_HEIGHT:F

.field private final DEFAULT_HOT_SPOT_X:F

.field private final DEFAULT_HOT_SPOT_Y:F

.field private final DEFAULT_INFO_BANNER_Y:F

.field private final DEFAULT_INITIAL_SCAN_SCREEN_STATE:Ljava/lang/String;

.field private final DEFAULT_LEFT_BUTTON_CAPTION:Ljava/lang/String;

.field private final DEFAULT_LEFT_BUTTON_CAPTION_WHEN_KEYPAD_VISIBLE:Ljava/lang/String;

.field private final DEFAULT_MAX_PRE_RUN_SCANLINE_AMOUNT:I

.field private final DEFAULT_MAX_SHARP_SCANLINE_AMOUNT:I

.field private final DEFAULT_PREVIEW_ROTATION:I

.field private final DEFAULT_PRE_FROYO_DATAMATRIX_ENABLED:Z

.field private final DEFAULT_PRE_FROYO_QR_ENABLED:Z

.field private final DEFAULT_RIGHT_BUTTON_CAPTION:Ljava/lang/String;

.field private final DEFAULT_RIGHT_BUTTON_CAPTION_WHEN_KEYPAD_VISIBLE:Ljava/lang/String;

.field private final DEFAULT_SEARCH_BAR_KEYBOARD_TYPE:I

.field private final DEFAULT_SEARCH_BAR_PLACEHOLDER:Ljava/lang/String;

.field private final DEFAULT_SHOW_TITLE_BAR:Z

.field private final DEFAULT_SHOW_TOOL_BAR:Z

.field private final DEFAULT_TITLE_MESSAGE:Ljava/lang/String;

.field private final DEFAULT_TORCH_ENABLED:Z

.field private final DEFAULT_VIBRATE_ENABLED:Z

.field private final DEFAULT_VIEWFINDER_BLUE:F

.field private final DEFAULT_VIEWFINDER_GREEN:F

.field private final DEFAULT_VIEWFINDER_HEIGHT:F

.field private final DEFAULT_VIEWFINDER_RECOGNIZED_BLUE:F

.field private final DEFAULT_VIEWFINDER_RECOGNIZED_GREEN:F

.field private final DEFAULT_VIEWFINDER_RECOGNIZED_RED:F

.field private final DEFAULT_VIEWFINDER_RED:F

.field private final DEFAULT_VIEWFINDER_WIDTH:F

.field private m1DRecognitionEnabled:Z

.field private m2DRecognitionEnabled:Z

.field private mBannerImage:Landroid/graphics/Bitmap;

.field private mBarcodeDecodingInProgress:Ljava/lang/String;

.field private mBarcodePresenceDetected:Ljava/lang/String;

.field private mBeepEnabled:Z

.field private mBeepResource:I

.field private mDrawViewfinderTextHook:Z

.field private mInfoBannerY:F

.field private mInitialScanScreenState:Ljava/lang/String;

.field private mLeftButtonCaption:Ljava/lang/String;

.field private mLeftButtonCaptionWhenKeypadVisible:Ljava/lang/String;

.field private mMaxPreRunScanlineAmount:I

.field private mMaxSharpScanlineAmount:I

.field private mPreFroyoDataMatrixEnabled:Z

.field private mPreFroyoQREnabled:Z

.field private mPreviewRotation:I

.field private mRightButtonCaption:Ljava/lang/String;

.field private mRightButtonCaptionWhenKeypadVisible:Ljava/lang/String;

.field private mScanningHotSpotHeight:F

.field private mScanningHotSpotX:F

.field private mScanningHotSpotY:F

.field private mSearchBarKeyboardType:I

.field private mSearchBarPlaceholder:Ljava/lang/String;

.field private mSearchButtonIcon:Landroid/graphics/Bitmap;

.field private mShowTitleBar:Z

.field private mShowToolBar:Z

.field private mTitleMessage:Ljava/lang/String;

.field private mTorchEnabled:Z

.field private mTorchOffImage:Landroid/graphics/Bitmap;

.field private mTorchOnImage:Landroid/graphics/Bitmap;

.field private mVibrateEnabled:Z

.field private mViewfinderBlue:F

.field private mViewfinderGreen:F

.field private mViewfinderHeight:F

.field private mViewfinderRecognizedBlue:F

.field private mViewfinderRecognizedGreen:F

.field private mViewfinderRecognizedRed:F

.field private mViewfinderRed:F

.field private mViewfinderWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->instance:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/high16 v12, 0x3f00

    const/high16 v11, 0x3e80

    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    const/4 v8, 0x1

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v7, "Align code with box"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_INITIAL_SCAN_SCREEN_STATE:Ljava/lang/String;

    .line 32
    const-string v7, "Align code and hold still"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_BARCODE_PRESENCE_DETECTED:Ljava/lang/String;

    .line 33
    const-string v7, "Decoding ..."

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_BARCODE_DECODING_IN_PROGRESS:Ljava/lang/String;

    .line 35
    const-string v7, "Scan a barcode"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_TITLE_MESSAGE:Ljava/lang/String;

    .line 36
    const-string v7, "KEYPAD"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_LEFT_BUTTON_CAPTION:Ljava/lang/String;

    .line 37
    const-string v7, "OK"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_LEFT_BUTTON_CAPTION_WHEN_KEYPAD_VISIBLE:Ljava/lang/String;

    .line 38
    const-string v7, "CANCEL"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_RIGHT_BUTTON_CAPTION:Ljava/lang/String;

    .line 39
    const-string v7, "CANCEL"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_RIGHT_BUTTON_CAPTION_WHEN_KEYPAD_VISIBLE:Ljava/lang/String;

    .line 41
    const-string v7, "Scan barcode or enter it here"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_SEARCH_BAR_PLACEHOLDER:Ljava/lang/String;

    .line 43
    const/4 v7, 0x2

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_SEARCH_BAR_KEYBOARD_TYPE:I

    .line 45
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_VIEWFINDER_RED:F

    .line 46
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_VIEWFINDER_GREEN:F

    .line 47
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_VIEWFINDER_BLUE:F

    .line 48
    iput v10, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_VIEWFINDER_RECOGNIZED_RED:F

    .line 49
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_VIEWFINDER_RECOGNIZED_GREEN:F

    .line 50
    iput v10, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_VIEWFINDER_RECOGNIZED_BLUE:F

    .line 51
    iput v11, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_VIEWFINDER_HEIGHT:F

    .line 52
    const v7, 0x3f19999a

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_VIEWFINDER_WIDTH:F

    .line 53
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_DRAW_VIEWFINDER_TEXT_HOOK:Z

    .line 55
    iput v12, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_HOT_SPOT_X:F

    .line 56
    iput v12, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_HOT_SPOT_Y:F

    .line 57
    iput v11, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_HOT_SPOT_HEIGHT:F

    .line 58
    const/16 v7, 0x15

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_MAX_SHARP_SCANLINE_AMOUNT:I

    .line 59
    const/4 v7, 0x3

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_MAX_PRE_RUN_SCANLINE_AMOUNT:I

    .line 61
    const v7, 0x3f4ccccd

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_INFO_BANNER_Y:F

    .line 63
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_BEEP_ENABLED:Z

    .line 64
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_VIBRATE_ENABLED:Z

    .line 65
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_TORCH_ENABLED:Z

    .line 67
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_SHOW_TITLE_BAR:Z

    .line 68
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_SHOW_TOOL_BAR:Z

    .line 70
    const/16 v7, 0x5a

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_PREVIEW_ROTATION:I

    .line 72
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_1D_RECOGNITION_ENABLED:Z

    .line 73
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_2D_RECOGNITION_ENABLED:Z

    .line 75
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_PRE_FROYO_QR_ENABLED:Z

    .line 76
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->DEFAULT_PRE_FROYO_DATAMATRIX_ENABLED:Z

    .line 79
    const-string v7, "Align code with box"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mInitialScanScreenState:Ljava/lang/String;

    .line 80
    const-string v7, "Align code and hold still"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBarcodePresenceDetected:Ljava/lang/String;

    .line 81
    const-string v7, "Decoding ..."

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBarcodeDecodingInProgress:Ljava/lang/String;

    .line 83
    const-string v7, "Scan a barcode"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTitleMessage:Ljava/lang/String;

    .line 84
    const-string v7, "KEYPAD"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mLeftButtonCaption:Ljava/lang/String;

    .line 85
    const-string v7, "OK"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mLeftButtonCaptionWhenKeypadVisible:Ljava/lang/String;

    .line 86
    const-string v7, "CANCEL"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mRightButtonCaption:Ljava/lang/String;

    .line 87
    const-string v7, "CANCEL"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mRightButtonCaptionWhenKeypadVisible:Ljava/lang/String;

    .line 89
    const-string v7, "Scan barcode or enter it here"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mSearchBarPlaceholder:Ljava/lang/String;

    .line 90
    const/4 v7, 0x2

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mSearchBarKeyboardType:I

    .line 92
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTorchOffImage:Landroid/graphics/Bitmap;

    .line 93
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTorchOnImage:Landroid/graphics/Bitmap;

    .line 94
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBannerImage:Landroid/graphics/Bitmap;

    .line 96
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mSearchButtonIcon:Landroid/graphics/Bitmap;

    .line 98
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRed:F

    .line 99
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderGreen:F

    .line 100
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderBlue:F

    .line 101
    iput v10, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedRed:F

    .line 102
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedGreen:F

    .line 103
    iput v10, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedBlue:F

    .line 104
    iput v11, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderHeight:F

    .line 105
    const v7, 0x3f19999a

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderWidth:F

    .line 106
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mDrawViewfinderTextHook:Z

    .line 108
    iput v12, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotX:F

    .line 109
    iput v12, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotY:F

    .line 110
    iput v11, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotHeight:F

    .line 111
    const/16 v7, 0x15

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mMaxSharpScanlineAmount:I

    .line 112
    const/4 v7, 0x3

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mMaxPreRunScanlineAmount:I

    .line 114
    const v7, 0x3f4ccccd

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mInfoBannerY:F

    .line 116
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBeepEnabled:Z

    .line 117
    const/4 v7, 0x0

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBeepResource:I

    .line 118
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mVibrateEnabled:Z

    .line 119
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTorchEnabled:Z

    .line 121
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mShowTitleBar:Z

    .line 122
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mShowToolBar:Z

    .line 124
    const/16 v7, 0x5a

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreviewRotation:I

    .line 126
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->m1DRecognitionEnabled:Z

    .line 127
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->m2DRecognitionEnabled:Z

    .line 129
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreFroyoQREnabled:Z

    .line 130
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreFroyoDataMatrixEnabled:Z

    .line 358
    const-string v7, "Align code with box"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mInitialScanScreenState:Ljava/lang/String;

    .line 359
    const-string v7, "Align code and hold still"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBarcodePresenceDetected:Ljava/lang/String;

    .line 360
    const-string v7, "Decoding ..."

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBarcodeDecodingInProgress:Ljava/lang/String;

    .line 362
    const-string v7, "Scan a barcode"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTitleMessage:Ljava/lang/String;

    .line 363
    const-string v7, "KEYPAD"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mLeftButtonCaption:Ljava/lang/String;

    .line 364
    const-string v7, "OK"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mLeftButtonCaptionWhenKeypadVisible:Ljava/lang/String;

    .line 365
    const-string v7, "CANCEL"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mRightButtonCaption:Ljava/lang/String;

    .line 366
    const-string v7, "CANCEL"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mRightButtonCaptionWhenKeypadVisible:Ljava/lang/String;

    .line 368
    const-string v7, "Scan barcode or enter it here"

    iput-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mSearchBarPlaceholder:Ljava/lang/String;

    .line 369
    const/4 v7, 0x2

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mSearchBarKeyboardType:I

    .line 371
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRed:F

    .line 372
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderGreen:F

    .line 373
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderBlue:F

    .line 374
    iput v10, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedRed:F

    .line 375
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedGreen:F

    .line 376
    iput v10, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedBlue:F

    .line 377
    iput v11, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderHeight:F

    .line 378
    const v7, 0x3f19999a

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderWidth:F

    .line 379
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mDrawViewfinderTextHook:Z

    .line 381
    iput v12, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotX:F

    .line 382
    iput v12, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotY:F

    .line 383
    iput v11, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotHeight:F

    .line 384
    const/16 v7, 0x15

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mMaxSharpScanlineAmount:I

    .line 385
    const/4 v7, 0x3

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mMaxPreRunScanlineAmount:I

    .line 387
    const v7, 0x3f4ccccd

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mInfoBannerY:F

    .line 389
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBeepEnabled:Z

    .line 390
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mVibrateEnabled:Z

    .line 391
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTorchEnabled:Z

    .line 393
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mShowTitleBar:Z

    .line 394
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mShowToolBar:Z

    .line 396
    const/16 v7, 0x5a

    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreviewRotation:I

    .line 398
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->m1DRecognitionEnabled:Z

    .line 399
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->m2DRecognitionEnabled:Z

    .line 401
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreFroyoQREnabled:Z

    .line 402
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreFroyoDataMatrixEnabled:Z

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, pack:Ljava/lang/String;
    const-string v6, "raw"

    .line 410
    .local v6, type:Ljava/lang/String;
    const-string v7, "scanditsdk_initial_scan_screen_state"

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInitialScanScreenState()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v3, v7, v8}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getStringRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setInitialScanScreenState(Ljava/lang/String;)V

    .line 414
    const-string v7, "scanditsdk_barcode_presence_detected"

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getBarcodePresenceDetected()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v3, v7, v8}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getStringRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setBarcodePresenceDetected(Ljava/lang/String;)V

    .line 418
    const-string v7, "scanditsdk_barcode_decoding_in_progress"

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getBarcodeDecodingInProgress()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v3, v7, v8}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getStringRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setBarcodeDecodingInProgress(Ljava/lang/String;)V

    .line 422
    const-string v7, "scanditsdk_searchbar_placeholder"

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getSearchBarPlaceholder()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v3, v7, v8}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getStringRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setSearchBarPlaceholder(Ljava/lang/String;)V

    .line 425
    const-string v7, "scanditsdk_title_message"

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTitleMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v3, v7, v8}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getStringRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setTitleMessage(Ljava/lang/String;)V

    .line 429
    const-string v7, "scanditsdk_left_button_caption"

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getLeftButtonCaption()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v3, v7, v8}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getStringRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setLeftButtonCaption(Ljava/lang/String;)V

    .line 433
    const-string v7, "scanditsdk_left_button_caption_when_keypad_visible"

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getLeftButtonCaptionWhenKeypadVisible()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v3, v7, v8}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getStringRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setLeftButtonCaptionWhenKeypadVisible(Ljava/lang/String;)V

    .line 437
    const-string v7, "scanditsdk_right_button_caption"

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getRightButtonCaption()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v3, v7, v8}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getStringRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setRightButtonCaption(Ljava/lang/String;)V

    .line 441
    const-string v7, "scanditsdk_right_button_caption_when_keypad_visible"

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getRightButtonCaptionWhenKeypadVisible()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v3, v7, v8}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getStringRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setRightButtonCaptionWhenKeypadVisible(Ljava/lang/String;)V

    .line 448
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "beep"

    invoke-virtual {v7, v8, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 449
    .local v1, beepId:I
    if-lez v1, :cond_0

    .line 450
    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setBeepResource(I)V

    .line 452
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "flashlight_turn_on_icon"

    invoke-virtual {v7, v8, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 454
    .local v5, torchOnId:I
    if-lez v5, :cond_1

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setTorchOffImage(Landroid/graphics/Bitmap;)V

    .line 458
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "flashlight_turn_off_icon"

    invoke-virtual {v7, v8, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 460
    .local v4, torchOffId:I
    if-lez v4, :cond_2

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setTorchOnImage(Landroid/graphics/Bitmap;)V

    .line 464
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "poweredby2x"

    invoke-virtual {v7, v8, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 466
    .local v0, bannerId:I
    if-lez v0, :cond_3

    .line 467
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setBannerImage(Landroid/graphics/Bitmap;)V

    .line 470
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "ic_btn_search"

    invoke-virtual {v7, v8, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 472
    .local v2, iconId:I
    if-lez v2, :cond_4

    .line 473
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setSearchButtonIcon(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v0           #bannerId:I
    .end local v1           #beepId:I
    .end local v2           #iconId:I
    .end local v4           #torchOffId:I
    .end local v5           #torchOnId:I
    :cond_4
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static cleanBarcode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "barcode"

    .prologue
    .line 500
    const-string v0, ""

    .line 501
    .local v0, cleanedBarcode:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 502
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    :cond_1
    return-object v0
.end method

.method public static deleteInstance()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->instance:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->instance:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    .line 146
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    sget-object v0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->instance:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    invoke-direct {v0, p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->instance:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    .line 139
    :cond_0
    sget-object v0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->instance:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    return-object v0
.end method

.method private static getStringRes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "pack"
    .parameter "key"
    .parameter "defaultString"

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v1, p2, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 487
    .local v0, initialScanScreenStateId:I
    if-lez v0, :cond_0

    .line 488
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 490
    .end local p3
    :cond_0
    return-object p3
.end method

.method public static pxFromDp(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "dp"

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 496
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public getBannerImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBannerImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBarcodeDecodingInProgress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBarcodeDecodingInProgress:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcodePresenceDetected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBarcodePresenceDetected:Ljava/lang/String;

    return-object v0
.end method

.method public getBeepResource()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBeepResource:I

    return v0
.end method

.method public getDrawViewfinderTextHook()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mDrawViewfinderTextHook:Z

    return v0
.end method

.method public getInfoBannerY()F
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mInfoBannerY:F

    return v0
.end method

.method public getInitialScanScreenState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mInitialScanScreenState:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftButtonCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mLeftButtonCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftButtonCaptionWhenKeypadVisible()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mLeftButtonCaptionWhenKeypadVisible:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPreRunScanlineAmount()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mMaxPreRunScanlineAmount:I

    return v0
.end method

.method public getMaxSharpScanlineAmount()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mMaxSharpScanlineAmount:I

    return v0
.end method

.method public getPreviewRotation()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreviewRotation:I

    return v0
.end method

.method public getRightButtonCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mRightButtonCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getRightButtonCaptionWhenKeypadVisible()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mRightButtonCaptionWhenKeypadVisible:Ljava/lang/String;

    return-object v0
.end method

.method public getScanningHotSpotHeight()F
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotHeight:F

    return v0
.end method

.method public getScanningHotSpotX()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotX:F

    return v0
.end method

.method public getScanningHotSpotY()F
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotY:F

    return v0
.end method

.method public getSearchBarKeyboardType()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mSearchBarKeyboardType:I

    return v0
.end method

.method public getSearchBarPlaceholder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mSearchBarPlaceholder:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchButtonIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mSearchButtonIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitleMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTitleMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTorchOffImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTorchOffImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTorchOnImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTorchOnImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getViewfinderBlue()F
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderBlue:F

    return v0
.end method

.method public getViewfinderGreen()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderGreen:F

    return v0
.end method

.method public getViewfinderHeight()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderHeight:F

    return v0
.end method

.method public getViewfinderRecognizedBlue()F
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedBlue:F

    return v0
.end method

.method public getViewfinderRecognizedGreen()F
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedGreen:F

    return v0
.end method

.method public getViewfinderRecognizedRed()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedRed:F

    return v0
.end method

.method public getViewfinderRed()F
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRed:F

    return v0
.end method

.method public getViewfinderWidth()F
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderWidth:F

    return v0
.end method

.method public is1DRecognitionEnabled()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->m1DRecognitionEnabled:Z

    return v0
.end method

.method public is2DRecognitionEnabled()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->m2DRecognitionEnabled:Z

    return v0
.end method

.method public isBeepEnabled()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBeepEnabled:Z

    return v0
.end method

.method public isInPortraitMode()Z
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getPreviewRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getPreviewRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 322
    :cond_0
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreFroyoDataMatrixEnabled()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreFroyoDataMatrixEnabled:Z

    return v0
.end method

.method public isPreFroyoQREnabled()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreFroyoQREnabled:Z

    return v0
.end method

.method public isTitleBarShown()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mShowTitleBar:Z

    return v0
.end method

.method public isToolBarShown()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mShowToolBar:Z

    return v0
.end method

.method public isTorchEnabled()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTorchEnabled:Z

    return v0
.end method

.method public isVibrateEnabled()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mVibrateEnabled:Z

    return v0
.end method

.method public set1DRecognitionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->m1DRecognitionEnabled:Z

    .line 331
    return-void
.end method

.method public set2DRecognitionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->m2DRecognitionEnabled:Z

    .line 336
    return-void
.end method

.method public setBannerImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBannerImage:Landroid/graphics/Bitmap;

    .line 219
    return-void
.end method

.method public setBarcodeDecodingInProgress(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBarcodeDecodingInProgress:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setBarcodePresenceDetected(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBarcodePresenceDetected:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setBeepEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBeepEnabled:Z

    .line 289
    return-void
.end method

.method public setBeepResource(I)V
    .locals 0
    .parameter "res"

    .prologue
    .line 293
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mBeepResource:I

    .line 294
    return-void
.end method

.method public setDrawViewfinderTextHook(Z)V
    .locals 0
    .parameter "draw"

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mDrawViewfinderTextHook:Z

    .line 254
    return-void
.end method

.method public setInfoBannerY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 283
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mInfoBannerY:F

    .line 284
    return-void
.end method

.method public setInitialScanScreenState(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mInitialScanScreenState:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setLeftButtonCaption(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mLeftButtonCaption:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setLeftButtonCaptionWhenKeypadVisible(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mLeftButtonCaptionWhenKeypadVisible:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setMaxPreRunScanlineAmount(I)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 278
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mMaxPreRunScanlineAmount:I

    .line 279
    return-void
.end method

.method public setMaxSharpScanlineAmount(I)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 273
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mMaxSharpScanlineAmount:I

    .line 274
    return-void
.end method

.method public setPreFroyoDataMatrixEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreFroyoDataMatrixEnabled:Z

    .line 346
    return-void
.end method

.method public setPreFroyoQREnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreFroyoQREnabled:Z

    .line 341
    return-void
.end method

.method public setPreviewRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 317
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mPreviewRotation:I

    .line 318
    return-void
.end method

.method public setRightButtonCaption(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mRightButtonCaption:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setRightButtonCaptionWhenKeypadVisible(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mRightButtonCaptionWhenKeypadVisible:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setScanningHotSpotHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 268
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotHeight:F

    .line 269
    return-void
.end method

.method public setScanningHotSpotX(F)V
    .locals 0
    .parameter "relX"

    .prologue
    .line 258
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotX:F

    .line 259
    return-void
.end method

.method public setScanningHotSpotY(F)V
    .locals 0
    .parameter "relY"

    .prologue
    .line 263
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mScanningHotSpotY:F

    .line 264
    return-void
.end method

.method public setSearchBarKeyboardType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 202
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mSearchBarKeyboardType:I

    .line 203
    return-void
.end method

.method public setSearchBarPlaceholder(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mSearchBarPlaceholder:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setSearchButtonIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mSearchButtonIcon:Landroid/graphics/Bitmap;

    .line 224
    return-void
.end method

.method public setShowTitleBar(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mShowTitleBar:Z

    .line 309
    return-void
.end method

.method public setShowToolBar(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mShowToolBar:Z

    .line 313
    return-void
.end method

.method public setTitleMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTitleMessage:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setTorchEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTorchEnabled:Z

    .line 304
    return-void
.end method

.method public setTorchOffImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTorchOffImage:Landroid/graphics/Bitmap;

    .line 209
    return-void
.end method

.method public setTorchOnImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mTorchOnImage:Landroid/graphics/Bitmap;

    .line 214
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mVibrateEnabled:Z

    .line 299
    return-void
.end method

.method public setViewfinderColor(FFF)V
    .locals 0
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 230
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRed:F

    .line 231
    iput p2, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderGreen:F

    .line 232
    iput p3, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderBlue:F

    .line 233
    return-void
.end method

.method public setViewfinderDimension(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 247
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderWidth:F

    .line 248
    iput p2, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderHeight:F

    .line 249
    return-void
.end method

.method public setViewfinderRecognizedColor(FFF)V
    .locals 0
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 239
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedRed:F

    .line 240
    iput p2, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedGreen:F

    .line 241
    iput p3, p0, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->mViewfinderRecognizedBlue:F

    .line 242
    return-void
.end method
