.class public interface abstract Lcom/mirasense/scanditsdk/interfaces/ScanditSDK;
.super Ljava/lang/Object;
.source "ScanditSDK.java"


# virtual methods
.method public abstract force2dRecognition(Z)V
.end method

.method public abstract getCameraPreviewImageHeight()I
.end method

.method public abstract getCameraPreviewImageOfFirstBarcodeRecognition()[B
.end method

.method public abstract getCameraPreviewImageWidth()I
.end method

.method public abstract getMostRecentCameraPreviewImage()[B
.end method

.method public abstract getOverlayView()Lcom/mirasense/scanditsdk/interfaces/ScanditSDKOverlay;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract hasForwardFacingCamera()Z
.end method

.method public abstract ignorePreviewAspectRatio()V
.end method

.method public abstract isScanning()Z
.end method

.method public abstract reset()V
.end method

.method public abstract set1DScanningEnabled(Z)V
.end method

.method public abstract set2DScanningEnabled(Z)V
.end method

.method public abstract setCode128Enabled(Z)V
.end method

.method public abstract setCode39Enabled(Z)V
.end method

.method public abstract setDataMatrixEnabled(Z)V
.end method

.method public abstract setEan13AndUpc12Enabled(Z)V
.end method

.method public abstract setEan8Enabled(Z)V
.end method

.method public abstract setInverseRecognitionEnabled(Z)V
.end method

.method public abstract setItfEnabled(Z)V
.end method

.method public abstract setMicroDataMatrixEnabled(Z)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setQrEnabled(Z)V
.end method

.method public abstract setScanningHotSpot(FF)V
.end method

.method public abstract setScanningHotSpotHeight(F)V
.end method

.method public abstract setUpceEnabled(Z)V
.end method

.method public abstract startScanning()V
.end method

.method public abstract stopScanning()V
.end method

.method public abstract switchTorchOn(Z)V
.end method
