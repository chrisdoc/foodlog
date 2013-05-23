.class public Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;
.super Landroid/widget/RelativeLayout;
.source "ScanditSDKOverlayView.java"

# interfaces
.implements Lcom/mirasense/scanditsdk/interfaces/ScanditSDKOverlay;


# static fields
.field public static final TORCH_MODE_NONE:I = 0x0

.field public static final TORCH_MODE_OFF:I = 0x1

.field public static final TORCH_MODE_ON:I = 0x2


# instance fields
.field private mBarcodePicker:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPainter:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;

.field private mSearchBar:Landroid/widget/RelativeLayout;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mTorchButton:Landroid/widget/ImageButton;

.field private mTorchMode:I

.field private mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

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
.method public constructor <init>(Landroid/content/Context;Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;J)V
    .locals 8
    .parameter "context"
    .parameter "picker"
    .parameter "vibrateTime"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 78
    iput-object p2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    .line 79
    new-instance v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;

    invoke-direct {v4, p1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mPainter:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;

    .line 80
    new-instance v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-direct {v4, p1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    .line 83
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_0

    .line 84
    const-string v4, "vibrator"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mVibrator:Landroid/os/Vibrator;

    .line 85
    iput-wide p3, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mVibrateTime:J

    .line 88
    :cond_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    .line 90
    iput v6, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    .line 94
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 95
    .local v2, r:Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .local v3, rParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 98
    invoke-virtual {p0, v2, v3}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-static {p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v1

    .line 102
    .local v1, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    .line 103
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 105
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTorchOffImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 107
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;

    invoke-direct {v5, p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;-><init>(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-static {v4, v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->pxFromDp(Landroid/content/Context;I)I

    move-result v0

    .line 131
    .local v0, buttonSize:I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    .restart local v3       #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x50

    invoke-static {v4, v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->pxFromDp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 135
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4, v3}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private onSearchClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 454
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 458
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 459
    .local v1, params:[Ljava/lang/String;
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 460
    const-string v2, "didManualSearch"

    invoke-virtual {p0, v2, v1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->callMethodOnRegisteredListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    return-void
.end method


# virtual methods
.method public addListener(Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    return-void
.end method

.method public declared-synchronized callMethodOnRegisteredListeners(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "methodName"
    .parameter "parameters"

    .prologue
    .line 427
    monitor-enter p0

    const/4 v4, 0x0

    .line 428
    .local v4, param_types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    .line 429
    :try_start_0
    array-length v5, p2

    new-array v4, v5, [Ljava/lang/Class;

    .line 430
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p2

    if-ge v1, v5, :cond_1

    .line 431
    aget-object v5, p2, v1

    if-nez v5, :cond_0

    .line 432
    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 430
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_0
    aget-object v5, p2, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 427
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 439
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 440
    iget-object v5, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    .local v2, listener:Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 443
    .local v3, method:Ljava/lang/reflect/Method;
    invoke-virtual {v3, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 439
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 448
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
    const v7, 0x3e4ccccd

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/high16 v9, 0x3f40

    const/4 v8, 0x0

    .line 478
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 481
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->scanningTime:I

    iput v5, v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->scanningTime:I

    .line 482
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v2

    .line 486
    .local v2, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    if-eqz v4, :cond_a

    .line 489
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    sub-int/2addr v4, v5

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    .line 491
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getBarcodePresenceDetected()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetViewfinderMessage(Ljava/lang/String;)V

    .line 505
    :cond_0
    :goto_0
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v4, :cond_c

    .line 508
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_1

    .line 509
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget-object v5, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, v5, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    const/high16 v6, 0x4000

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetBasicViewfinderTransparency(F)V

    .line 511
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_1

    .line 512
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v8}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetBasicViewfinderTransparency(F)V

    .line 517
    :cond_1
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v4, v5, :cond_b

    .line 519
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v9}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRoughCodePositionTransparency(F)V

    .line 522
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderRecognizedRed()F

    move-result v5

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderRecognizedGreen()F

    move-result v6

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderRecognizedBlue()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRColor(FFF)V

    .line 565
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRx0(I)V

    .line 566
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRy0(I)V

    .line 567
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRx1(I)V

    .line 568
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRy1(I)V

    .line 569
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRx2(I)V

    .line 570
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRy2(I)V

    .line 571
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRx3(I)V

    .line 572
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRy3(I)V

    .line 575
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    sub-int v1, v4, v5

    .line 577
    .local v1, counterCodeDecodedDiff:I
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v4, :cond_3

    .line 578
    if-nez v1, :cond_f

    .line 579
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v9}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetFlashTransparency(F)V

    .line 590
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget-boolean v4, v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->stateChanged:Z

    if-eqz v4, :cond_4

    .line 592
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->invalidate()V

    .line 596
    :cond_4
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v4, :cond_12

    .line 597
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v10}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetCodeAlreadyRecognized(Z)V

    .line 599
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v4, v5, :cond_8

    .line 603
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_5

    .line 604
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->cleanBarcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 607
    :cond_5
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->cleanBarcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetCodeNumber(Ljava/lang/String;)V

    .line 609
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetCodeType(Ljava/lang/String;)V

    .line 611
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->cleanBarcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRMessage1(Ljava/lang/String;)V

    .line 613
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRMessage2(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 618
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isVibrateEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 621
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mVibrator:Landroid/os/Vibrator;

    iget-wide v5, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mVibrateTime:J

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 623
    :cond_6
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isBeepEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v11, :cond_7

    .line 625
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 628
    :cond_7
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->cleanBarcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetCodeNumber(Ljava/lang/String;)V

    .line 630
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetCodeType(Ljava/lang/String;)V

    .line 634
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v8}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetBasicViewfinderTransparency(F)V

    .line 641
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_8
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    sub-int/2addr v4, v5

    if-ne v4, v11, :cond_9

    .line 642
    new-array v3, v11, [Ljava/lang/String;

    .line 643
    .local v3, params:[Ljava/lang/String;
    const/4 v4, 0x0

    iget-object v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 644
    iget-object v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    aput-object v4, v3, v10

    .line 645
    const-string v4, "didScanBarcode"

    invoke-virtual {p0, v4, v3}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->callMethodOnRegisteredListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    .end local v3           #params:[Ljava/lang/String;
    :cond_9
    :goto_3
    return-void

    .line 497
    .end local v1           #counterCodeDecodedDiff:I
    :cond_a
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    sub-int/2addr v4, v5

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    .line 499
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInitialScanScreenState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetViewfinderMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :cond_b
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    cmpg-float v4, v4, v9

    if-gez v4, :cond_2

    .line 530
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget-object v5, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, v5, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    add-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRoughCodePositionTransparency(F)V

    .line 532
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_2

    .line 533
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v9}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRoughCodePositionTransparency(F)V

    goto/16 :goto_1

    .line 540
    :cond_c
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d

    .line 541
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget-object v5, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, v5, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    add-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetBasicViewfinderTransparency(F)V

    .line 543
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    .line 544
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetBasicViewfinderTransparency(F)V

    .line 549
    :cond_d
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_e

    .line 550
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget-object v5, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v5, v5, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    sub-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRoughCodePositionTransparency(F)V

    .line 552
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    iget v4, v4, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_e

    .line 553
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v8}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRoughCodePositionTransparency(F)V

    .line 558
    :cond_e
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderRed()F

    move-result v5

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderGreen()F

    move-result v6

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderBlue()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRColor(FFF)V

    goto/16 :goto_1

    .line 580
    .restart local v1       #counterCodeDecodedDiff:I
    :cond_f
    if-ne v1, v10, :cond_10

    .line 581
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    const v5, 0x3e99999a

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetFlashTransparency(F)V

    goto/16 :goto_2

    .line 582
    :cond_10
    if-ne v1, v11, :cond_11

    .line 583
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    const v5, 0x3dcccccd

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetFlashTransparency(F)V

    goto/16 :goto_2

    .line 585
    :cond_11
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v4, v8}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetFlashTransparency(F)V

    goto/16 :goto_2

    .line 649
    :cond_12
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetCodeAlreadyRecognized(Z)V

    .line 651
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v4, :cond_9

    .line 652
    iget-object v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getBarcodeDecodingInProgress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->monitoredSetRMessage1(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 661
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->is1DRecognitionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->is2DRecognitionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mPainter:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;

    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->drawUIState(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;II)V

    .line 666
    :cond_1
    iget v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->hasTorch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    const/4 v1, 0x1

    iput v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    .line 669
    :cond_2
    iget v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isTorchEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 670
    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 675
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 676
    return-void

    .line 672
    :cond_3
    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public drawViewfinderTextHook(Z)V
    .locals 2
    .parameter "draw"

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 297
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setDrawViewfinderTextHook(Z)V

    .line 298
    return-void
.end method

.method protected getTorchMode()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    return v0
.end method

.method public loadBeep()V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v1

    .line 149
    .local v1, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getBeepResource()I

    move-result v0

    .line 150
    .local v0, beepResourceID:I
    if-eqz v0, :cond_1

    .line 151
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 156
    :cond_1
    return-void
.end method

.method public removeAllListenes()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 412
    return-void
.end method

.method public removeListener(Lcom/mirasense/scanditsdk/interfaces/ScanditSDKListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->registeredScanDKListerens:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method public resetGUI()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mUiState:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->resetValues()V

    .line 277
    return-void
.end method

.method public setBeepEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 369
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setBeepEnabled(Z)V

    .line 370
    return-void
.end method

.method public setInfoBannerY(F)V
    .locals 2
    .parameter "y"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 285
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setInfoBannerY(F)V

    .line 286
    return-void
.end method

.method public setLeftButtonCaption(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 330
    return-void
.end method

.method public setLeftButtonCaptionWhenKeypadVisible(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 332
    return-void
.end method

.method public setRightButtonCaption(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 334
    return-void
.end method

.method public setRightButtonCaptionWhenKeypadVisible(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 336
    return-void
.end method

.method public setSearchBarKeyboardType(I)V
    .locals 1
    .parameter "inputType"

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setSearchBarKeyboardType(I)V

    .line 349
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 352
    :cond_0
    return-void
.end method

.method public setSearchBarPlaceholderText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 342
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setSearchBarPlaceholder(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->invalidate()V

    .line 344
    return-void
.end method

.method public setTextForBarcodeDecodingInProgress(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 318
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setBarcodeDecodingInProgress(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public setTextForBarcodePresenceDetected(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 312
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setBarcodePresenceDetected(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public setTextForInitialScanScreenState(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 306
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setInitialScanScreenState(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public setTextForMostLikelyBarcodeUIElement(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 301
    return-void
.end method

.method public setTextIfNoBarcodeWasRecognized(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 322
    return-void
.end method

.method public setTextToSuggestManualEntry(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 325
    return-void
.end method

.method public setTitleMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 328
    return-void
.end method

.method public setTorchButtonAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 140
    return-void
.end method

.method public setTorchEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 381
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setTorchEnabled(Z)V

    .line 382
    return-void
.end method

.method public setTorchOffImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 387
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setTorchOffImage(Landroid/graphics/Bitmap;)V

    .line 388
    return-void
.end method

.method public setTorchOnImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 393
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setTorchOnImage(Landroid/graphics/Bitmap;)V

    .line 394
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 375
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setVibrateEnabled(Z)V

    .line 376
    return-void
.end method

.method public setViewfinderColor(FFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 357
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1, p2, p3}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setViewfinderColor(FFF)V

    .line 358
    return-void
.end method

.method public setViewfinderDecodedColor(FFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 363
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1, p2, p3}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setViewfinderRecognizedColor(FFF)V

    .line 364
    return-void
.end method

.method public setViewfinderDimension(FF)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 291
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1, p2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setViewfinderDimension(FF)V

    .line 292
    return-void
.end method

.method public showMostLikelyBarcodeUIElement(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 280
    return-void
.end method

.method public showSearchBar(Z)V
    .locals 7
    .parameter "show"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 190
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchBar:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 195
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchBar:Landroid/widget/RelativeLayout;

    .line 197
    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchButton:Landroid/widget/ImageButton;

    .line 198
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getSearchButtonIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchButton:Landroid/widget/ImageButton;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 200
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v1, rParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 202
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchBar:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchButton:Landroid/widget/ImageButton;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setId(I)V

    .line 204
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$2;

    invoke-direct {v3, p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$2;-><init>(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    .line 212
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getSearchBarPlaceholder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getSearchBarKeyboardType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 214
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 215
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 216
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 218
    .restart local v1       #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getId()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 220
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchBar:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$3;

    invoke-direct {v3, p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$3;-><init>(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 242
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$4;

    invoke-direct {v3, p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$4;-><init>(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 252
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 254
    .restart local v1       #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 255
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-virtual {p0, v5, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 263
    .end local v0           #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    .end local v1           #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchBar:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->removeView(Landroid/view/View;)V

    .line 261
    iput-object v5, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchBar:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public showTitleBar(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 266
    return-void
.end method

.method public showToolBar(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 268
    return-void
.end method

.method public switchTorchOn(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 169
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->isTorchBeingSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 175
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    iget v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_2

    .line 176
    iput v4, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    .line 177
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setTorch(Z)V

    .line 178
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTorchOnImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 179
    .local v1, image:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 180
    .end local v1           #image:Landroid/graphics/Bitmap;
    :cond_2
    iget v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    if-ne v2, v4, :cond_0

    if-nez p1, :cond_0

    .line 181
    iput v3, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I

    .line 182
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setTorch(Z)V

    .line 183
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTorchOffImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 184
    .restart local v1       #image:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
