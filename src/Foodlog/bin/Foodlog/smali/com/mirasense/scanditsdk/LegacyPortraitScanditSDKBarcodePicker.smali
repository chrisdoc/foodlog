.class public Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;
.super Landroid/widget/RelativeLayout;
.source "LegacyPortraitScanditSDKBarcodePicker.java"

# interfaces
.implements Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/mirasense/scanditsdk/analytics/LocationHubListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;
    }
.end annotation


# static fields
.field public static final ADJUST:I = 0x4

.field private static final AUTOFOCUS_FRAME_TRIGGER_THRESHOLD:I = 0xc

.field private static final DATA_TABLE_FILES_PREFIX:Ljava/lang/String; = "mirasense"

.field public static final FAILED:I = 0x3

.field public static final FAILED_PREVIEW:I = 0x5

.field public static final HIDE:I = 0x2

.field private static final LICENSE_NAME_CUSTOM:Ljava/lang/String; = "license_key_custom"

.field private static final LICENSE_NAME_PRODUCTION:Ljava/lang/String; = "production_license_key_free_apps"

.field public static final LOCATION_FORCED:I = 0x2

.field public static final LOCATION_IF_AVAILABLE:I = 0x1

.field public static final LOCATION_NONE:I = 0x0

.field private static final SCANDIT_SDK_SHARED_LIBRARY_NAME:Ljava/lang/String; = "scanditsdk-android-3.3.1"

.field public static final SHOW:I = 0x1


# instance fields
.field private mAdjustedSubviewDimensions:Z

.field private mAfEnabled:Z

.field private final mAppKey:Ljava/lang/String;

.field private mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraInitThread:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;

.field private mCounterAfLastEnabled:I

.field private final mDeviceId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasTorch:Z

.field private mHotSpotHeightBuffered:Z

.field private mImageDataOfFirstRecognition:[B

.field private mImageDataOk:Z

.field private mInitThreadFinished:Z

.field private mLast2dDetectedCounter:I

.field private mLast2dResult:Lcom/mirasense/scanditsdk/twod/Result;

.field private mLast2dResultCounter:I

.field private mLast2dSymbology:Ljava/lang/String;

.field private mLastLocationPoll:J

.field private mLastPreviewImageData:[B

.field private mLocationGathering:I

.field private mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

.field private final mPlatformAppId:Ljava/lang/String;

.field private mPreviewBuffer:[B

.field private mPreviewImageHeight:I

.field private mPreviewImageWidth:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueuedCode128Enabled:Ljava/lang/Boolean;

.field private mQueuedCode39Enabled:Ljava/lang/Boolean;

.field private mQueuedEan13AndUpc12Enabled:Ljava/lang/Boolean;

.field private mQueuedEan8Enabled:Ljava/lang/Boolean;

.field private mQueuedItfEnabled:Ljava/lang/Boolean;

.field private mQueuedLocation:Landroid/location/Location;

.field private mQueuedUpceEnabled:Ljava/lang/Boolean;

.field private mRecognitionRunning:Z

.field private mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

.field private mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

.field private mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

.field private mSetTorchActive:Z

.field private mStartScanningOnSurfaceCreated:Z

.field private mSurfaceCreated:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTorchOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "appKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    .local p2, rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p3}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "appKey"

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 274
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 97
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedLocation:Landroid/location/Location;

    .line 98
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLastLocationPoll:J

    .line 100
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedEan13AndUpc12Enabled:Ljava/lang/Boolean;

    .line 101
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedEan8Enabled:Ljava/lang/Boolean;

    .line 102
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedUpceEnabled:Ljava/lang/Boolean;

    .line 103
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedCode39Enabled:Ljava/lang/Boolean;

    .line 104
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedCode128Enabled:Ljava/lang/Boolean;

    .line 105
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedItfEnabled:Ljava/lang/Boolean;

    .line 107
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHotSpotHeightBuffered:Z

    .line 109
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z

    .line 121
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    .line 124
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mRecognitionRunning:Z

    .line 125
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mImageDataOk:Z

    .line 128
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAfEnabled:Z

    .line 129
    iput v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCounterAfLastEnabled:I

    .line 131
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHasTorch:Z

    .line 132
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mTorchOn:Z

    .line 133
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSetTorchActive:Z

    .line 153
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;

    .line 154
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mInitThreadFinished:Z

    .line 155
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceCreated:Z

    .line 156
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mStartScanningOnSurfaceCreated:Z

    .line 157
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 159
    iput v9, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dDetectedCounter:I

    .line 160
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dResult:Lcom/mirasense/scanditsdk/twod/Result;

    .line 161
    const-string v3, "QR"

    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dSymbology:Ljava/lang/String;

    .line 162
    iput v9, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dResultCounter:I

    .line 164
    new-instance v3, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;

    invoke-direct {v3, p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;-><init>(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;

    .line 276
    iput-object p2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAppKey:Ljava/lang/String;

    .line 278
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->clean()V

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPlatformAppId:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 285
    :cond_0
    const-string v3, "0000000000000000"

    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mDeviceId:Ljava/lang/String;

    .line 293
    :goto_0
    iput v8, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLocationGathering:I

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, overwriteExistingResourceFiles:Z
    const-string v3, "mirasense"

    invoke-direct {p0, v3}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getRawResourceIDsForFilesWithNamePrefix(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 299
    .local v2, resIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v2, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->initializeRecognitionEngine(Ljava/util/ArrayList;Z)V

    .line 303
    new-instance v3, Landroid/view/SurfaceView;

    invoke-direct {v3, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    .line 304
    iget-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 305
    iget-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 306
    iget-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 309
    new-instance v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-direct {v3}, Lcom/mirasense/scanditsdk/ScanditSDKScanState;-><init>()V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    .line 310
    new-instance v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-direct {v3}, Lcom/mirasense/scanditsdk/ScanditSDKScanState;-><init>()V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    .line 311
    new-instance v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-direct {v3}, Lcom/mirasense/scanditsdk/ScanditSDKScanState;-><init>()V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    .line 313
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mRecognitionRunning:Z

    .line 314
    iput-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mImageDataOfFirstRecognition:[B

    .line 315
    iput v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I

    .line 316
    iput v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I

    .line 318
    new-instance v3, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    const-wide/16 v4, 0x12c

    invoke-direct {v3, p1, p0, v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;-><init>(Landroid/content/Context;Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;J)V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    .line 320
    iget-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    return-void

    .line 287
    .end local v1           #overwriteExistingResourceFiles:Z
    .end local v2           #resIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    iput-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSetTorchActive:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHotSpotHeightBuffered:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHasTorch:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHasTorch:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mTorchOn:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewBuffer:[B

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewBuffer:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I

    return v0
.end method

.method static synthetic access$202(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mInitThreadFinished:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;)Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;

    return-object p1
.end method

.method private byteArrayToHexStr([B)Ljava/lang/String;
    .locals 8
    .parameter "data"

    .prologue
    const/16 v7, 0xa

    .line 1411
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 1412
    .local v0, chars:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 1413
    aget-byte v1, p1, v3

    .line 1414
    .local v1, current:B
    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v2, v5, 0x4

    .line 1415
    .local v2, hi:I
    and-int/lit8 v4, v1, 0xf

    .line 1416
    .local v4, lo:I
    mul-int/lit8 v6, v3, 0x2

    if-ge v2, v7, :cond_0

    add-int/lit8 v5, v2, 0x30

    :goto_1
    int-to-char v5, v5

    aput-char v5, v0, v6

    .line 1417
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v5, 0x1

    if-ge v4, v7, :cond_1

    add-int/lit8 v5, v4, 0x30

    :goto_2
    int-to-char v5, v5

    aput-char v5, v0, v6

    .line 1412
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1416
    :cond_0
    add-int/lit8 v5, v2, 0x61

    add-int/lit8 v5, v5, -0xa

    goto :goto_1

    .line 1417
    :cond_1
    add-int/lit8 v5, v4, 0x61

    add-int/lit8 v5, v5, -0xa

    goto :goto_2

    .line 1419
    .end local v1           #current:B
    .end local v2           #hi:I
    .end local v4           #lo:I
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method public static cleanup()V
    .locals 0

    .prologue
    .line 352
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->deleteInstance()V

    .line 353
    return-void
.end method

.method private copyResourceToNewDir(ILjava/io/File;Z)V
    .locals 16
    .parameter "resourceId"
    .parameter "filesDirFile"
    .parameter "overwrite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1238
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 1239
    .local v7, is:Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    .line 1241
    .local v6, filename:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1242
    .local v4, ex:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1244
    .local v10, path:Ljava/lang/String;
    if-nez p3, :cond_0

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1246
    :cond_0
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1247
    .local v11, target:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1248
    .local v5, f:Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1249
    .local v9, out:Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 1250
    .local v1, buffer:[B
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v7, v1, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 1251
    .local v8, len:I
    :goto_0
    const/4 v12, -0x1

    if-eq v8, v12, :cond_1

    .line 1252
    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1253
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v7, v1, v12, v13}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 1255
    .end local v1           #buffer:[B
    .end local v5           #f:Ljava/io/File;
    .end local v8           #len:I
    .end local v9           #out:Ljava/io/FileOutputStream;
    .end local v11           #target:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1256
    .local v3, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v2

    .line 1257
    .local v2, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not copy the resource file \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v3, v13}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1259
    const-string v12, "ScanditSDK"

    const-string v13, "Could not copy the resource file \'%s\'"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1261
    move-object v4, v3

    .line 1264
    .end local v2           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 1266
    if-eqz v4, :cond_2

    .line 1267
    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 1269
    :cond_2
    return-void
.end method

.method private escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "string"

    .prologue
    .line 1388
    move-object v1, p1

    .line 1389
    .local v1, cleanString:Ljava/lang/String;
    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1390
    const/4 v2, 0x0

    .local v2, i:B
    :goto_0
    const/16 v4, 0x20

    if-ge v2, v4, :cond_0

    .line 1391
    const/4 v4, 0x1

    new-array v0, v4, [B

    const/4 v4, 0x0

    aput-byte v2, v0, v4

    .line 1392
    .local v0, chars:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 1393
    .local v3, s:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1390
    add-int/lit8 v4, v2, 0x1

    int-to-byte v2, v4

    goto :goto_0

    .line 1395
    .end local v0           #chars:[B
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getCodeAndSymbology(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "concatString"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1215
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 1227
    :goto_0
    return-object v1

    .line 1218
    :cond_1
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 1219
    .local v1, result:[Ljava/lang/String;
    const-string v3, ":symbology:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1221
    .local v0, i:I
    if-gez v0, :cond_2

    move-object v1, v2

    .line 1222
    goto :goto_0

    .line 1224
    :cond_2
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1225
    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0xb

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method private getRawResourceIDsForFilesWithNamePrefix(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "namePrefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1283
    .local v2, pack:Ljava/lang/String;
    const-string v3, "raw"

    .line 1286
    .local v3, type:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "production_license_key_free_apps"

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1288
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 1289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1294
    .end local v0           #id:I
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "license_key_custom"

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1296
    .restart local v0       #id:I
    if-eqz v0, :cond_1

    .line 1297
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1301
    .end local v0           #id:I
    :cond_1
    :goto_1
    return-object v1

    .line 1299
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1291
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private initializeRecognitionEngine(Ljava/util/ArrayList;Z)V
    .locals 15
    .parameter
    .parameter "overwriteExistingResourceFiles"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1316
    .local p1, resourceIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-nez v1, :cond_7

    .line 1317
    const-string v1, "scanditsdk-android-3.3.1"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1322
    if-eqz p1, :cond_0

    .line 1323
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1324
    .local v14, resId:I
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    move/from16 v0, p2

    invoke-direct {p0, v14, v1, v0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->copyResourceToNewDir(ILjava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1328
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #resId:I
    :catch_0
    move-exception v11

    .line 1329
    .local v11, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v9

    .line 1330
    .local v9, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v1, "Could not copy required files from the resources."

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v11, v2}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1332
    const-string v1, "ScanditSDK"

    const-string v2, "Could not copy required files from the resources."

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1337
    .end local v9           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v11           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->getInstance(Ljava/io/File;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    move-result-object v12

    .line 1339
    .local v12, factory:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;
    invoke-virtual {v12}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->subscribeForReader()Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-result-object v1

    iput-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    .line 1342
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    .line 1343
    .local v10, dir:Ljava/io/File;
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAppKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPlatformAppId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->sha1Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android"

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setDeviceInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v9

    .line 1350
    .restart local v9       #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v1, "Using legacy picker"

    invoke-virtual {v9, v1}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Absolute path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1355
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 1356
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedLocation:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setScanLocation(Landroid/location/Location;)V

    .line 1357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedLocation:Landroid/location/Location;

    .line 1360
    :cond_1
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedEan13AndUpc12Enabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1361
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedEan13AndUpc12Enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setEan13AndUpc12Enabled(Z)V

    .line 1362
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedEan13AndUpc12Enabled:Ljava/lang/Boolean;

    .line 1364
    :cond_2
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedEan8Enabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 1365
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedEan8Enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setEan8Enabled(Z)V

    .line 1366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedEan8Enabled:Ljava/lang/Boolean;

    .line 1368
    :cond_3
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedUpceEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 1369
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedUpceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setUpceEnabled(Z)V

    .line 1370
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedUpceEnabled:Ljava/lang/Boolean;

    .line 1372
    :cond_4
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedCode39Enabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 1373
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedCode39Enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setCode39Enabled(Z)V

    .line 1374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedCode39Enabled:Ljava/lang/Boolean;

    .line 1376
    :cond_5
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedCode128Enabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 1377
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedCode128Enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setCode128Enabled(Z)V

    .line 1378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedCode128Enabled:Ljava/lang/Boolean;

    .line 1380
    :cond_6
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedItfEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 1381
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedItfEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setItfEnabled(Z)V

    .line 1382
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedItfEnabled:Ljava/lang/Boolean;

    .line 1385
    .end local v9           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v10           #dir:Ljava/io/File;
    .end local v12           #factory:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;
    :cond_7
    return-void
.end method

.method private mergeScanStates(Lcom/mirasense/scanditsdk/ScanditSDKScanState;Lcom/mirasense/scanditsdk/ScanditSDKScanState;Lcom/mirasense/scanditsdk/ScanditSDKScanState;)V
    .locals 8
    .parameter "stateA"
    .parameter "stateB"
    .parameter "resultingState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1122
    iget v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    .line 1124
    iget-boolean v6, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-nez v6, :cond_0

    iget-boolean v6, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v6, :cond_11

    :cond_0
    move v1, v5

    .line 1125
    .local v1, decoded:Z
    :goto_0
    iget-boolean v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eq v1, v6, :cond_1

    .line 1126
    iput-boolean v1, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    .line 1127
    iget v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    .line 1129
    :cond_1
    iget-boolean v6, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v6, :cond_2

    iget v6, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    iget v7, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-eq v6, v7, :cond_3

    :cond_2
    iget-boolean v6, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v6, :cond_4

    iget v6, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    iget v7, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v6, v7, :cond_4

    .line 1131
    :cond_3
    iget v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    .line 1134
    :cond_4
    iget-boolean v6, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-nez v6, :cond_5

    iget-boolean v6, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v6, :cond_12

    :cond_5
    move v0, v5

    .line 1135
    .local v0, close:Z
    :goto_1
    iget-boolean v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eq v0, v6, :cond_6

    .line 1136
    iput-boolean v0, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    .line 1137
    iget v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    .line 1139
    :cond_6
    iget v6, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    iget v7, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-eq v6, v7, :cond_7

    iget v6, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    iget v7, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v6, v7, :cond_8

    .line 1141
    :cond_7
    iget v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    .line 1144
    :cond_8
    iget-boolean v6, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    if-nez v6, :cond_9

    iget-boolean v6, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    if-eqz v6, :cond_13

    :cond_9
    move v2, v5

    .line 1145
    .local v2, might:Z
    :goto_2
    iget-boolean v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    if-eq v2, v4, :cond_a

    .line 1146
    iput-boolean v2, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    .line 1147
    iget v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    .line 1149
    :cond_a
    iget v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    iget v5, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-eq v4, v5, :cond_b

    iget v4, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    iget v5, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v4, v5, :cond_c

    .line 1151
    :cond_b
    iget v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    .line 1154
    :cond_c
    if-nez v1, :cond_d

    if-eqz v0, :cond_10

    .line 1156
    :cond_d
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v4, :cond_e

    iget-boolean v4, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v4, :cond_f

    :cond_e
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v4, :cond_14

    iget-boolean v4, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-nez v4, :cond_14

    .line 1158
    :cond_f
    move-object v3, p1

    .line 1162
    .local v3, stateWithPosition:Lcom/mirasense/scanditsdk/ScanditSDKScanState;
    :goto_3
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex0:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex0:I

    .line 1163
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey0:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey0:I

    .line 1164
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex1:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex1:I

    .line 1165
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey1:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey1:I

    .line 1166
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex2:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex2:I

    .line 1167
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey2:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey2:I

    .line 1168
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex3:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex3:I

    .line 1169
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey3:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey3:I

    .line 1171
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1172
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1173
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1174
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1175
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1176
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1177
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1178
    iget v4, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 1181
    .end local v3           #stateWithPosition:Lcom/mirasense/scanditsdk/ScanditSDKScanState;
    :cond_10
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v4, :cond_15

    iget-object v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1182
    iget-object v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    .line 1183
    iget-object v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    .line 1192
    :goto_4
    iget-boolean v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v4, :cond_17

    iget-object v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 1193
    iget-object v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1194
    iget-object v4, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    .line 1203
    :goto_5
    iget v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterRoughPosValidChanged:I

    .line 1204
    return-void

    .end local v0           #close:Z
    .end local v1           #decoded:Z
    .end local v2           #might:Z
    :cond_11
    move v1, v4

    .line 1124
    goto/16 :goto_0

    .restart local v1       #decoded:Z
    :cond_12
    move v0, v4

    .line 1134
    goto/16 :goto_1

    .restart local v0       #close:Z
    :cond_13
    move v2, v4

    .line 1144
    goto/16 :goto_2

    .line 1160
    .restart local v2       #might:Z
    :cond_14
    move-object v3, p2

    .restart local v3       #stateWithPosition:Lcom/mirasense/scanditsdk/ScanditSDKScanState;
    goto :goto_3

    .line 1184
    .end local v3           #stateWithPosition:Lcom/mirasense/scanditsdk/ScanditSDKScanState;
    :cond_15
    iget-boolean v4, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v4, :cond_16

    iget-object v4, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1185
    iget-object v4, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    .line 1186
    iget-object v4, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    goto :goto_4

    .line 1188
    :cond_16
    const-string v4, ""

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    .line 1189
    const-string v4, ""

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    goto :goto_4

    .line 1195
    :cond_17
    iget-boolean v4, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v4, :cond_18

    iget-object v4, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1196
    iget-object v4, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1197
    iget-object v4, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    goto :goto_5

    .line 1199
    :cond_18
    const-string v4, ""

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1200
    const-string v4, ""

    iput-object v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    goto :goto_5
.end method

.method private performRecognition([BIIII)V
    .locals 21
    .parameter "imageData"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 862
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mImageDataOk:Z

    if-nez v4, :cond_0

    .line 943
    :goto_0
    return-void

    .line 863
    :cond_0
    if-nez p1, :cond_1

    .line 864
    const-string v4, "ScanditSDK"

    const-string v5, "The data returned by the camera is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 868
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLastPreviewImageData:[B

    .line 872
    move-object/from16 v0, p1

    array-length v4, v0

    mul-int v5, p2, p3

    if-ge v4, v5, :cond_2

    .line 874
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mImageDataOk:Z

    .line 875
    const-string v4, "ScanditSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The image information for camera preview images ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes) is not consistent with the image dimensions ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = min."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int v6, p2, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes required). No recognition is performed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    mul-int v5, p3, p2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v5, v1, v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->processImage([BIII)V

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v17

    .line 883
    .local v17, guiOverlayW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v16

    .line 885
    .local v16, guiOverlayH:I
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v14, v4, v5

    .line 886
    .local v14, factorY:F
    move/from16 v0, v16

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    div-float v13, v4, v5

    .line 887
    .local v13, factorX:F
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->updateScanStateInformation(FF)V

    .line 889
    const/16 v18, 0x0

    .line 890
    .local v18, rawResult:Lcom/mirasense/scanditsdk/twod/Result;
    const-string v20, "QR"

    .line 891
    .local v20, symbology:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dDetectedCounter:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dDetectedCounter:I

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v15

    .line 893
    .local v15, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-boolean v4, v4, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->contains2dCode()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dDetectedCounter:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_8

    :cond_3
    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isPreFroyoQREnabled()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isPreFroyoDataMatrixEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 897
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->contains2dCode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 898
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dDetectedCounter:I

    .line 900
    :cond_5
    new-instance v3, Lcom/mirasense/scanditsdk/twod/PlanarYUVLuminanceSource;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v3 .. v11}, Lcom/mirasense/scanditsdk/twod/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 903
    .local v3, source:Lcom/mirasense/scanditsdk/twod/PlanarYUVLuminanceSource;
    new-instance v12, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;

    new-instance v4, Lcom/mirasense/scanditsdk/twod/common/HybridBinarizer;

    invoke-direct {v4, v3}, Lcom/mirasense/scanditsdk/twod/common/HybridBinarizer;-><init>(Lcom/mirasense/scanditsdk/twod/LuminanceSource;)V

    invoke-direct {v12, v4}, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;-><init>(Lcom/mirasense/scanditsdk/twod/Binarizer;)V

    .line 905
    .local v12, bitmap:Lcom/mirasense/scanditsdk/twod/BinaryBitmap;
    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isPreFroyoQREnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 907
    :try_start_0
    new-instance v19, Lcom/mirasense/scanditsdk/twod/qrcode/QRCodeReader;

    invoke-direct/range {v19 .. v19}, Lcom/mirasense/scanditsdk/twod/qrcode/QRCodeReader;-><init>()V

    .line 908
    .local v19, reader:Lcom/mirasense/scanditsdk/twod/Reader;
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/mirasense/scanditsdk/twod/Reader;->decode(Lcom/mirasense/scanditsdk/twod/BinaryBitmap;)Lcom/mirasense/scanditsdk/twod/Result;
    :try_end_0
    .catch Lcom/mirasense/scanditsdk/twod/ReaderException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 913
    .end local v19           #reader:Lcom/mirasense/scanditsdk/twod/Reader;
    :cond_6
    :goto_1
    if-nez v18, :cond_7

    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isPreFroyoDataMatrixEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 916
    :try_start_1
    new-instance v19, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;

    invoke-direct/range {v19 .. v19}, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;-><init>()V

    .line 917
    .restart local v19       #reader:Lcom/mirasense/scanditsdk/twod/Reader;
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/mirasense/scanditsdk/twod/Reader;->decode(Lcom/mirasense/scanditsdk/twod/BinaryBitmap;)Lcom/mirasense/scanditsdk/twod/Result;

    move-result-object v18

    .line 918
    const-string v20, "DATAMATRIX"
    :try_end_1
    .catch Lcom/mirasense/scanditsdk/twod/ReaderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 924
    .end local v19           #reader:Lcom/mirasense/scanditsdk/twod/Reader;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dResultCounter:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dResultCounter:I

    .line 925
    if-eqz v18, :cond_a

    .line 926
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dResultCounter:I

    .line 933
    .end local v3           #source:Lcom/mirasense/scanditsdk/twod/PlanarYUVLuminanceSource;
    .end local v12           #bitmap:Lcom/mirasense/scanditsdk/twod/BinaryBitmap;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->update2dScanStateInformation(Lcom/mirasense/scanditsdk/twod/Result;Ljava/lang/String;FF)V

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mergeScanStates(Lcom/mirasense/scanditsdk/ScanditSDKScanState;Lcom/mirasense/scanditsdk/ScanditSDKScanState;Lcom/mirasense/scanditsdk/ScanditSDKScanState;)V

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-boolean v4, v4, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v4, v4, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v5, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v4, v5, :cond_9

    .line 940
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mImageDataOfFirstRecognition:[B

    .line 942
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->didUpdateStatus(Lcom/mirasense/scanditsdk/ScanditSDKScanState;)V

    goto/16 :goto_0

    .line 927
    .restart local v3       #source:Lcom/mirasense/scanditsdk/twod/PlanarYUVLuminanceSource;
    .restart local v12       #bitmap:Lcom/mirasense/scanditsdk/twod/BinaryBitmap;
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dResultCounter:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dResult:Lcom/mirasense/scanditsdk/twod/Result;

    if-eqz v4, :cond_8

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dResult:Lcom/mirasense/scanditsdk/twod/Result;

    move-object/from16 v18, v0

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dSymbology:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_3

    .line 919
    :catch_0
    move-exception v4

    goto :goto_2

    .line 909
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.method private setEan128BlackWhiteWidthCorrection(I)V
    .locals 1
    .parameter "correction"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setEan128OversizeOfBlackBars(I)V

    .line 647
    :cond_0
    return-void
.end method

.method private setEan128CertaintyThreshold(I)V
    .locals 2
    .parameter "threshold"

    .prologue
    .line 620
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v1, :cond_0

    .line 621
    rsub-int/lit8 v0, p1, 0x64

    .line 622
    .local v0, value:I
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 623
    const/16 v0, 0x64

    .line 627
    :goto_0
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v1, v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setEan128Certainty(I)V

    .line 629
    .end local v0           #value:I
    :cond_0
    return-void

    .line 625
    .restart local v0       #value:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScanLocation(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 656
    iget v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLocationGathering:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-nez v0, :cond_1

    .line 658
    iput-object p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedLocation:Landroid/location/Location;

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setScanLocation(Landroid/location/Location;)V

    goto :goto_0
.end method

.method private sha1Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 1400
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1401
    .local v2, sha:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 1402
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->byteArrayToHexStr([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1406
    .end local v2           #sha:Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 1403
    :catch_0
    move-exception v1

    .line 1404
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v0

    .line 1405
    .local v0, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v3, "SHA-1 not available."

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1406
    const-string v3, ""

    goto :goto_0
.end method

.method private shouldAFBeTriggered()Z
    .locals 5

    .prologue
    const/16 v4, 0x32

    const/4 v1, 0x1

    .line 822
    iget v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCounterAfLastEnabled:I

    iget-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v3, v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-le v2, v3, :cond_0

    .line 823
    iget-object v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v2, v2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCounterAfLastEnabled:I

    .line 825
    :cond_0
    iget-object v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v2, v2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iget v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCounterAfLastEnabled:I

    sub-int v0, v2, v3

    .line 827
    .local v0, frames_since_af:I
    iget-object v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodeDecoded()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodePresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    iget-object v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->imageBlur()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 845
    :cond_1
    :goto_0
    return v1

    .line 838
    :cond_2
    iget-object v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodeDecoded()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->imageBlur()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 840
    const/16 v2, 0xc

    if-gt v0, v2, :cond_1

    .line 845
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private update2dScanStateInformation(Lcom/mirasense/scanditsdk/twod/Result;Ljava/lang/String;FF)V
    .locals 11
    .parameter "result"
    .parameter "symbology"
    .parameter "factorX"
    .parameter "factorY"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1061
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    .line 1063
    if-nez p1, :cond_0

    .line 1064
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v7, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    .line 1065
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v7, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    .line 1066
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v7, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    .line 1118
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v8, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    .line 1071
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v8, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    .line 1072
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v8, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    .line 1073
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-boolean v5, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-nez v5, :cond_1

    .line 1074
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    .line 1075
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    .line 1076
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    .line 1079
    :cond_1
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v1

    .line 1080
    .local v1, guiOverlayW:I
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v0

    .line 1082
    .local v0, guiOverlayH:I
    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/Result;->getResultPoints()[Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v2

    .line 1083
    .local v2, points:[Lcom/mirasense/scanditsdk/twod/ResultPoint;
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/Result;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1084
    const-string v5, "QR"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1085
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    const-string v6, "QR"

    iput-object v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    .line 1086
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v9

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1087
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v9

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    sub-int v6, v0, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1088
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v7

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1089
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v7

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    sub-int v6, v0, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1090
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v8

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1091
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v8

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    sub-int v6, v0, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1092
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v5, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    sub-int v4, v5, v6

    .line 1093
    .local v4, rectangleWidth:I
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v5, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    sub-int v3, v5, v6

    .line 1094
    .local v3, rectangleHeight:I
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    add-int/2addr v6, v4

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1095
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 1097
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    mul-int/lit8 v7, v4, 0x1

    div-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1098
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    mul-int/lit8 v7, v3, 0x1

    div-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1099
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    mul-int/lit8 v7, v4, 0x1

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1100
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    mul-int/lit8 v7, v3, 0x1

    div-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1101
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    mul-int/lit8 v7, v4, 0x1

    div-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1102
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    mul-int/lit8 v7, v3, 0x1

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1103
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    mul-int/lit8 v7, v4, 0x1

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1104
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    mul-int/lit8 v7, v3, 0x1

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 1116
    .end local v3           #rectangleHeight:I
    .end local v4           #rectangleWidth:I
    :goto_1
    iput-object p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dResult:Lcom/mirasense/scanditsdk/twod/Result;

    .line 1117
    iput-object p2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLast2dSymbology:Ljava/lang/String;

    goto/16 :goto_0

    .line 1106
    :cond_2
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    const-string v6, "DATAMATRIX"

    iput-object v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    .line 1107
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v10

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1108
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v10

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    sub-int v6, v0, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1109
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v9

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 1110
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v9

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    sub-int v6, v0, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1111
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v7

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1112
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v7

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    sub-int v6, v0, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1113
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v8

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1114
    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v8

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    sub-int v6, v0, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    goto :goto_1
.end method

.method private updateScanStateInformation(FF)V
    .locals 29
    .parameter "factorX"
    .parameter "factorY"

    .prologue
    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isRecognitionEngineReady()Z

    move-result v23

    if-nez v23, :cond_0

    .line 1057
    :goto_0
    return-void

    .line 961
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->fetchLuckShotResult()Ljava/lang/String;

    move-result-object v11

    .line 965
    .local v11, luckyShotBarcode:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getCodeAndSymbology(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 966
    .local v12, luckyShotResult:[Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v24, v12, v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v24, v12, v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    .line 975
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodeDecoded()Z

    move-result v3

    .line 976
    .local v3, barcodeDecoded:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v3, :cond_4

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v3, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    .line 983
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodePresent()Z

    move-result v4

    .line 984
    .local v4, closeToCode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v4, :cond_5

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    .line 991
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodePossiblyClose()Z

    move-result v5

    .line 992
    .local v5, codeMightBePresent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v5, :cond_6

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    .line 1000
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodeDecoded()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->fetchResult()Ljava/lang/String;

    move-result-object v8

    .line 1002
    .local v8, decodedBarcode:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getCodeAndSymbology(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, barcode:[Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v24, v2, v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v24, v2, v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    .line 1012
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->getExactPositionOfFinalBarcode()[I

    move-result-object v9

    .line 1013
    .local v9, exactPos:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v24, v9, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p1

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex0:I

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v24, v9, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey0:I

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget v24, v9, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p1

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex1:I

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget v24, v9, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey1:I

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    aget v24, v9, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p1

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex2:I

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    aget v24, v9, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey2:I

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    aget v24, v9, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p1

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex3:I

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    aget v24, v9, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey3:I

    .line 1024
    .end local v2           #barcode:[Ljava/lang/String;
    .end local v8           #decodedBarcode:Ljava/lang/String;
    .end local v9           #exactPos:[I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->getRoughCodePosition()[I

    move-result-object v15

    .line 1025
    .local v15, roughPos:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v24, v15, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p1

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v24, v15, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget v24, v15, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p1

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget v24, v15, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    aget v24, v15, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p1

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    aget v24, v15, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    aget v24, v15, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p1

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    aget v24, v15, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v10

    .line 1035
    .local v10, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderHeight()F

    move-result v20

    .line 1036
    .local v20, viewfinderHeight:F
    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fd0

    cmpl-double v23, v23, v25

    if-eqz v23, :cond_2

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v20

    move/from16 v0, v23

    float-to-double v13, v0

    .line 1038
    .local v13, maxHeight:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    move/from16 v24, v0

    sub-int v21, v23, v24

    .line 1039
    .local v21, xDiff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    move/from16 v24, v0

    sub-int v22, v23, v24

    .line 1040
    .local v22, yDiff:I
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    add-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 1041
    .local v6, curHeight:D
    cmpl-double v23, v6, v13

    if-lez v23, :cond_2

    .line 1042
    div-double v16, v13, v6

    .line 1043
    .local v16, scale:D
    const-wide/high16 v23, 0x3ff0

    sub-double v23, v23, v16

    const-wide/high16 v25, 0x4000

    div-double v18, v23, v25

    .line 1044
    .local v18, shortenBy:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v18

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v18

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v18

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v18

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v18

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v18

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v18

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v18

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 1056
    .end local v6           #curHeight:D
    .end local v13           #maxHeight:D
    .end local v16           #scale:D
    .end local v18           #shortenBy:D
    .end local v21           #xDiff:I
    .end local v22           #yDiff:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterRoughPosValidChanged:I

    goto/16 :goto_0

    .line 970
    .end local v3           #barcodeDecoded:Z
    .end local v4           #closeToCode:Z
    .end local v5           #codeMightBePresent:Z
    .end local v10           #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    .end local v15           #roughPos:[I
    .end local v20           #viewfinderHeight:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    goto/16 :goto_1

    .line 980
    .restart local v3       #barcodeDecoded:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v3, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    goto/16 :goto_2

    .line 988
    .restart local v4       #closeToCode:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    goto/16 :goto_3

    .line 996
    .restart local v5       #codeMightBePresent:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    goto/16 :goto_4

    .line 1007
    .restart local v2       #barcode:[Ljava/lang/String;
    .restart local v8       #decodedBarcode:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    goto/16 :goto_5
.end method


# virtual methods
.method public force2dRecognition(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->force2dRecognition(Z)V

    .line 581
    :cond_0
    return-void
.end method

.method public getCameraPreviewImageHeight()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I

    return v0
.end method

.method public getCameraPreviewImageOfFirstBarcodeRecognition()[B
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mImageDataOfFirstRecognition:[B

    return-object v0
.end method

.method public getCameraPreviewImageWidth()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I

    return v0
.end method

.method public getMostRecentCameraPreviewImage()[B
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLastPreviewImageData:[B

    return-object v0
.end method

.method public getOverlayView()Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    return-object v0
.end method

.method public bridge synthetic getOverlayView()Lcom/mirasense/scanditsdk/interfaces/ScanditSDKOverlay;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getOverlayView()Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 603
    const-string v0, "diagnostics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getPlaintext()Ljava/lang/String;

    move-result-object v0

    .line 606
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasForwardFacingCamera()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public hasTorch()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 711
    const/4 v0, 0x0

    .line 713
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHasTorch:Z

    goto :goto_0
.end method

.method public ignorePreviewAspectRatio()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z

    .line 470
    return-void
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mRecognitionRunning:Z

    return v0
.end method

.method public isTorchBeingSet()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSetTorchActive:Z

    return v0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAfEnabled:Z

    .line 684
    return-void
.end method

.method public onLocationUpdate(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 672
    if-eqz p1, :cond_0

    .line 673
    invoke-direct {p0, p1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setScanLocation(Landroid/location/Location;)V

    .line 675
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 12
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v11, 0x1

    .line 764
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mRecognitionRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-nez v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->hasAnalyticsErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 771
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->getAnalyticsErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->showErrorMessage(Ljava/lang/String;)V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    .line 773
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->unsubscribe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 803
    :catch_0
    move-exception v9

    .line 804
    .local v9, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v8

    .line 805
    .local v8, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v0, "Failed in onPreviewFrame()."

    invoke-virtual {v8, v0, v9, v11}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 808
    .end local v8           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v9           #e:Ljava/lang/Exception;
    :cond_2
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 809
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewBuffer:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 777
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->isCameraInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 778
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->setCameraInitialized(Z)V

    .line 779
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->setCameraRunning(Z)V

    .line 781
    :cond_4
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v10

    .line 782
    .local v10, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->is1DRecognitionEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 785
    iget v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I

    iget v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I

    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->performRecognition([BIIII)V

    .line 789
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAfEnabled:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->shouldAFBeTriggered()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 790
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->triggerAutoFocus()V

    .line 795
    :cond_5
    iget v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLocationGathering:I

    if-ne v0, v11, :cond_2

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 797
    .local v6, curTime:J
    iget-wide v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLastLocationPoll:J

    sub-long v0, v6, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 799
    invoke-static {}, Lcom/mirasense/scanditsdk/analytics/LocationHub;->getInstance()Lcom/mirasense/scanditsdk/analytics/LocationHub;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mirasense/scanditsdk/analytics/LocationHub;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setScanLocation(Landroid/location/Location;)V

    .line 800
    iput-wide v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mLastLocationPoll:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->resetEngine()V

    .line 342
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->reset()V

    .line 343
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->reset()V

    .line 344
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->reset()V

    .line 345
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->resetGUI()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mImageDataOfFirstRecognition:[B

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAfEnabled:Z

    .line 349
    return-void
.end method

.method public set1DScanningEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 475
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->set1DRecognitionEnabled(Z)V

    .line 476
    return-void
.end method

.method public set2DScanningEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 481
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->set2DRecognitionEnabled(Z)V

    .line 482
    return-void
.end method

.method public setCode128Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableEan128(Z)V

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedCode128Enabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setCode39Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableCode39(Z)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedCode39Enabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setDataMatrixEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 550
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 551
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v1, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableDataMatrix(Z)V

    .line 556
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 554
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreFroyoDataMatrixEnabled(Z)V

    goto :goto_0
.end method

.method public setEan13AndUpc12Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableEan13Upc12(Z)V

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedEan13AndUpc12Enabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setEan8Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableEan8(Z)V

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedEan8Enabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setInverseRecognitionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableInverseDetection(Z)V

    .line 563
    :cond_0
    return-void
.end method

.method public setItfEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableItf(Z)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedItfEnabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setMicroDataMatrixEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->force2dRecognition(Z)V

    .line 568
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_1

    .line 569
    if-eqz p1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableDataMatrix(Z)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableMicroDataMatrix(Z)V

    .line 574
    :cond_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 590
    const-string v1, "ean128CertaintyThreshold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 592
    check-cast v0, Ljava/lang/Integer;

    .line 593
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setEan128CertaintyThreshold(I)V

    .line 599
    .end local v0           #i:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    const-string v1, "ean128BlackWhiteWidthCorrection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 596
    check-cast v0, Ljava/lang/Integer;

    .line 597
    .restart local v0       #i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setEan128BlackWhiteWidthCorrection(I)V

    goto :goto_0
.end method

.method public setQrEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 540
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 541
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v1, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableQR(Z)V

    .line 546
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 544
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreFroyoQREnabled(Z)V

    goto :goto_0
.end method

.method public setScanningHotSpot(FF)V
    .locals 2
    .parameter "relX"
    .parameter "relY"

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 432
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setScanningHotSpotX(F)V

    .line 433
    invoke-virtual {v0, p2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setScanningHotSpotY(F)V

    .line 434
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v1, p1, p2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setHotSpot(FF)V

    .line 437
    :cond_0
    return-void
.end method

.method public setScanningHotSpotHeight(F)V
    .locals 9
    .parameter "height"

    .prologue
    const/4 v8, 0x1

    .line 441
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-ltz v4, :cond_0

    float-to-double v4, p1

    const-wide/high16 v6, 0x3fe0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 445
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setScanningHotSpotHeight(F)V

    .line 446
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v4, :cond_0

    .line 447
    iget v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I

    if-lez v4, :cond_3

    .line 448
    iget v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v1, v4

    .line 449
    .local v1, heightInPixel:I
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getMaxSharpScanlineAmount()I

    move-result v2

    .line 451
    .local v2, maxScanlines:I
    if-gt v1, v2, :cond_2

    .line 452
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4, v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setSharpScanlineOffset(I)V

    .line 453
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setSharpScanlineAmount(I)V

    goto :goto_0

    .line 457
    :cond_2
    add-int/lit8 v4, v2, -0x1

    div-int v3, v1, v4

    .line 458
    .local v3, offset:I
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4, v3}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setSharpScanlineOffset(I)V

    .line 459
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4, v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setSharpScanlineAmount(I)V

    goto :goto_0

    .line 462
    .end local v1           #heightInPixel:I
    .end local v2           #maxScanlines:I
    .end local v3           #offset:I
    :cond_3
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHotSpotHeightBuffered:Z

    goto :goto_0
.end method

.method public setTorch(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 732
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSetTorchActive:Z

    if-eqz v0, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iput-boolean v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSetTorchActive:Z

    .line 737
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mTorchOn:Z

    .line 738
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->setCameraRunning(Z)V

    .line 739
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->setCameraInitialized(Z)V

    .line 740
    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mRecognitionRunning:Z

    .line 741
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 742
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 743
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 747
    :goto_1
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 748
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 749
    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    .line 750
    iput-boolean v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mStartScanningOnSurfaceCreated:Z

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 753
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto :goto_0

    .line 745
    :cond_3
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_1
.end method

.method public setUpceEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableUpce(Z)V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mQueuedUpceEnabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 382
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mRecognitionRunning:Z

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceCreated:Z

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;

    if-nez v0, :cond_1

    .line 387
    new-instance v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;-><init>(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;)V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;

    .line 388
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->start()V

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->reset()V

    .line 391
    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mRecognitionRunning:Z

    .line 392
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->setCameraRunning(Z)V

    goto :goto_0

    .line 394
    :cond_2
    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mStartScanningOnSurfaceCreated:Z

    goto :goto_0
.end method

.method public stopScanning()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 400
    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mStartScanningOnSurfaceCreated:Z

    .line 401
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mRecognitionRunning:Z

    if-nez v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mInitThreadFinished:Z

    if-nez v0, :cond_2

    .line 407
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 408
    :catch_0
    move-exception v0

    goto :goto_1

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->setCameraRunning(Z)V

    .line 414
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->setCameraInitialized(Z)V

    .line 415
    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mRecognitionRunning:Z

    .line 416
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    .line 419
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 423
    :goto_2
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 424
    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    .line 426
    :cond_3
    iput-object v3, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewBuffer:[B

    goto :goto_0

    .line 421
    :cond_4
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_2
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1442
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceCreated:Z

    .line 1427
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mStartScanningOnSurfaceCreated:Z

    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->startScanning()V

    .line 1430
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceCreated:Z

    .line 1437
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->stopScanning()V

    .line 1438
    return-void
.end method

.method public switchTorchOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->switchTorchOn(Z)V

    .line 586
    return-void
.end method

.method public triggerAutoFocus()V
    .locals 4

    .prologue
    .line 690
    iget-boolean v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAfEnabled:Z

    if-nez v2, :cond_0

    .line 692
    :try_start_0
    iget-object v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 693
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAfEnabled:Z

    .line 694
    iget-object v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v2, v2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v2, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCounterAfLastEnabled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v1

    .line 696
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v0

    .line 697
    .local v0, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v2, "Auto focus not supported."

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_0
.end method
