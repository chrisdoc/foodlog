.class public Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;
.super Landroid/widget/RelativeLayout;
.source "ScanditSDKAutoAdjustingBarcodePicker.java"

# interfaces
.implements Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;


# static fields
.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final CAMERA_FACING_FRONT:I = 0x1


# instance fields
.field mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3
    .parameter "activity"
    .parameter "appKey"
    .parameter "cameraFacingPreference"

    .prologue
    const/4 v2, -0x1

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    .line 60
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->canRunPortraitPicker()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-direct {v1, p1, p2, p3}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 70
    .local v0, coreLayout:Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void

    .line 64
    .end local v0           #coreLayout:Landroid/widget/RelativeLayout;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 65
    new-instance v1, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-direct {v1, p1, p2}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    goto :goto_0
.end method

.method public static canRunPortraitPicker()Z
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->canRunPortraitPicker()Z

    move-result v0

    return v0
.end method

.method public static cleanup()V
    .locals 0

    .prologue
    .line 104
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->deleteInstance()V

    .line 105
    return-void
.end method


# virtual methods
.method public force2dRecognition(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->force2dRecognition(Z)V

    .line 220
    return-void
.end method

.method public getCameraPreviewImageHeight()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->getCameraPreviewImageHeight()I

    move-result v0

    return v0
.end method

.method public getCameraPreviewImageOfFirstBarcodeRecognition()[B
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->getCameraPreviewImageOfFirstBarcodeRecognition()[B

    move-result-object v0

    return-object v0
.end method

.method public getCameraPreviewImageWidth()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->getCameraPreviewImageWidth()I

    move-result v0

    return v0
.end method

.method public getMostRecentCameraPreviewImage()[B
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->getMostRecentCameraPreviewImage()[B

    move-result-object v0

    return-object v0
.end method

.method public getOverlayView()Lcom/mirasense/scanditsdk/interfaces/ScanditSDKOverlay;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->getOverlayView()Lcom/mirasense/scanditsdk/interfaces/ScanditSDKOverlay;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasForwardFacingCamera()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->hasForwardFacingCamera()Z

    move-result v0

    return v0
.end method

.method public ignorePreviewAspectRatio()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->ignorePreviewAspectRatio()V

    .line 155
    return-void
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->isScanning()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->reset()V

    .line 101
    return-void
.end method

.method public set1DScanningEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->set1DScanningEnabled(Z)V

    .line 160
    return-void
.end method

.method public set2DScanningEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->set2DScanningEnabled(Z)V

    .line 165
    return-void
.end method

.method public setCode128Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setCode128Enabled(Z)V

    .line 190
    return-void
.end method

.method public setCode39Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setCode39Enabled(Z)V

    .line 185
    return-void
.end method

.method public setDataMatrixEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setDataMatrixEnabled(Z)V

    .line 205
    return-void
.end method

.method public setEan13AndUpc12Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setEan13AndUpc12Enabled(Z)V

    .line 170
    return-void
.end method

.method public setEan8Enabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setEan8Enabled(Z)V

    .line 175
    return-void
.end method

.method public setInverseRecognitionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setInverseRecognitionEnabled(Z)V

    .line 210
    return-void
.end method

.method public setItfEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setItfEnabled(Z)V

    .line 195
    return-void
.end method

.method public setMicroDataMatrixEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setMicroDataMatrixEnabled(Z)V

    .line 215
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1, p2}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public setQrEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setQrEnabled(Z)V

    .line 200
    return-void
.end method

.method public setScanningHotSpot(FF)V
    .locals 1
    .parameter "relX"
    .parameter "relY"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1, p2}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setScanningHotSpot(FF)V

    .line 145
    return-void
.end method

.method public setScanningHotSpotHeight(F)V
    .locals 1
    .parameter "height"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setScanningHotSpotHeight(F)V

    .line 150
    return-void
.end method

.method public setUpceEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->setUpceEnabled(Z)V

    .line 180
    return-void
.end method

.method public startScanning()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->startScanning()V

    .line 135
    return-void
.end method

.method public stopScanning()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->stopScanning()V

    .line 140
    return-void
.end method

.method public switchTorchOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKAutoAdjustingBarcodePicker;->mCore:Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;

    invoke-interface {v0, p1}, Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;->switchTorchOn(Z)V

    .line 225
    return-void
.end method
