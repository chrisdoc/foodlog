.class public Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;
.super Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;
.source "ScanditSDKOverlayView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/mirasense/scanditsdk/interfaces/ScanditSDKOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;
    }
.end annotation


# static fields
.field private static final MAX_DIGITS_IN_KEYPAD:I = 0xe

.field public static final TORCH_MODE_NONE:I = 0x0

.field public static final TORCH_MODE_OFF:I = 0x1

.field public static final TORCH_MODE_ON:I = 0x2


# instance fields
.field private mDeactivateRecognitionDuringKeypad:Z

.field private mErrorButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

.field private mErrorMessage:Ljava/lang/String;

.field private mExtraGuiRefreshRequired:Z

.field private mGuiRefreshingThread:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;

.field private mKeyboardButtons:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyboardVisible:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLeftButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPainter:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;

.field private mRegularButtons:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;",
            ">;"
        }
    .end annotation
.end field

.field private mRightButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

.field private mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

.field private mTorchButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;

.field private mTorchMode:I

.field private mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

.field private mVibrateTime:J

.field private mVibrator:Landroid/os/Vibrator;

.field private registeredScanDKListerens:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;J)V
    .locals 3
    .parameter "context"
    .parameter "picker"
    .parameter "vibrateTime"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;-><init>(Landroid/content/Context;Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)V

    .line 54
    iput-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mDeactivateRecognitionDuringKeypad:Z

    .line 73
    iput-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mGuiRefreshingThread:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;

    .line 74
    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mExtraGuiRefreshRequired:Z

    .line 79
    iput-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mErrorButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    .line 80
    iput-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mErrorMessage:Ljava/lang/String;

    .line 82
    iput v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLastWidth:I

    .line 83
    iput v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLastHeight:I

    .line 94
    new-instance v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;

    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-direct {v0, p1, v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;-><init>(Landroid/content/Context;Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mPainter:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;

    .line 95
    new-instance v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-direct {v0, p1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    .line 98
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 99
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mVibrator:Landroid/os/Vibrator;

    .line 100
    iput-wide p3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mVibrateTime:J

    .line 103
    :cond_0
    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    .line 106
    invoke-virtual {p0, p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    new-instance v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;

    invoke-direct {v0, p0, p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;-><init>(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;)V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mGuiRefreshingThread:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;

    .line 110
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mGuiRefreshingThread:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView$GUIRefreshThread;->start()V

    .line 112
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    .line 114
    iput v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    .line 115
    return-void
.end method

.method private addKeyboard()V
    .locals 20

    .prologue
    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v10

    .line 864
    .local v10, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mDeactivateRecognitionDuringKeypad:Z

    if-eqz v1, :cond_0

    .line 865
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->set1DRecognitionEnabled(Z)V

    .line 866
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->set2DRecognitionEnabled(Z)V

    .line 869
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 870
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    .line 874
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v11

    .line 877
    .local v11, h:I
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v16

    .line 878
    .local v16, w:I
    move/from16 v0, v16

    int-to-double v1, v0

    const-wide v3, 0x3fb47ae147ae147bL

    mul-double/2addr v1, v3

    double-to-int v7, v1

    .line 880
    .local v7, font_size:I
    div-int/lit8 v5, v16, 0x4

    .line 881
    .local v5, button_height:I
    const/4 v1, 0x4

    new-array v9, v1, [I

    .line 882
    .local v9, button_x_positions:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v9, v1

    .line 883
    const/4 v1, 0x1

    div-int/lit8 v2, v16, 0x3

    aput v2, v9, v1

    .line 884
    const/4 v1, 0x2

    mul-int/lit8 v2, v16, 0x2

    div-int/lit8 v2, v2, 0x3

    aput v2, v9, v1

    .line 885
    const/4 v1, 0x3

    aput v16, v9, v1

    .line 887
    const/4 v14, 0x1

    .line 888
    .local v14, number:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_0
    const/4 v1, 0x3

    if-ge v13, v1, :cond_3

    .line 889
    const/4 v12, 0x0

    .local v12, i:I
    move v15, v14

    .end local v14           #number:I
    .local v15, number:I
    :goto_1
    const/4 v1, 0x3

    if-ge v12, v1, :cond_2

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    move-object/from16 v17, v0

    new-instance v1, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    aget v2, v9, v12

    int-to-double v3, v11

    const-wide v18, 0x3fc0a3d70a3d70a4L

    mul-double v3, v3, v18

    double-to-int v3, v3

    sub-int v3, v11, v3

    add-int/lit8 v4, v13, 0x2

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    add-int/lit8 v4, v12, 0x1

    aget v4, v9, v4

    aget v6, v9, v12

    sub-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v14, v15, 0x1

    .end local v15           #number:I
    .restart local v14       #number:I
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;-><init>(IIIILjava/lang/String;IZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 889
    add-int/lit8 v12, v12, 0x1

    move v15, v14

    .end local v14           #number:I
    .restart local v15       #number:I
    goto :goto_1

    .line 888
    :cond_2
    add-int/lit8 v13, v13, 0x1

    move v14, v15

    .end local v15           #number:I
    .restart local v14       #number:I
    goto :goto_0

    .line 895
    .end local v12           #i:I
    :cond_3
    const/4 v12, 0x0

    .line 896
    .restart local v12       #i:I
    const/4 v13, 0x0

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    move-object/from16 v17, v0

    new-instance v1, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    aget v2, v9, v12

    int-to-double v3, v11

    const-wide v18, 0x3fc0a3d70a3d70a4L

    mul-double v3, v3, v18

    double-to-int v3, v3

    sub-int v3, v11, v3

    mul-int/lit8 v4, v5, 0x1

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v9, v4

    aget v6, v9, v12

    sub-int/2addr v4, v6

    const-string v6, "X"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;-><init>(IIIILjava/lang/String;IZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 899
    const/4 v12, 0x1

    .line 900
    const/4 v13, 0x0

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    move-object/from16 v17, v0

    new-instance v1, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    aget v2, v9, v12

    int-to-double v3, v11

    const-wide v18, 0x3fc0a3d70a3d70a4L

    mul-double v3, v3, v18

    double-to-int v3, v3

    sub-int v3, v11, v3

    mul-int/lit8 v4, v5, 0x1

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v9, v4

    aget v6, v9, v12

    sub-int/2addr v4, v6

    const-string v6, "0"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;-><init>(IIIILjava/lang/String;IZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 903
    const/4 v12, 0x2

    .line 904
    const/4 v13, 0x0

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    move-object/from16 v17, v0

    new-instance v1, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    aget v2, v9, v12

    int-to-double v3, v11

    const-wide v18, 0x3fc0a3d70a3d70a4L

    mul-double v3, v3, v18

    double-to-int v3, v3

    sub-int v3, v11, v3

    mul-int/lit8 v4, v5, 0x1

    sub-int/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v9, v4

    aget v6, v9, v12

    sub-int/2addr v4, v6

    const-string v6, "<"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;-><init>(IIIILjava/lang/String;IZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 908
    return-void
.end method

.method private onKeyboardButtonPressed(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;)V
    .locals 6
    .parameter "button"

    .prologue
    const/16 v5, 0xc8

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 519
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setCurrentBackgroundColor(I)V

    .line 521
    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 546
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-static {v5, v4, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setCurrentBackgroundColor(I)V

    goto :goto_0

    .line 529
    .end local v0           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 531
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 532
    .restart local v0       #s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_2
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-static {v5, v4, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setCurrentBackgroundColor(I)V

    goto :goto_0

    .line 539
    .end local v0           #s:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 540
    .restart local v0       #s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_4

    .line 541
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_4
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-static {v5, v4, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setCurrentBackgroundColor(I)V

    goto :goto_0
.end method

.method private onLeftButtonPressed()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x1

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 467
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    iget-boolean v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    if-eqz v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLeftButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getLeftButtonCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRightButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getRightButtonCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 470
    iput-boolean v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    .line 471
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->removeKeyboard()V

    .line 472
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTitleMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 494
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-static {v7, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setCurrentBackgroundColor(I)V

    .line 479
    new-array v1, v6, [Ljava/lang/String;

    .line 480
    .local v1, params:[Ljava/lang/String;
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->getContent()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 481
    const-string v2, "didManualSearch"

    invoke-virtual {p0, v2, v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->callMethodOnRegisteredListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 484
    .end local v1           #params:[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-static {v7, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setCurrentBackgroundColor(I)V

    .line 486
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLeftButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getLeftButtonCaptionWhenKeypadVisible()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRightButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getRightButtonCaptionWhenKeypadVisible()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 491
    iput-boolean v6, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    .line 492
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->addKeyboard()V

    goto :goto_0
.end method

.method private onRightButtonPressed()V
    .locals 3

    .prologue
    .line 500
    iget-boolean v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 503
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTitleMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLeftButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getLeftButtonCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 505
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    .line 506
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->removeKeyboard()V

    .line 511
    .end local v0           #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    :goto_0
    return-void

    .line 509
    :cond_0
    const-string v1, "didCancel"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->callMethodOnRegisteredListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeKeyboard()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 915
    iget-object v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 930
    :cond_0
    return-void

    .line 917
    :cond_1
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v1

    .line 918
    .local v1, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    iget-boolean v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mDeactivateRecognitionDuringKeypad:Z

    if-eqz v3, :cond_2

    .line 919
    invoke-virtual {v1, v4}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->set1DRecognitionEnabled(Z)V

    .line 920
    invoke-virtual {v1, v4}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->set2DRecognitionEnabled(Z)V

    .line 925
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 926
    iget-object v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    .line 927
    .local v0, button:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->fadeOut()V

    .line 925
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    return-void
.end method

.method public declared-synchronized callMethodOnRegisteredListeners(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "methodName"
    .parameter "parameters"

    .prologue
    .line 364
    monitor-enter p0

    const/4 v4, 0x0

    .line 365
    .local v4, param_types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    .line 366
    :try_start_0
    array-length v5, p2

    new-array v4, v5, [Ljava/lang/Class;

    .line 367
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p2

    if-ge v1, v5, :cond_1

    .line 368
    aget-object v5, p2, v1

    if-nez v5, :cond_0

    .line 369
    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 367
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_0
    aget-object v5, p2, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 364
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 376
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 377
    iget-object v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    .local v2, listener:Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 380
    .local v3, method:Ljava/lang/reflect/Method;
    invoke-virtual {v3, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 376
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 385
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #listener:Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public didUpdateStatus(Lcom/mirasense/scanditsdk/ScanditSDKScanState;)V
    .locals 12
    .parameter "scanState"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    .line 563
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iput-boolean v9, v4, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 566
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->scanningTime:I

    iput v5, v4, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->scanningTime:I

    .line 568
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v2

    .line 571
    .local v2, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    if-eqz v4, :cond_9

    .line 574
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    sub-int/2addr v4, v5

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    .line 576
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getBarcodePresenceDetected()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetViewfinderMessage(Ljava/lang/String;)V

    .line 590
    :cond_0
    :goto_0
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v4, :cond_b

    .line 593
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_1

    .line 594
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget-object v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, v5, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    const v6, 0x3e4ccccd

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetBasicViewfinderTransparency(F)V

    .line 596
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_1

    .line 597
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v8}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetBasicViewfinderTransparency(F)V

    .line 602
    :cond_1
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v4, v5, :cond_a

    .line 604
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v7}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRoughCodePositionTransparency(F)V

    .line 607
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderRecognizedRed()F

    move-result v5

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderRecognizedGreen()F

    move-result v6

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderRecognizedBlue()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRColor(FFF)V

    .line 650
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRx0(I)V

    .line 651
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRy0(I)V

    .line 652
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRx1(I)V

    .line 653
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRy1(I)V

    .line 654
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRx2(I)V

    .line 655
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRy2(I)V

    .line 656
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRx3(I)V

    .line 657
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRy3(I)V

    .line 660
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    sub-int v1, v4, v5

    .line 662
    .local v1, counterCodeDecodedDiff:I
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v4, :cond_3

    .line 663
    if-nez v1, :cond_e

    .line 664
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    const/high16 v5, 0x3f40

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetFlashTransparency(F)V

    .line 675
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget-boolean v4, v4, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    if-eqz v4, :cond_4

    .line 677
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->invalidate()V

    .line 681
    :cond_4
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v4, :cond_11

    .line 682
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v10}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetCodeAlreadyRecognized(Z)V

    .line 686
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v4, v5, :cond_7

    .line 690
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->cleanBarcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 693
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->cleanBarcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetCodeNumber(Ljava/lang/String;)V

    .line 695
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetCodeType(Ljava/lang/String;)V

    .line 697
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->cleanBarcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRMessage1(Ljava/lang/String;)V

    .line 699
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRMessage2(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 704
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isVibrateEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 707
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mVibrator:Landroid/os/Vibrator;

    iget-wide v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mVibrateTime:J

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 709
    :cond_5
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isBeepEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v11, :cond_6

    .line 711
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 714
    :cond_6
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->cleanBarcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetCodeNumber(Ljava/lang/String;)V

    .line 716
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetCodeType(Ljava/lang/String;)V

    .line 720
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v8}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetBasicViewfinderTransparency(F)V

    .line 723
    iput-boolean v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    .line 724
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->removeKeyboard()V

    .line 732
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_7
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    sub-int/2addr v4, v5

    if-ne v4, v11, :cond_8

    .line 733
    new-array v3, v11, [Ljava/lang/String;

    .line 734
    .local v3, params:[Ljava/lang/String;
    iget-object v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    aput-object v4, v3, v9

    .line 735
    iget-object v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    aput-object v4, v3, v10

    .line 736
    const-string v4, "didScanBarcode"

    invoke-virtual {p0, v4, v3}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->callMethodOnRegisteredListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    .end local v3           #params:[Ljava/lang/String;
    :cond_8
    :goto_3
    return-void

    .line 582
    .end local v1           #counterCodeDecodedDiff:I
    :cond_9
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    sub-int/2addr v4, v5

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    .line 584
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInitialScanScreenState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetViewfinderMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 614
    :cond_a
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 615
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget-object v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, v5, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    const v6, 0x3ecccccd

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRoughCodePositionTransparency(F)V

    .line 617
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    .line 618
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v7}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRoughCodePositionTransparency(F)V

    goto/16 :goto_1

    .line 625
    :cond_b
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_c

    .line 626
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget-object v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, v5, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    const v6, 0x3e4ccccd

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetBasicViewfinderTransparency(F)V

    .line 628
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_c

    .line 629
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v7}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetBasicViewfinderTransparency(F)V

    .line 634
    :cond_c
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_d

    .line 635
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget-object v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v5, v5, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    const v6, 0x3e4ccccd

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRoughCodePositionTransparency(F)V

    .line 637
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_d

    .line 638
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v8}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRoughCodePositionTransparency(F)V

    .line 643
    :cond_d
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderRed()F

    move-result v5

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderGreen()F

    move-result v6

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderBlue()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRColor(FFF)V

    goto/16 :goto_1

    .line 665
    .restart local v1       #counterCodeDecodedDiff:I
    :cond_e
    if-ne v1, v10, :cond_f

    .line 666
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    const v5, 0x3e99999a

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetFlashTransparency(F)V

    goto/16 :goto_2

    .line 667
    :cond_f
    if-ne v1, v11, :cond_10

    .line 668
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    const v5, 0x3dcccccd

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetFlashTransparency(F)V

    goto/16 :goto_2

    .line 670
    :cond_10
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v8}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetFlashTransparency(F)V

    goto/16 :goto_2

    .line 740
    :cond_11
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v9}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetCodeAlreadyRecognized(Z)V

    .line 742
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v4, :cond_8

    .line 743
    iget-object v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getBarcodeDecodingInProgress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->monitoredSetRMessage1(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public drawViewfinderTextHook(Z)V
    .locals 2
    .parameter "draw"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 208
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setDrawViewfinderTextHook(Z)V

    .line 209
    return-void
.end method

.method public getTorchMode()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    return v0
.end method

.method public isExtraGuiRefreshRequired()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mExtraGuiRefreshRequired:Z

    return v0
.end method

.method public loadBeep()V
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v1

    .line 156
    .local v1, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getBeepResource()I

    move-result v0

    .line 157
    .local v0, beepResourceID:I
    if-eqz v0, :cond_1

    .line 158
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 163
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 755
    invoke-super/range {p0 .. p1}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->onDraw(Landroid/graphics/Canvas;)V

    .line 757
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLastWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLastHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 758
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRegularButtons:Ljava/util/Vector;

    .line 759
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;

    .line 760
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    .line 763
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLastWidth:I

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLastHeight:I

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v25

    .line 768
    .local v25, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRegularButtons:Ljava/util/Vector;

    if-nez v3, :cond_2

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v26

    .line 770
    .local v26, h:I
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v6

    .line 772
    .local v6, w:I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRegularButtons:Ljava/util/Vector;

    .line 773
    move/from16 v0, v26

    int-to-double v3, v0

    const-wide v10, 0x3fc0a3d70a3d70a4L

    mul-double/2addr v3, v10

    double-to-int v7, v3

    .line 774
    .local v7, buttonHeight:I
    int-to-double v3, v6

    const-wide v10, 0x3fb47ae147ae147bL

    mul-double/2addr v3, v10

    double-to-int v9, v3

    .line 775
    .local v9, fontSize:I
    new-instance v3, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTitleMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;-><init>(IIIILjava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    .line 777
    new-instance v10, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    div-int/lit8 v11, v6, 0x2

    sub-int v12, v26, v7

    div-int/lit8 v13, v6, 0x2

    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getRightButtonCaption()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move v14, v7

    move/from16 v16, v9

    invoke-direct/range {v10 .. v17}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;-><init>(IIIILjava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRightButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    .line 781
    new-instance v10, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    const/4 v11, 0x0

    sub-int v12, v26, v7

    div-int/lit8 v13, v6, 0x2

    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getLeftButtonCaption()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move v14, v7

    move/from16 v16, v9

    invoke-direct/range {v10 .. v17}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;-><init>(IIIILjava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLeftButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    .line 784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRegularButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRegularButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRightButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRegularButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLeftButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 789
    .end local v6           #w:I
    .end local v7           #buttonHeight:I
    .end local v9           #fontSize:I
    .end local v26           #h:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;

    if-nez v3, :cond_3

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v26

    .line 791
    .restart local v26       #h:I
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v6

    .line 793
    .restart local v6       #w:I
    move/from16 v0, v26

    int-to-double v3, v0

    const-wide v10, 0x3fb47ae147ae147bL

    mul-double/2addr v3, v10

    double-to-int v13, v3

    .line 795
    .local v13, buttonSize:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 796
    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTorchOnImage()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 800
    .local v15, image:Landroid/graphics/Bitmap;
    :goto_0
    new-instance v10, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;

    int-to-double v3, v6

    const-wide v11, 0x3f9eb851eb851eb8L

    mul-double/2addr v3, v11

    double-to-int v11, v3

    const-wide v3, 0x4002666666666666L

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v3, v3, v16

    double-to-int v12, v3

    move v14, v13

    invoke-direct/range {v10 .. v15}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;-><init>(IIIILandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;

    .line 805
    .end local v6           #w:I
    .end local v13           #buttonSize:I
    .end local v15           #image:Landroid/graphics/Bitmap;
    .end local v26           #h:I
    :cond_3
    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->is1DRecognitionEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->is2DRecognitionEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 807
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mPainter:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->drawUIState(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;)V

    .line 810
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v3}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->hasTorch()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 811
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    .line 813
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    if-eqz v3, :cond_7

    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isTorchEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    if-nez v3, :cond_7

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->render(Landroid/graphics/Canvas;Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;)V

    .line 818
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mErrorMessage:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    if-nez v3, :cond_9

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mErrorButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    if-nez v3, :cond_8

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v26

    .line 821
    .restart local v26       #h:I
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v6

    .line 822
    .restart local v6       #w:I
    int-to-double v3, v6

    const-wide v10, 0x3fb47ae147ae147bL

    mul-double/2addr v3, v10

    double-to-int v9, v3

    .line 824
    .restart local v9       #fontSize:I
    new-instance v16, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    const/16 v17, 0x0

    div-int/lit8 v18, v26, 0x4

    div-int/lit8 v20, v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mErrorMessage:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move/from16 v19, v6

    move/from16 v22, v9

    invoke-direct/range {v16 .. v23}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;-><init>(IIIILjava/lang/String;IZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mErrorButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mErrorButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v8, 0xff

    const/16 v10, 0xff

    invoke-static {v4, v5, v8, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setCurrentContentColor(I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mErrorButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v4, v5, v8, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setCurrentBackgroundColor(I)V

    .line 830
    .end local v6           #w:I
    .end local v9           #fontSize:I
    .end local v26           #h:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mErrorButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->render(Landroid/graphics/Canvas;Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;)V

    .line 834
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mExtraGuiRefreshRequired:Z

    .line 836
    const/16 v27, 0x0

    .local v27, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRegularButtons:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_f

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRegularButtons:Ljava/util/Vector;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    .line 838
    .local v24, button:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    move-object/from16 v0, v24

    if-ne v0, v3, :cond_a

    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isTitleBarShown()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLeftButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    move-object/from16 v0, v24

    if-eq v0, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRightButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    move-object/from16 v0, v24

    if-ne v0, v3, :cond_d

    :cond_b
    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isToolBarShown()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 841
    :cond_c
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->render(Landroid/graphics/Canvas;Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;)V

    .line 842
    invoke-virtual/range {v24 .. v24}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->fadeColors()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 843
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mExtraGuiRefreshRequired:Z

    .line 836
    :cond_d
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 798
    .end local v24           #button:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;
    .end local v27           #i:I
    .restart local v6       #w:I
    .restart local v13       #buttonSize:I
    .restart local v26       #h:I
    :cond_e
    invoke-virtual/range {v25 .. v25}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTorchOffImage()Landroid/graphics/Bitmap;

    move-result-object v15

    .restart local v15       #image:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 847
    .end local v6           #w:I
    .end local v13           #buttonSize:I
    .end local v15           #image:Landroid/graphics/Bitmap;
    .end local v26           #h:I
    .restart local v27       #i:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    if-eqz v3, :cond_11

    .line 848
    const/16 v27, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_11

    .line 849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    .line 850
    .restart local v24       #button:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->render(Landroid/graphics/Canvas;Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;)V

    .line 851
    invoke-virtual/range {v24 .. v24}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->fadeColors()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 852
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mExtraGuiRefreshRequired:Z

    .line 848
    :cond_10
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 857
    .end local v24           #button:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;
    :cond_11
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xff

    const/4 v9, 0x1

    .line 394
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v6, v7

    .line 395
    .local v6, y:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int v5, v7, v8

    .line 397
    .local v5, x:I
    const/4 v1, 0x0

    .line 399
    .local v1, buttonPressed:Z
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v2

    .line 402
    .local v2, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRegularButtons:Ljava/util/Vector;

    if-eqz v7, :cond_5

    .line 403
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRegularButtons:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 404
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRegularButtons:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    .line 405
    .local v0, button:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    if-ne v0, v7, :cond_0

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isTitleBarShown()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLeftButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    if-eq v0, v7, :cond_1

    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRightButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    if-ne v0, v7, :cond_4

    :cond_1
    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isToolBarShown()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 408
    :cond_2
    invoke-virtual {v0, v5, v6}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->isWithin(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 409
    const/4 v1, 0x1

    .line 410
    const/16 v7, 0xc8

    invoke-static {v7, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setCurrentBackgroundColor(I)V

    .line 411
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLeftButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    if-ne v0, v7, :cond_3

    .line 412
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->onLeftButtonPressed()V

    .line 414
    :cond_3
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mRightButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    if-ne v0, v7, :cond_4

    .line 415
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->onRightButtonPressed()V

    .line 403
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    .end local v0           #button:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;
    .end local v3           #i:I
    :cond_5
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    if-eqz v7, :cond_7

    .line 424
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 425
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardButtons:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    .line 426
    .restart local v0       #button:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;
    invoke-virtual {v0, v5, v6}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->isWithin(II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 427
    const/4 v1, 0x1

    .line 428
    invoke-direct {p0, v0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->onKeyboardButtonPressed(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;)V

    .line 424
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 433
    .end local v0           #button:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;
    .end local v3           #i:I
    :cond_7
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    if-nez v7, :cond_8

    .line 434
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;

    invoke-virtual {v7, v5, v6}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->isWithin(II)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 435
    const/4 v1, 0x1

    .line 437
    iget v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    if-ne v7, v9, :cond_a

    .line 438
    const/4 v7, 0x2

    iput v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    .line 439
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v7, v9}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setTorch(Z)V

    .line 440
    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTorchOnImage()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 446
    .local v4, image:Landroid/graphics/Bitmap;
    :goto_2
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;

    invoke-virtual {v7, v4}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->setImage(Landroid/graphics/Bitmap;)V

    .line 452
    .end local v4           #image:Landroid/graphics/Bitmap;
    :cond_8
    if-nez v1, :cond_9

    .line 453
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v7}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->triggerAutoFocus()V

    .line 457
    :cond_9
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->invalidate()V

    .line 459
    return v11

    .line 442
    :cond_a
    iput v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    .line 443
    iget-object v7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v7, v11}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setTorch(Z)V

    .line 444
    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTorchOffImage()Landroid/graphics/Bitmap;

    move-result-object v4

    .restart local v4       #image:Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public removeAllListenes()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 345
    return-void
.end method

.method public removeListener(Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public resetGUI()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->resetValues()V

    .line 172
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 175
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTopButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTitleMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-boolean v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mLeftButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getLeftButtonCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->setContent(Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    .line 183
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->removeKeyboard()V

    .line 185
    :cond_1
    return-void
.end method

.method public setBeepEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 302
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setBeepEnabled(Z)V

    .line 303
    return-void
.end method

.method public setExtra_gui_refresh_required(Z)V
    .locals 0
    .parameter "extraGuiRefreshRequired"

    .prologue
    .line 948
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mExtraGuiRefreshRequired:Z

    .line 949
    return-void
.end method

.method public setInfoBannerY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 191
    return-void
.end method

.method public setLeftButtonCaption(Ljava/lang/String;)V
    .locals 2
    .parameter "caption"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 262
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setLeftButtonCaption(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->invalidate()V

    .line 264
    return-void
.end method

.method public setLeftButtonCaptionWhenKeypadVisible(Ljava/lang/String;)V
    .locals 2
    .parameter "caption"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 269
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setLeftButtonCaptionWhenKeypadVisible(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->invalidate()V

    .line 271
    return-void
.end method

.method public setRightButtonCaption(Ljava/lang/String;)V
    .locals 2
    .parameter "caption"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 276
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setRightButtonCaption(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->invalidate()V

    .line 278
    return-void
.end method

.method public setRightButtonCaptionWhenKeypadVisible(Ljava/lang/String;)V
    .locals 2
    .parameter "caption"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 283
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setRightButtonCaptionWhenKeypadVisible(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->invalidate()V

    .line 285
    return-void
.end method

.method public setSearchBarKeyboardType(I)V
    .locals 0
    .parameter "inputType"

    .prologue
    .line 195
    return-void
.end method

.method public setSearchBarPlaceholderText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 193
    return-void
.end method

.method public setTextForBarcodeDecodingInProgress(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 243
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setBarcodeDecodingInProgress(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setTextForBarcodePresenceDetected(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 237
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setBarcodePresenceDetected(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public setTextForInitialScanScreenState(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 231
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setInitialScanScreenState(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public setTextForMostLikelyBarcodeUIElement(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 212
    return-void
.end method

.method public setTextIfNoBarcodeWasRecognized(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 247
    return-void
.end method

.method public setTextToSuggestManualEntry(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 250
    return-void
.end method

.method public setTitleMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 255
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setTitleMessage(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->invalidate()V

    .line 257
    return-void
.end method

.method public setTorchEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 314
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setTorchEnabled(Z)V

    .line 315
    return-void
.end method

.method public setTorchOffImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 320
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setTorchOffImage(Landroid/graphics/Bitmap;)V

    .line 321
    return-void
.end method

.method public setTorchOnImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 326
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setTorchOnImage(Landroid/graphics/Bitmap;)V

    .line 327
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 308
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setVibrateEnabled(Z)V

    .line 309
    return-void
.end method

.method public setViewfinderColor(FFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 290
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1, p2, p3}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setViewfinderColor(FFF)V

    .line 291
    return-void
.end method

.method public setViewfinderDecodedColor(FFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 296
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1, p2, p3}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setViewfinderRecognizedColor(FFF)V

    .line 297
    return-void
.end method

.method public setViewfinderDimension(FF)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 202
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1, p2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setViewfinderDimension(FF)V

    .line 203
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mErrorMessage:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public showMostLikelyBarcodeUIElement(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 188
    return-void
.end method

.method public showSearchBar(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 197
    return-void
.end method

.method public showTitleBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 217
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setShowTitleBar(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->resetGUI()V

    .line 219
    return-void
.end method

.method public showToolBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 224
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setShowToolBar(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->resetGUI()V

    .line 226
    return-void
.end method

.method public switchTorchOn(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 128
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->isTorchBeingSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mKeyboardVisible:Z

    if-nez v2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 135
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    iget v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_2

    .line 136
    iput v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    .line 137
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setTorch(Z)V

    .line 138
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTorchOnImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 139
    .local v1, image:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;

    invoke-virtual {v2, v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 140
    .end local v1           #image:Landroid/graphics/Bitmap;
    :cond_2
    iget v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    if-ne v2, v4, :cond_0

    if-nez p1, :cond_0

    .line 141
    iput v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    .line 142
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setTorch(Z)V

    .line 143
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTorchOffImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    .restart local v1       #image:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->mTorchButton:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;

    invoke-virtual {v2, v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
