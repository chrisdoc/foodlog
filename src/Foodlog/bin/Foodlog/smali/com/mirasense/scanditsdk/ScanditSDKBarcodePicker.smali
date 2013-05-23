.class public Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;
.super Landroid/widget/RelativeLayout;
.source "ScanditSDKBarcodePicker.java"

# interfaces
.implements Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/mirasense/scanditsdk/analytics/LocationHubListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;
    }
.end annotation


# static fields
.field public static final ADJUST:I = 0x4

.field private static final AUTOFOCUS_FRAME_TRIGGER_THRESHOLD:I = 0xc

.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final CAMERA_FACING_FRONT:I = 0x1

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

.field public static final SET_TORCH_BUTTON_ALPHA:I = 0x6

.field public static final SHOW:I = 0x1


# instance fields
.field private mAdjustedSubviewDimensions:Z

.field private mAfEnabled:Z

.field private final mAppKey:Ljava/lang/String;

.field private mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraFacingPreference:I

.field private mCameraInitThread:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;

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

.field private mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

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

.field private mSetPreviewToFullscreen:Z

.field private mSetTorchActive:Z

.field private mStartScanningOnSurfaceCreated:Z

.field private mSurfaceCreated:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTorchOn:Z

.field private mUsesFrontCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
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
    .line 303
    .local p2, rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "appKey"
    .parameter "cameraFacingPreference"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p2, rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 323
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appKey"

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10
    .parameter "context"
    .parameter "appKey"
    .parameter "cameraFacingPreference"

    .prologue
    const/16 v9, 0x64

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 339
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 109
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedLocation:Landroid/location/Location;

    .line 110
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLastLocationPoll:J

    .line 112
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedEan13AndUpc12Enabled:Ljava/lang/Boolean;

    .line 113
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedEan8Enabled:Ljava/lang/Boolean;

    .line 114
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedUpceEnabled:Ljava/lang/Boolean;

    .line 115
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedCode39Enabled:Ljava/lang/Boolean;

    .line 116
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedCode128Enabled:Ljava/lang/Boolean;

    .line 117
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedItfEnabled:Ljava/lang/Boolean;

    .line 119
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHotSpotHeightBuffered:Z

    .line 121
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z

    .line 122
    iput-boolean v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSetPreviewToFullscreen:Z

    .line 135
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    .line 138
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mRecognitionRunning:Z

    .line 139
    iput-boolean v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mImageDataOk:Z

    .line 142
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAfEnabled:Z

    .line 143
    iput v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCounterAfLastEnabled:I

    .line 145
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHasTorch:Z

    .line 146
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mTorchOn:Z

    .line 147
    iput-boolean v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSetTorchActive:Z

    .line 167
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;

    .line 168
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mInitThreadFinished:Z

    .line 169
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceCreated:Z

    .line 170
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mStartScanningOnSurfaceCreated:Z

    .line 171
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 172
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mUsesFrontCamera:Z

    .line 174
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dDetectedCounter:I

    .line 175
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dResult:Lcom/mirasense/scanditsdk/twod/Result;

    .line 176
    const-string v3, "QR"

    iput-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dSymbology:Ljava/lang/String;

    .line 177
    iput v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dResultCounter:I

    .line 179
    new-instance v3, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;

    invoke-direct {v3, p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;-><init>(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;

    .line 340
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->deleteInstance()V

    .line 341
    iput-object p2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAppKey:Ljava/lang/String;

    .line 342
    iput p3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCameraFacingPreference:I

    .line 344
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->clean()V

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPlatformAppId:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 351
    :cond_0
    const-string v3, "0000000000000000"

    iput-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mDeviceId:Ljava/lang/String;

    .line 359
    :goto_0
    iput v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLocationGathering:I

    .line 363
    const/4 v1, 0x0

    .line 364
    .local v1, overwriteExistingResourceFiles:Z
    const-string v3, "mirasense"

    invoke-direct {p0, v3}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getRawResourceIDsForFilesWithNamePrefix(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 365
    .local v2, resIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v2, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->initializeRecognitionEngine(Ljava/util/ArrayList;Z)V

    .line 369
    new-instance v3, Landroid/view/SurfaceView;

    invoke-direct {v3, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    .line 370
    iget-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 371
    iget-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 372
    iget-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 375
    new-instance v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-direct {v3}, Lcom/mirasense/scanditsdk/ScanditSDKScanState;-><init>()V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    .line 376
    new-instance v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-direct {v3}, Lcom/mirasense/scanditsdk/ScanditSDKScanState;-><init>()V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    .line 377
    new-instance v3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-direct {v3}, Lcom/mirasense/scanditsdk/ScanditSDKScanState;-><init>()V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    .line 379
    iput-boolean v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mRecognitionRunning:Z

    .line 380
    iput-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mImageDataOfFirstRecognition:[B

    .line 381
    iput v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I

    .line 382
    iput v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I

    .line 384
    new-instance v3, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    const-wide/16 v4, 0x12c

    invoke-direct {v3, p1, p0, v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;-><init>(Landroid/content/Context;Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;J)V

    iput-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    .line 386
    invoke-virtual {p0, v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setClipChildren(Z)V

    .line 387
    iget-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    return-void

    .line 353
    .end local v1           #overwriteExistingResourceFiles:Z
    .end local v2           #resIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mInitThreadFinished:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSetTorchActive:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCameraFacingPreference:I

    return v0
.end method

.method static synthetic access$1500(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getFirstFrontCamera()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->hasBackFacingCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mUsesFrontCamera:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHotSpotHeightBuffered:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHasTorch:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHasTorch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSetPreviewToFullscreen:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mTorchOn:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewBuffer:[B

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewBuffer:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;

    return-object p1
.end method

.method private byteArrayToHexStr([B)Ljava/lang/String;
    .locals 8
    .parameter "data"

    .prologue
    const/16 v7, 0xa

    .line 1629
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 1630
    .local v0, chars:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 1631
    aget-byte v1, p1, v3

    .line 1632
    .local v1, current:B
    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v2, v5, 0x4

    .line 1633
    .local v2, hi:I
    and-int/lit8 v4, v1, 0xf

    .line 1634
    .local v4, lo:I
    mul-int/lit8 v6, v3, 0x2

    if-ge v2, v7, :cond_0

    add-int/lit8 v5, v2, 0x30

    :goto_1
    int-to-char v5, v5

    aput-char v5, v0, v6

    .line 1635
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v5, 0x1

    if-ge v4, v7, :cond_1

    add-int/lit8 v5, v4, 0x30

    :goto_2
    int-to-char v5, v5

    aput-char v5, v0, v6

    .line 1630
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1634
    :cond_0
    add-int/lit8 v5, v2, 0x61

    add-int/lit8 v5, v5, -0xa

    goto :goto_1

    .line 1635
    :cond_1
    add-int/lit8 v5, v4, 0x61

    add-int/lit8 v5, v5, -0xa

    goto :goto_2

    .line 1637
    .end local v1           #current:B
    .end local v2           #hi:I
    .end local v4           #lo:I
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method public static canRunPortraitPicker()Z
    .locals 2

    .prologue
    .line 401
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-P1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-P1010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5830"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "YP-G70"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cleanup()V
    .locals 0

    .prologue
    .line 470
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->deleteInstance()V

    .line 471
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
    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 1457
    .local v7, is:Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    .line 1459
    .local v6, filename:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1460
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

    .line 1462
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

    .line 1464
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

    .line 1465
    .local v11, target:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1466
    .local v5, f:Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1467
    .local v9, out:Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 1468
    .local v1, buffer:[B
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v7, v1, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 1469
    .local v8, len:I
    :goto_0
    const/4 v12, -0x1

    if-eq v8, v12, :cond_1

    .line 1470
    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1471
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v7, v1, v12, v13}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 1473
    .end local v1           #buffer:[B
    .end local v5           #f:Ljava/io/File;
    .end local v8           #len:I
    .end local v9           #out:Ljava/io/FileOutputStream;
    .end local v11           #target:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1474
    .local v3, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v2

    .line 1475
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

    .line 1477
    const-string v12, "ScanditSDK"

    const-string v13, "Could not copy the resource file \'%s\'"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1479
    move-object v4, v3

    .line 1482
    .end local v2           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 1484
    if-eqz v4, :cond_2

    .line 1485
    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 1487
    :cond_2
    return-void
.end method

.method private escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "string"

    .prologue
    .line 1606
    move-object v1, p1

    .line 1607
    .local v1, cleanString:Ljava/lang/String;
    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1608
    const/4 v2, 0x0

    .local v2, i:B
    :goto_0
    const/16 v4, 0x20

    if-ge v2, v4, :cond_0

    .line 1609
    const/4 v4, 0x1

    new-array v0, v4, [B

    const/4 v4, 0x0

    aput-byte v2, v0, v4

    .line 1610
    .local v0, chars:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 1611
    .local v3, s:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1608
    add-int/lit8 v4, v2, 0x1

    int-to-byte v2, v4

    goto :goto_0

    .line 1613
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

    .line 1433
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 1445
    :goto_0
    return-object v1

    .line 1436
    :cond_1
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 1437
    .local v1, result:[Ljava/lang/String;
    const-string v3, ":symbology:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1439
    .local v0, i:I
    if-gez v0, :cond_2

    move-object v1, v2

    .line 1440
    goto :goto_0

    .line 1442
    :cond_2
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1443
    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0xb

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method private getFirstFrontCamera()I
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 432
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-ge v4, v5, :cond_1

    move v1, v3

    .line 445
    :cond_0
    :goto_0
    return v1

    .line 436
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 437
    .local v0, cameraCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 438
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 439
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 440
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_2
    move v1, v3

    .line 445
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
    .line 1499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1501
    .local v2, pack:Ljava/lang/String;
    const-string v3, "raw"

    .line 1504
    .local v3, type:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "production_license_key_free_apps"

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1506
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 1507
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1512
    .end local v0           #id:I
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "license_key_custom"

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1514
    .restart local v0       #id:I
    if-eqz v0, :cond_1

    .line 1515
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1519
    .end local v0           #id:I
    :cond_1
    :goto_1
    return-object v1

    .line 1517
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1509
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private hasBackFacingCamera()Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 411
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-ge v4, v5, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v3

    .line 415
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 416
    .local v0, cameraCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 417
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 418
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 419
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v4, :cond_0

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    .end local v2           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_2
    const/4 v3, 0x0

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
    .line 1534
    .local p1, resourceIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-nez v1, :cond_7

    .line 1535
    const-string v1, "scanditsdk-android-3.3.1"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1540
    if-eqz p1, :cond_0

    .line 1541
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

    .line 1542
    .local v14, resId:I
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    move/from16 v0, p2

    invoke-direct {p0, v14, v1, v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->copyResourceToNewDir(ILjava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1546
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #resId:I
    :catch_0
    move-exception v11

    .line 1547
    .local v11, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v9

    .line 1548
    .local v9, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v1, "Could not copy required files from the resources."

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v11, v2}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1550
    const-string v1, "ScanditSDK"

    const-string v2, "Could not copy required files from the resources."

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1555
    .end local v9           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v11           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->getInstance(Ljava/io/File;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;

    move-result-object v12

    .line 1557
    .local v12, factory:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;
    invoke-virtual {v12}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;->subscribeForReader()Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-result-object v1

    iput-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    .line 1560
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    .line 1561
    .local v10, dir:Ljava/io/File;
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAppKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPlatformAppId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->sha1Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android"

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->escapeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setDeviceInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v9

    .line 1568
    .restart local v9       #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v1, "Using new picker"

    invoke-virtual {v9, v1}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1569
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

    .line 1570
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

    .line 1571
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

    .line 1573
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 1574
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedLocation:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setScanLocation(Landroid/location/Location;)V

    .line 1575
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedLocation:Landroid/location/Location;

    .line 1578
    :cond_1
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedEan13AndUpc12Enabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1579
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedEan13AndUpc12Enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setEan13AndUpc12Enabled(Z)V

    .line 1580
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedEan13AndUpc12Enabled:Ljava/lang/Boolean;

    .line 1582
    :cond_2
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedEan8Enabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 1583
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedEan8Enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setEan8Enabled(Z)V

    .line 1584
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedEan8Enabled:Ljava/lang/Boolean;

    .line 1586
    :cond_3
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedUpceEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 1587
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedUpceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setUpceEnabled(Z)V

    .line 1588
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedUpceEnabled:Ljava/lang/Boolean;

    .line 1590
    :cond_4
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedCode39Enabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 1591
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedCode39Enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setCode39Enabled(Z)V

    .line 1592
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedCode39Enabled:Ljava/lang/Boolean;

    .line 1594
    :cond_5
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedCode128Enabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 1595
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedCode128Enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setCode128Enabled(Z)V

    .line 1596
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedCode128Enabled:Ljava/lang/Boolean;

    .line 1598
    :cond_6
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedItfEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 1599
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedItfEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setItfEnabled(Z)V

    .line 1600
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedItfEnabled:Ljava/lang/Boolean;

    .line 1603
    .end local v9           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v10           #dir:Ljava/io/File;
    .end local v12           #factory:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReaderFactory;
    :cond_7
    return-void
.end method

.method private mergeScanStates(Lcom/mirasense/scanditsdk/ScanditSDKScanState;Lcom/mirasense/scanditsdk/ScanditSDKScanState;Lcom/mirasense/scanditsdk/ScanditSDKScanState;)V
    .locals 11
    .parameter "stateA"
    .parameter "stateB"
    .parameter "resultingState"

    .prologue
    .line 1293
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    .line 1295
    iget-boolean v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-nez v9, :cond_0

    iget-boolean v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v9, :cond_12

    :cond_0
    const/4 v1, 0x1

    .line 1296
    .local v1, decoded:Z
    :goto_0
    iget-boolean v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eq v1, v9, :cond_1

    .line 1297
    iput-boolean v1, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    .line 1298
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    .line 1300
    :cond_1
    iget-boolean v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v9, :cond_2

    iget v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    iget v10, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-eq v9, v10, :cond_3

    :cond_2
    iget-boolean v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v9, :cond_4

    iget v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    iget v10, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v9, v10, :cond_4

    .line 1302
    :cond_3
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    .line 1305
    :cond_4
    iget-boolean v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-nez v9, :cond_5

    iget-boolean v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v9, :cond_13

    :cond_5
    const/4 v0, 0x1

    .line 1306
    .local v0, close:Z
    :goto_1
    iget-boolean v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eq v0, v9, :cond_6

    .line 1307
    iput-boolean v0, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    .line 1308
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    .line 1310
    :cond_6
    iget v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    iget v10, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-eq v9, v10, :cond_7

    iget v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    iget v10, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v9, v10, :cond_8

    .line 1312
    :cond_7
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    .line 1315
    :cond_8
    iget-boolean v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    if-nez v9, :cond_9

    iget-boolean v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    if-eqz v9, :cond_14

    :cond_9
    const/4 v4, 0x1

    .line 1316
    .local v4, might:Z
    :goto_2
    iget-boolean v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    if-eq v4, v9, :cond_a

    .line 1317
    iput-boolean v4, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    .line 1318
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    .line 1320
    :cond_a
    iget v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    iget v10, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-eq v9, v10, :cond_b

    iget v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    iget v10, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v9, v10, :cond_c

    .line 1322
    :cond_b
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    .line 1325
    :cond_c
    if-nez v1, :cond_d

    if-eqz v0, :cond_11

    .line 1327
    :cond_d
    iget-boolean v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v9, :cond_e

    iget-boolean v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v9, :cond_f

    :cond_e
    iget-boolean v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v9, :cond_15

    iget-boolean v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-nez v9, :cond_15

    .line 1329
    :cond_f
    move-object v5, p1

    .line 1333
    .local v5, stateWithPosition:Lcom/mirasense/scanditsdk/ScanditSDKScanState;
    :goto_3
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex0:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex0:I

    .line 1334
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey0:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey0:I

    .line 1335
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex1:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex1:I

    .line 1336
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey1:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey1:I

    .line 1337
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex2:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex2:I

    .line 1338
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey2:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey2:I

    .line 1339
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex3:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex3:I

    .line 1340
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey3:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey3:I

    .line 1342
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1343
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1344
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1345
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1346
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1347
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1348
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1349
    iget v9, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 1351
    iget-boolean v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mUsesFrontCamera:Z

    if-eqz v9, :cond_11

    .line 1352
    iget-object v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v9}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 1353
    .local v8, width:I
    iget-object v9, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v9}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    .line 1354
    .local v3, height:I
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v2

    .line 1355
    .local v2, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getPreviewRotation()I

    move-result v9

    const/16 v10, 0x5a

    if-ne v9, v10, :cond_16

    iget-boolean v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v9, :cond_16

    iget-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    const-string v10, "QR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    const-string v10, "DATAMATRIX"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1360
    :cond_10
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    sub-int v9, v3, v9

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1361
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    sub-int v9, v3, v9

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1362
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    sub-int v9, v3, v9

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1363
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    sub-int v9, v3, v9

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 1367
    iget v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1368
    .local v6, tmpX:I
    iget v7, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1369
    .local v7, tmpY:I
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1370
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1371
    iput v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1372
    iput v7, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1399
    .end local v2           #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    .end local v3           #height:I
    .end local v5           #stateWithPosition:Lcom/mirasense/scanditsdk/ScanditSDKScanState;
    .end local v6           #tmpX:I
    .end local v7           #tmpY:I
    .end local v8           #width:I
    :cond_11
    :goto_4
    iget-boolean v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v9, :cond_17

    iget-object v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 1400
    iget-object v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    .line 1401
    iget-object v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    .line 1410
    :goto_5
    iget-boolean v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v9, :cond_19

    iget-object v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 1411
    iget-object v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1412
    iget-object v9, p1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    .line 1421
    :goto_6
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterRoughPosValidChanged:I

    .line 1422
    return-void

    .line 1295
    .end local v0           #close:Z
    .end local v1           #decoded:Z
    .end local v4           #might:Z
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1305
    .restart local v1       #decoded:Z
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1315
    .restart local v0       #close:Z
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1331
    .restart local v4       #might:Z
    :cond_15
    move-object v5, p2

    .restart local v5       #stateWithPosition:Lcom/mirasense/scanditsdk/ScanditSDKScanState;
    goto/16 :goto_3

    .line 1375
    .restart local v2       #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    .restart local v3       #height:I
    .restart local v8       #width:I
    :cond_16
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    sub-int v9, v8, v9

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1376
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    sub-int v9, v8, v9

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1377
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    sub-int v9, v8, v9

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1378
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    sub-int v9, v8, v9

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1382
    iget v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1383
    .restart local v6       #tmpX:I
    iget v7, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1384
    .restart local v7       #tmpY:I
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1385
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1386
    iput v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1387
    iput v7, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1389
    iget v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1390
    iget v7, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1391
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1392
    iget v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    iput v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1393
    iput v6, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1394
    iput v7, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    goto :goto_4

    .line 1402
    .end local v2           #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    .end local v3           #height:I
    .end local v5           #stateWithPosition:Lcom/mirasense/scanditsdk/ScanditSDKScanState;
    .end local v6           #tmpX:I
    .end local v7           #tmpY:I
    .end local v8           #width:I
    :cond_17
    iget-boolean v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    if-eqz v9, :cond_18

    iget-object v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 1403
    iget-object v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    .line 1404
    iget-object v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    goto :goto_5

    .line 1406
    :cond_18
    const-string v9, ""

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    .line 1407
    const-string v9, ""

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    goto :goto_5

    .line 1413
    :cond_19
    iget-boolean v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v9, :cond_1a

    iget-object v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 1414
    iget-object v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1415
    iget-object v9, p2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    goto :goto_6

    .line 1417
    :cond_1a
    const-string v9, ""

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1418
    const-string v9, ""

    iput-object v9, p3, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    goto/16 :goto_6
.end method

.method private performRecognition([BIIII)V
    .locals 21
    .parameter "imageData"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 989
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mImageDataOk:Z

    if-nez v4, :cond_0

    .line 1083
    :goto_0
    return-void

    .line 990
    :cond_0
    if-nez p1, :cond_1

    .line 991
    const-string v4, "ScanditSDK"

    const-string v5, "The data returned by the camera is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 995
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v15

    .line 997
    .local v15, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLastPreviewImageData:[B

    .line 1001
    move-object/from16 v0, p1

    array-length v4, v0

    mul-int v5, p2, p3

    if-ge v4, v5, :cond_2

    .line 1003
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mImageDataOk:Z

    .line 1004
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

    .line 1007
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v4, :cond_3

    .line 1008
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    mul-int v5, p3, p2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v5, v1, v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->processImage([BIII)V

    .line 1013
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v17

    .line 1014
    .local v17, guiOverlayW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v16

    .line 1018
    .local v16, guiOverlayH:I
    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isInPortraitMode()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1019
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    div-float v13, v4, v5

    .line 1020
    .local v13, factorX:F
    move/from16 v0, v16

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v14, v4, v5

    .line 1025
    .local v14, factorY:F
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->updateScanStateInformation(FF)V

    .line 1027
    const/16 v18, 0x0

    .line 1028
    .local v18, rawResult:Lcom/mirasense/scanditsdk/twod/Result;
    const-string v20, "QR"

    .line 1029
    .local v20, symbology:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dDetectedCounter:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dDetectedCounter:I

    .line 1032
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-ge v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-boolean v4, v4, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->contains2dCode()Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dDetectedCounter:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_9

    :cond_4
    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isPreFroyoQREnabled()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isPreFroyoDataMatrixEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1037
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->contains2dCode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1038
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dDetectedCounter:I

    .line 1040
    :cond_6
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

    .line 1043
    .local v3, source:Lcom/mirasense/scanditsdk/twod/PlanarYUVLuminanceSource;
    new-instance v12, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;

    new-instance v4, Lcom/mirasense/scanditsdk/twod/common/HybridBinarizer;

    invoke-direct {v4, v3}, Lcom/mirasense/scanditsdk/twod/common/HybridBinarizer;-><init>(Lcom/mirasense/scanditsdk/twod/LuminanceSource;)V

    invoke-direct {v12, v4}, Lcom/mirasense/scanditsdk/twod/BinaryBitmap;-><init>(Lcom/mirasense/scanditsdk/twod/Binarizer;)V

    .line 1045
    .local v12, bitmap:Lcom/mirasense/scanditsdk/twod/BinaryBitmap;
    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isPreFroyoQREnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1047
    :try_start_0
    new-instance v19, Lcom/mirasense/scanditsdk/twod/qrcode/QRCodeReader;

    invoke-direct/range {v19 .. v19}, Lcom/mirasense/scanditsdk/twod/qrcode/QRCodeReader;-><init>()V

    .line 1048
    .local v19, reader:Lcom/mirasense/scanditsdk/twod/Reader;
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/mirasense/scanditsdk/twod/Reader;->decode(Lcom/mirasense/scanditsdk/twod/BinaryBitmap;)Lcom/mirasense/scanditsdk/twod/Result;
    :try_end_0
    .catch Lcom/mirasense/scanditsdk/twod/ReaderException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 1053
    .end local v19           #reader:Lcom/mirasense/scanditsdk/twod/Reader;
    :cond_7
    :goto_2
    if-nez v18, :cond_8

    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isPreFroyoDataMatrixEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1056
    :try_start_1
    new-instance v19, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;

    invoke-direct/range {v19 .. v19}, Lcom/mirasense/scanditsdk/twod/datamatrix/DataMatrixReader;-><init>()V

    .line 1057
    .restart local v19       #reader:Lcom/mirasense/scanditsdk/twod/Reader;
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/mirasense/scanditsdk/twod/Reader;->decode(Lcom/mirasense/scanditsdk/twod/BinaryBitmap;)Lcom/mirasense/scanditsdk/twod/Result;

    move-result-object v18

    .line 1058
    const-string v20, "DATAMATRIX"
    :try_end_1
    .catch Lcom/mirasense/scanditsdk/twod/ReaderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1064
    .end local v19           #reader:Lcom/mirasense/scanditsdk/twod/Reader;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dResultCounter:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dResultCounter:I

    .line 1065
    if-eqz v18, :cond_c

    .line 1066
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dResultCounter:I

    .line 1072
    .end local v3           #source:Lcom/mirasense/scanditsdk/twod/PlanarYUVLuminanceSource;
    .end local v12           #bitmap:Lcom/mirasense/scanditsdk/twod/BinaryBitmap;
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->update2dScanStateInformation(Lcom/mirasense/scanditsdk/twod/Result;Ljava/lang/String;FF)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mergeScanStates(Lcom/mirasense/scanditsdk/ScanditSDKScanState;Lcom/mirasense/scanditsdk/ScanditSDKScanState;Lcom/mirasense/scanditsdk/ScanditSDKScanState;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-boolean v4, v4, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v4, v4, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v5, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-ne v4, v5, :cond_a

    .line 1079
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mImageDataOfFirstRecognition:[B

    .line 1081
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-virtual {v4, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->didUpdateStatus(Lcom/mirasense/scanditsdk/ScanditSDKScanState;)V

    goto/16 :goto_0

    .line 1022
    .end local v13           #factorX:F
    .end local v14           #factorY:F
    .end local v18           #rawResult:Lcom/mirasense/scanditsdk/twod/Result;
    .end local v20           #symbology:Ljava/lang/String;
    :cond_b
    move/from16 v0, v16

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    div-float v13, v4, v5

    .line 1023
    .restart local v13       #factorX:F
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v14, v4, v5

    .restart local v14       #factorY:F
    goto/16 :goto_1

    .line 1067
    .restart local v3       #source:Lcom/mirasense/scanditsdk/twod/PlanarYUVLuminanceSource;
    .restart local v12       #bitmap:Lcom/mirasense/scanditsdk/twod/BinaryBitmap;
    .restart local v18       #rawResult:Lcom/mirasense/scanditsdk/twod/Result;
    .restart local v20       #symbology:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dResultCounter:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dResult:Lcom/mirasense/scanditsdk/twod/Result;

    if-eqz v4, :cond_9

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dResult:Lcom/mirasense/scanditsdk/twod/Result;

    move-object/from16 v18, v0

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dSymbology:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_4

    .line 1059
    :catch_0
    move-exception v4

    goto/16 :goto_3

    .line 1049
    :catch_1
    move-exception v4

    goto/16 :goto_2
.end method

.method private setEan128BlackWhiteWidthCorrection(I)V
    .locals 1
    .parameter "correction"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setEan128OversizeOfBlackBars(I)V

    .line 772
    :cond_0
    return-void
.end method

.method private setEan128CertaintyThreshold(I)V
    .locals 2
    .parameter "threshold"

    .prologue
    .line 745
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v1, :cond_0

    .line 746
    rsub-int/lit8 v0, p1, 0x64

    .line 747
    .local v0, value:I
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 748
    const/16 v0, 0x64

    .line 752
    :goto_0
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v1, v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setEan128Certainty(I)V

    .line 754
    .end local v0           #value:I
    :cond_0
    return-void

    .line 750
    .restart local v0       #value:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScanLocation(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 781
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLocationGathering:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 782
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-nez v0, :cond_1

    .line 783
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedLocation:Landroid/location/Location;

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setScanLocation(Landroid/location/Location;)V

    goto :goto_0
.end method

.method private sha1Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 1618
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1619
    .local v2, sha:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 1620
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->byteArrayToHexStr([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1624
    .end local v2           #sha:Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 1621
    :catch_0
    move-exception v1

    .line 1622
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v0

    .line 1623
    .local v0, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v3, "SHA-1 not available."

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1624
    const-string v3, ""

    goto :goto_0
.end method

.method private shouldAFBeTriggered()Z
    .locals 3

    .prologue
    .line 947
    iget v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCounterAfLastEnabled:I

    iget-object v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v2, v2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    if-le v1, v2, :cond_0

    .line 948
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v1, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCounterAfLastEnabled:I

    .line 950
    :cond_0
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v1, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iget v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCounterAfLastEnabled:I

    sub-int v0, v1, v2

    .line 952
    .local v0, frames_since_af:I
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodeDecoded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->imageBlur()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 966
    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    .line 967
    const/4 v1, 0x1

    .line 972
    :goto_0
    return v1

    :cond_1
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

    .line 1231
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    .line 1233
    if-nez p1, :cond_0

    .line 1234
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v7, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    .line 1235
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v7, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    .line 1236
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v7, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    .line 1289
    :goto_0
    return-void

    .line 1240
    :cond_0
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v8, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    .line 1241
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v8, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    .line 1242
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iput-boolean v8, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    .line 1243
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-boolean v5, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    if-nez v5, :cond_1

    .line 1244
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    .line 1245
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    .line 1246
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    .line 1249
    :cond_1
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v1

    .line 1250
    .local v1, guiOverlayW:I
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v0

    .line 1252
    .local v0, guiOverlayH:I
    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/Result;->getResultPoints()[Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v2

    .line 1253
    .local v2, points:[Lcom/mirasense/scanditsdk/twod/ResultPoint;
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-virtual {p1}, Lcom/mirasense/scanditsdk/twod/Result;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1254
    const-string v5, "QR"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1255
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    const-string v6, "QR"

    iput-object v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    .line 1256
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v9

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1257
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v9

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1258
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v7

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1259
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v7

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1260
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v8

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1261
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v8

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1262
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v5, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    iget-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    sub-int v4, v5, v6

    .line 1263
    .local v4, rectangleWidth:I
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v5, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    iget-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    sub-int v3, v5, v6

    .line 1264
    .local v3, rectangleHeight:I
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    add-int/2addr v6, v4

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1265
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v6, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 1267
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    mul-int/lit8 v7, v4, 0x1

    div-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1268
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    mul-int/lit8 v7, v3, 0x1

    div-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1269
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    mul-int/lit8 v7, v4, 0x1

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1270
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    mul-int/lit8 v7, v3, 0x1

    div-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1271
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    mul-int/lit8 v7, v4, 0x1

    div-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1272
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    mul-int/lit8 v7, v3, 0x1

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1273
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    mul-int/lit8 v7, v4, 0x1

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1274
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    mul-int/lit8 v7, v3, 0x1

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 1287
    .end local v3           #rectangleHeight:I
    .end local v4           #rectangleWidth:I
    :goto_1
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dResult:Lcom/mirasense/scanditsdk/twod/Result;

    .line 1288
    iput-object p2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLast2dSymbology:Ljava/lang/String;

    goto/16 :goto_0

    .line 1276
    :cond_2
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    const-string v6, "DATAMATRIX"

    iput-object v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    .line 1277
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v10

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1278
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v10

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    sub-int v6, v0, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1279
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v9

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 1280
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v9

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    sub-int v6, v0, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1281
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v7

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1282
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v7

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    sub-int v6, v0, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1283
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    aget-object v6, v2, v8

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iput v6, v5, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1284
    iget-object v5, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState2d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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
    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isRecognitionEngineReady()Z

    move-result v23

    if-nez v23, :cond_0

    .line 1227
    :goto_0
    return-void

    .line 1100
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v10

    .line 1103
    .local v10, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->fetchLuckShotResult()Ljava/lang/String;

    move-result-object v11

    .line 1107
    .local v11, luckyShotBarcode:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getCodeAndSymbology(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1108
    .local v12, luckyShotResult:[Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v24, v12, v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v24, v12, v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    .line 1117
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodeDecoded()Z

    move-result v3

    .line 1118
    .local v3, barcodeDecoded:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v3, :cond_4

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v3, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    .line 1125
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodePresent()Z

    move-result v4

    .line 1126
    .local v4, closeToCode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v4, :cond_5

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    .line 1133
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodePossiblyClose()Z

    move-result v5

    .line 1134
    .local v5, codeMightBePresent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v5, :cond_6

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    .line 1142
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->isBarcodeDecoded()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->fetchResult()Ljava/lang/String;

    move-result-object v8

    .line 1144
    .local v8, decodedBarcode:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getCodeAndSymbology(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1145
    .local v2, barcode:[Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v24, v2, v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v24, v2, v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    .line 1154
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->getExactPositionOfFinalBarcode()[I

    move-result-object v9

    .line 1155
    .local v9, exactPos:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1166
    .end local v2           #barcode:[Ljava/lang/String;
    .end local v8           #decodedBarcode:Ljava/lang/String;
    .end local v9           #exactPos:[I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->getRoughCodePosition()[I

    move-result-object v15

    .line 1167
    .local v15, roughPos:[I
    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getPreviewRotation()I

    move-result v23

    const/16 v24, 0x5a

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1205
    :goto_6
    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderHeight()F

    move-result v20

    .line 1206
    .local v20, viewfinderHeight:F
    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fd0

    cmpl-double v23, v23, v25

    if-eqz v23, :cond_2

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v20

    move/from16 v0, v23

    float-to-double v13, v0

    .line 1208
    .local v13, maxHeight:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    move/from16 v24, v0

    sub-int v21, v23, v24

    .line 1209
    .local v21, xDiff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    move/from16 v24, v0

    sub-int v22, v23, v24

    .line 1210
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

    .line 1211
    .local v6, curHeight:D
    cmpl-double v23, v6, v13

    if-lez v23, :cond_2

    .line 1212
    div-double v16, v13, v6

    .line 1213
    .local v16, scale:D
    const-wide/high16 v23, 0x3ff0

    sub-double v23, v23, v16

    const-wide/high16 v25, 0x4000

    div-double v18, v23, v25

    .line 1214
    .local v18, shortenBy:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    .line 1226
    .end local v6           #curHeight:D
    .end local v13           #maxHeight:D
    .end local v16           #scale:D
    .end local v18           #shortenBy:D
    .end local v21           #xDiff:I
    .end local v22           #yDiff:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterRoughPosValidChanged:I

    goto/16 :goto_0

    .line 1112
    .end local v3           #barcodeDecoded:Z
    .end local v4           #closeToCode:Z
    .end local v5           #codeMightBePresent:Z
    .end local v15           #roughPos:[I
    .end local v20           #viewfinderHeight:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1122
    .restart local v3       #barcodeDecoded:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v3, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    goto/16 :goto_2

    .line 1130
    .restart local v4       #closeToCode:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v4, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    goto/16 :goto_3

    .line 1138
    .restart local v5       #codeMightBePresent:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    goto/16 :goto_4

    .line 1149
    .restart local v2       #barcode:[Ljava/lang/String;
    .restart local v8       #decodedBarcode:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    goto/16 :goto_5

    .line 1176
    .end local v2           #barcode:[Ljava/lang/String;
    .end local v8           #decodedBarcode:Ljava/lang/String;
    .restart local v15       #roughPos:[I
    :cond_8
    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getPreviewRotation()I

    move-result v23

    if-nez v23, :cond_9

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p1

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p1

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x4

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p1

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x6

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p1

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    goto/16 :goto_6

    .line 1185
    :cond_9
    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getPreviewRotation()I

    move-result v23

    const/16 v24, 0xb4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p2

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p2

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x5

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p2

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x7

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p2

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

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

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    goto/16 :goto_6

    .line 1195
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p1

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p2

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p1

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p2

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x4

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p1

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x5

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p2

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x6

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p1

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState1d:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/SurfaceView;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x7

    aget v25, v15, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p2

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    goto/16 :goto_6
.end method


# virtual methods
.method public force2dRecognition(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->force2dRecognition(Z)V

    .line 706
    :cond_0
    return-void
.end method

.method public getCameraPreviewImageHeight()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I

    return v0
.end method

.method public getCameraPreviewImageOfFirstBarcodeRecognition()[B
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mImageDataOfFirstRecognition:[B

    return-object v0
.end method

.method public getCameraPreviewImageWidth()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I

    return v0
.end method

.method public getMostRecentCameraPreviewImage()[B
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLastPreviewImageData:[B

    return-object v0
.end method

.method public getOverlayView()Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    return-object v0
.end method

.method public bridge synthetic getOverlayView()Lcom/mirasense/scanditsdk/interfaces/ScanditSDKOverlay;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getOverlayView()Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 728
    const-string v0, "diagnostics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getPlaintext()Ljava/lang/String;

    move-result-object v0

    .line 731
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasForwardFacingCamera()Z
    .locals 1

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getFirstFrontCamera()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTorch()Z
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 836
    const/4 v0, 0x0

    .line 838
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHasTorch:Z

    goto :goto_0
.end method

.method public ignorePreviewAspectRatio()V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z

    .line 595
    return-void
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mRecognitionRunning:Z

    return v0
.end method

.method public isTorchBeingSet()Z
    .locals 1

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSetTorchActive:Z

    return v0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAfEnabled:Z

    .line 809
    return-void
.end method

.method public onLocationUpdate(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 797
    if-eqz p1, :cond_0

    .line 798
    invoke-direct {p0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setScanLocation(Landroid/location/Location;)V

    .line 800
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 12
    .parameter "data"
    .parameter "camera"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 890
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mRecognitionRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-nez v0, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v10

    .line 906
    .local v10, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v10}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->is1DRecognitionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 909
    iget v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I

    iget v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I

    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->performRecognition([BIIII)V

    .line 913
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAfEnabled:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->shouldAFBeTriggered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->triggerAutoFocus()V

    .line 919
    :cond_2
    iget v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLocationGathering:I

    if-ne v0, v11, :cond_3

    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 921
    .local v6, curTime:J
    iget-wide v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLastLocationPoll:J

    sub-long v0, v6, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 923
    invoke-static {}, Lcom/mirasense/scanditsdk/analytics/LocationHub;->getInstance()Lcom/mirasense/scanditsdk/analytics/LocationHub;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mirasense/scanditsdk/analytics/LocationHub;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setScanLocation(Landroid/location/Location;)V

    .line 924
    iput-wide v6, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mLastLocationPoll:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    .end local v6           #curTime:J
    .end local v10           #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    :cond_3
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 933
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewBuffer:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 927
    :catch_0
    move-exception v9

    .line 928
    .local v9, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v8

    .line 929
    .local v8, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v0, "Failed in onPreviewFrame()."

    invoke-virtual {v8, v0, v9, v11}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->resetEngine()V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->reset()V

    .line 463
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->resetGUI()V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mImageDataOfFirstRecognition:[B

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAfEnabled:Z

    .line 467
    return-void
.end method

.method public set1DScanningEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 600
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->set1DRecognitionEnabled(Z)V

    .line 601
    return-void
.end method

.method public set2DScanningEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 606
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->set2DRecognitionEnabled(Z)V

    .line 607
    return-void
.end method

.method public setCode128Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableEan128(Z)V

    .line 652
    :goto_0
    return-void

    .line 650
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedCode128Enabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setCode39Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableCode39(Z)V

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedCode39Enabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setDataMatrixEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 675
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 676
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v1, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableDataMatrix(Z)V

    .line 681
    :goto_0
    return-void

    .line 678
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 679
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreFroyoDataMatrixEnabled(Z)V

    goto :goto_0
.end method

.method public setEan13AndUpc12Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableEan13Upc12(Z)V

    .line 616
    :goto_0
    return-void

    .line 614
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedEan13AndUpc12Enabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setEan8Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableEan8(Z)V

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedEan8Enabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setInverseRecognitionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableInverseDetection(Z)V

    .line 688
    :cond_0
    return-void
.end method

.method public setItfEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableItf(Z)V

    .line 661
    :goto_0
    return-void

    .line 659
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedItfEnabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setMicroDataMatrixEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->force2dRecognition(Z)V

    .line 693
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_1

    .line 694
    if-eqz p1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableDataMatrix(Z)V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableMicroDataMatrix(Z)V

    .line 699
    :cond_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 715
    const-string v1, "ean128CertaintyThreshold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 717
    check-cast v0, Ljava/lang/Integer;

    .line 718
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setEan128CertaintyThreshold(I)V

    .line 724
    .end local v0           #i:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    const-string v1, "ean128BlackWhiteWidthCorrection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 721
    check-cast v0, Ljava/lang/Integer;

    .line 722
    .restart local v0       #i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setEan128BlackWhiteWidthCorrection(I)V

    goto :goto_0
.end method

.method public setQrEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 665
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 666
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v1, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableQR(Z)V

    .line 671
    :goto_0
    return-void

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 669
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreFroyoQREnabled(Z)V

    goto :goto_0
.end method

.method public setScanningHotSpot(FF)V
    .locals 4
    .parameter "relX"
    .parameter "relY"

    .prologue
    const/high16 v3, 0x3f80

    .line 549
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 550
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setScanningHotSpotX(F)V

    .line 551
    invoke-virtual {v0, p2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setScanningHotSpotY(F)V

    .line 552
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getPreviewRotation()I

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_1

    .line 554
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v1, p1, p2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setHotSpot(FF)V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getPreviewRotation()I

    move-result v1

    if-nez v1, :cond_2

    .line 556
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    sub-float v2, v3, p2

    invoke-virtual {v1, v2, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setHotSpot(FF)V

    goto :goto_0

    .line 557
    :cond_2
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getPreviewRotation()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_3

    .line 558
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    sub-float v2, v3, p1

    sub-float/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setHotSpot(FF)V

    goto :goto_0

    .line 560
    :cond_3
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    sub-float v2, v3, p1

    invoke-virtual {v1, p2, v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setHotSpot(FF)V

    goto :goto_0
.end method

.method public setScanningHotSpotHeight(F)V
    .locals 9
    .parameter "height"

    .prologue
    const/4 v8, 0x1

    .line 567
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-ltz v4, :cond_0

    float-to-double v4, p1

    const-wide/high16 v6, 0x3fe0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 571
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setScanningHotSpotHeight(F)V

    .line 572
    iget-object v4, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v4, :cond_0

    .line 573
    iget v4, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I

    if-lez v4, :cond_3

    .line 574
    iget v4, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v1, v4

    .line 575
    .local v1, heightInPixel:I
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getMaxSharpScanlineAmount()I

    move-result v2

    .line 576
    .local v2, maxScanlines:I
    if-gt v1, v2, :cond_2

    .line 577
    iget-object v4, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4, v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setSharpScanlineOffset(I)V

    .line 578
    iget-object v4, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setSharpScanlineAmount(I)V

    goto :goto_0

    .line 582
    :cond_2
    add-int/lit8 v4, v2, -0x1

    div-int v3, v1, v4

    .line 583
    .local v3, offset:I
    iget-object v4, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4, v3}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setSharpScanlineOffset(I)V

    .line 584
    iget-object v4, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v4, v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->setSharpScanlineAmount(I)V

    goto :goto_0

    .line 587
    .end local v1           #heightInPixel:I
    .end local v2           #maxScanlines:I
    .end local v3           #offset:I
    :cond_3
    iput-boolean v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHotSpotHeightBuffered:Z

    goto :goto_0
.end method

.method public setTorch(Z)V
    .locals 5
    .parameter "enabled"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 858
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSetTorchActive:Z

    if-eqz v0, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    iput-boolean v4, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSetTorchActive:Z

    .line 862
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->setTorchButtonAlpha(I)V

    .line 864
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mTorchOn:Z

    .line 865
    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mRecognitionRunning:Z

    .line 866
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 867
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 868
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 872
    :goto_1
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 873
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 874
    iput-object v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    .line 875
    iput-boolean v4, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mStartScanningOnSurfaceCreated:Z

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 878
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto :goto_0

    .line 870
    :cond_3
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_1
.end method

.method public setUpceEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;->enableUpce(Z)V

    .line 634
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mQueuedUpceEnabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 500
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mRecognitionRunning:Z

    if-eqz v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceCreated:Z

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;

    if-nez v0, :cond_1

    .line 505
    new-instance v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;-><init>(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;)V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mInitThreadFinished:Z

    .line 507
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->start()V

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->reset()V

    .line 510
    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mRecognitionRunning:Z

    goto :goto_0

    .line 513
    :cond_2
    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mStartScanningOnSurfaceCreated:Z

    goto :goto_0
.end method

.method public stopScanning()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 520
    iput-boolean v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mStartScanningOnSurfaceCreated:Z

    .line 521
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mBarcodeReader:Lcom/mirasense/scanditsdk/ScanditSDKBarcodeReader;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mRecognitionRunning:Z

    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mInitThreadFinished:Z

    if-nez v0, :cond_2

    .line 527
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 528
    :catch_0
    move-exception v0

    goto :goto_1

    .line 533
    :cond_2
    iput-boolean v3, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mRecognitionRunning:Z

    .line 534
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 535
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    .line 536
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 540
    :goto_2
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 541
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 542
    iput-object v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    .line 544
    :cond_3
    iput-object v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewBuffer:[B

    goto :goto_0

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_2
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1673
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceCreated:Z

    .line 1645
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mStartScanningOnSurfaceCreated:Z

    if-eqz v0, :cond_0

    .line 1646
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->startScanning()V

    .line 1648
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1655
    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceCreated:Z

    .line 1658
    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mRecognitionRunning:Z

    .line 1659
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1660
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 1661
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1665
    :goto_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1666
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1667
    iput-object v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    .line 1669
    :cond_0
    return-void

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public switchTorchOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v0, p1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->switchTorchOn(Z)V

    .line 711
    return-void
.end method

.method public triggerAutoFocus()V
    .locals 4

    .prologue
    .line 815
    iget-boolean v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAfEnabled:Z

    if-nez v2, :cond_0

    .line 817
    :try_start_0
    iget-object v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 818
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAfEnabled:Z

    .line 819
    iget-object v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mScanState:Lcom/mirasense/scanditsdk/ScanditSDKScanState;

    iget v2, v2, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    iput v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCounterAfLastEnabled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v0

    .line 822
    .local v0, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v2, "Auto focus not supported."

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_0
.end method
