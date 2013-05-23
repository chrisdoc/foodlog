.class Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;
.super Ljava/lang/Thread;
.source "ScanditSDKBarcodePicker.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraInitThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;


# direct methods
.method private constructor <init>(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1685
    invoke-direct {p0, p1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;-><init>(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)V

    return-void
.end method

.method private initCamera()V
    .locals 20

    .prologue
    .line 1802
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    if-nez v15, :cond_1

    .line 1988
    :cond_0
    :goto_0
    return-void

    .line 1805
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v6

    .line 1808
    .local v6, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "window"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 1809
    .local v14, wm:Landroid/view/WindowManager;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1810
    .local v2, display:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v16

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v17

    invoke-static/range {v15 .. v17}, Lcom/mirasense/scanditsdk/ScanditSDKDeviceInfo;->determinePreviewResolutionToUse(Landroid/hardware/Camera;II)[I

    move-result-object v12

    .line 1813
    .local v12, preview_size:[I
    const/4 v15, 0x0

    aget v15, v12, v15

    if-nez v15, :cond_c

    .line 1814
    const-string v8, "No images can be recognized, since your device supports no camera preview images."

    .line 1815
    .local v8, m:Ljava/lang/String;
    const-string v15, "ScanditSDK"

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    .end local v8           #m:Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKDeviceInfo;->determinePreviewFormat(Landroid/hardware/Camera;)I

    move-result v7

    .line 1825
    .local v7, image_format:I
    const/16 v15, 0x11

    if-eq v7, v15, :cond_3

    .line 1827
    const-string v8, "No images can be recognized, since the required image format NV21 is not supported by your device. We are sorry for the inconvenience."

    .line 1828
    .restart local v8       #m:Ljava/lang/String;
    const-string v15, "ScanditSDK"

    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    .end local v8           #m:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    .line 1833
    .local v11, parameters:Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKDeviceInfo;->determinePreviewFrameRate(Landroid/hardware/Camera;)I

    move-result v5

    .line 1836
    .local v5, frame_rate:I
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v16, "VM670"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1837
    const/4 v15, 0x0

    const/16 v16, 0x280

    aput v16, v12, v15

    .line 1838
    const/4 v15, 0x1

    const/16 v16, 0x1e0

    aput v16, v12, v15

    .line 1839
    const/4 v5, 0x5

    .line 1846
    :cond_4
    :goto_2
    if-lez v5, :cond_5

    .line 1847
    invoke-virtual {v11, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1850
    :cond_5
    const/4 v15, 0x0

    aget v15, v12, v15

    const/16 v16, 0x1

    aget v16, v12, v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/16 v16, 0x0

    aget v16, v12, v16

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$302(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;I)I

    .line 1852
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/16 v16, 0x1

    aget v16, v12, v16

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$402(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;I)I

    .line 1853
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x4

    invoke-static/range {v16 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1855
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHotSpotHeightBuffered:Z
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1856
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getScanningHotSpotHeight()F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setScanningHotSpotHeight(F)V

    .line 1859
    :cond_6
    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v10

    .line 1860
    .local v10, modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "torch"

    .line 1861
    .local v13, torchVariant:Ljava/lang/String;
    if-eqz v10, :cond_e

    const-string v15, "torch"

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "on"

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1864
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/16 v16, 0x1

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHasTorch:Z
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1902(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Z)Z

    .line 1865
    const-string v15, "torch"

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 1866
    const-string v13, "torch"

    .line 1872
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHasTorch:Z
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1900(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1873
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mTorchOn:Z
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$2000(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1874
    invoke-virtual {v11, v13}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1880
    :cond_9
    :goto_4
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v1

    .line 1881
    .local v1, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resolution: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$400(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1883
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Frame rate: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1884
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Has torch: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHasTorch:Z
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1900(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1887
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1893
    :goto_5
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-lt v15, v0, :cond_a

    .line 1894
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v17, v0

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static/range {v17 .. v17}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$400(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v17

    mul-int v16, v16, v17

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v17

    mul-int v16, v16, v17

    div-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewBuffer:[B
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$2102(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;[B)[B

    .line 1896
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewBuffer:[B
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$2100(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)[B

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1924
    :cond_a
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v16, "setFocusMode"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1926
    .local v9, method:Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v15

    const-string v16, "macro"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1928
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "macro"

    aput-object v17, v15, v16

    invoke-virtual {v9, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1933
    const-string v15, "Did set macro focus mode"

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1943
    .end local v9           #method:Ljava/lang/reflect/Method;
    :goto_7
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0xe

    move/from16 v0, v16

    if-lt v15, v0, :cond_b

    .line 1945
    const/4 v15, 0x1

    :try_start_2
    invoke-virtual {v11, v15}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1946
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1947
    const-string v15, "Did set recording hint."

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1954
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getScanningHotSpotX()F

    move-result v16

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getScanningHotSpotY()F

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setScanningHotSpot(FF)V

    .line 1958
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ge v15, v0, :cond_11

    .line 1959
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1965
    :goto_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/Camera;->startPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1966
    :catch_0
    move-exception v3

    .line 1967
    .local v3, e:Ljava/lang/Exception;
    const-string v15, "Failed to start camera preview."

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v3, v0}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1969
    const-wide/16 v15, 0x1f4

    :try_start_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1972
    :goto_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/Camera;->startPreview()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1973
    :catch_1
    move-exception v4

    .line 1974
    .local v4, e2:Ljava/lang/Exception;
    const-string v15, "Failed to start camera preview again."

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v4, v0}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1975
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x5

    invoke-static/range {v16 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1976
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 1977
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ge v15, v0, :cond_12

    .line 1978
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1982
    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/Camera;->release()V

    .line 1983
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/16 v16, 0x0

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto/16 :goto_0

    .line 1816
    .end local v1           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #e2:Ljava/lang/Exception;
    .end local v5           #frame_rate:I
    .end local v7           #image_format:I
    .end local v10           #modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v13           #torchVariant:Ljava/lang/String;
    :cond_c
    const/4 v15, 0x1

    aget v15, v12, v15

    const/16 v16, 0x140

    move/from16 v0, v16

    if-gt v15, v0, :cond_2

    .line 1817
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The recognition will work only limited, since your device supports only very low resolution camera preview images of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " pixels."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 1841
    .restart local v5       #frame_rate:I
    .restart local v7       #image_format:I
    .restart local v11       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_d
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v16, "SAMSUNG-SGH-I717"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1842
    const/4 v15, 0x0

    const/16 v16, 0x280

    aput v16, v12, v15

    .line 1843
    const/4 v15, 0x1

    const/16 v16, 0x1e0

    aput v16, v12, v15

    goto/16 :goto_2

    .line 1869
    .restart local v10       #modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13       #torchVariant:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/16 v16, 0x0

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHasTorch:Z
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1902(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Z)Z

    goto/16 :goto_3

    .line 1876
    :cond_f
    const-string v15, "off"

    invoke-virtual {v11, v15}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1888
    .restart local v1       #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    :catch_2
    move-exception v3

    .line 1889
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v15, "Failed to set camera parameters."

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 1930
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v9       #method:Ljava/lang/reflect/Method;
    :cond_10
    const/4 v15, 0x1

    :try_start_6
    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "auto"

    aput-object v17, v15, v16

    invoke-virtual {v9, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_6

    .line 1934
    .end local v9           #method:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v3

    .line 1935
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v15, "Failed to set focus mode."

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 1948
    .end local v3           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 1949
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v15, "Failed to set recording hint."

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 1961
    .end local v3           #e:Ljava/lang/Exception;
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_9

    .line 1980
    .restart local v3       #e:Ljava/lang/Exception;
    .restart local v4       #e2:Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_b

    .line 1970
    .end local v4           #e2:Ljava/lang/Exception;
    :catch_5
    move-exception v15

    goto/16 :goto_a
.end method

.method private openCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1788
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCameraFacingPreference:I
    invoke-static {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1400(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->hasForwardFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #calls: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getFirstFrontCamera()I
    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1500(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 1799
    :goto_0
    return-void

    .line 1791
    :cond_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #calls: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->hasBackFacingCamera()Z
    invoke-static {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1600(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1792
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto :goto_0

    .line 1793
    :cond_1
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->hasForwardFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1794
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #calls: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getFirstFrontCamera()I
    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1500(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 1795
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mUsesFrontCamera:Z
    invoke-static {v0, v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1702(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Z)Z

    goto :goto_0

    .line 1797
    :cond_2
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto :goto_0
.end method

.method private startCamera()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    .line 1705
    :try_start_0
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->openCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1721
    :goto_0
    const/4 v0, 0x0

    .line 1722
    .local v0, count:I
    :goto_1
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v7

    if-nez v7, :cond_1

    const/16 v7, 0x64

    if-ge v0, v7, :cond_1

    .line 1725
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1726
    add-int/lit8 v0, v0, 0x1

    .line 1727
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->openCamera()V

    .line 1729
    const-wide/16 v7, 0xc8

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1730
    :catch_0
    move-exception v7

    goto :goto_1

    .line 1706
    .end local v0           #count:I
    :catch_1
    move-exception v3

    .line 1707
    .local v3, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v1

    .line 1708
    .local v1, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v7, "Failed to open camera."

    invoke-virtual {v1, v7, v3, v9}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1710
    const-wide/16 v7, 0x1f4

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1713
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->openCamera()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1714
    :catch_2
    move-exception v4

    .line 1715
    .local v4, e2:Ljava/lang/Exception;
    const-string v7, "Failed to open camera again."

    invoke-virtual {v1, v7, v4, v9}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1716
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1717
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/4 v8, 0x0

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7, v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 1785
    .end local v1           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #e2:Ljava/lang/Exception;
    :cond_0
    :goto_3
    return-void

    .line 1732
    .restart local v0       #count:I
    :cond_1
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1735
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;
    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$600(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->loadBeep()V

    .line 1736
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1741
    :try_start_4
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v5

    .line 1742
    .local v5, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->canRunPortraitPicker()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1743
    const/16 v7, 0x5a

    invoke-virtual {v5, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreviewRotation(I)V

    .line 1744
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1300(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 1779
    .end local v5           #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    :catch_3
    move-exception v3

    .line 1780
    .local v3, e:Ljava/io/IOException;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v1

    .line 1781
    .restart local v1       #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v7, "Failed to set camera parameters."

    invoke-virtual {v1, v7, v3, v9}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1782
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->release()V

    .line 1783
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/4 v8, 0x0

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7, v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto :goto_3

    .line 1748
    .end local v1           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    :cond_2
    :try_start_5
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1749
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 1750
    .local v6, scale:F
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v7

    if-nez v7, :cond_5

    .line 1751
    cmpg-float v7, v6, v10

    if-gez v7, :cond_4

    .line 1752
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreviewRotation(I)V

    .line 1776
    :cond_3
    :goto_4
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getPreviewRotation()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1777
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v7

    iget-object v8, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v8}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1300(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto/16 :goto_3

    .line 1754
    :cond_4
    const/16 v7, 0x5a

    invoke-virtual {v5, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreviewRotation(I)V

    goto :goto_4

    .line 1756
    :cond_5
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 1757
    cmpl-float v7, v6, v10

    if-lez v7, :cond_6

    .line 1758
    const/16 v7, 0x10e

    invoke-virtual {v5, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreviewRotation(I)V

    goto :goto_4

    .line 1760
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreviewRotation(I)V

    goto :goto_4

    .line 1762
    :cond_7
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v7

    if-ne v7, v11, :cond_9

    .line 1763
    cmpg-float v7, v6, v10

    if-gez v7, :cond_8

    .line 1764
    const/16 v7, 0xb4

    invoke-virtual {v5, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreviewRotation(I)V

    goto :goto_4

    .line 1766
    :cond_8
    const/16 v7, 0x10e

    invoke-virtual {v5, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreviewRotation(I)V

    goto :goto_4

    .line 1768
    :cond_9
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 1769
    cmpl-float v7, v6, v10

    if-lez v7, :cond_a

    .line 1770
    const/16 v7, 0x5a

    invoke-virtual {v5, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreviewRotation(I)V

    .line 1774
    :goto_5
    iget-object v7, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getPreviewRotation()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_4

    .line 1772
    :cond_a
    const/16 v7, 0xb4

    invoke-virtual {v5, v7}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->setPreviewRotation(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 1711
    .end local v0           #count:I
    .end local v2           #display:Landroid/view/Display;
    .end local v5           #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    .end local v6           #scale:F
    .restart local v1       #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .local v3, e:Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1689
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1690
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->startCamera()V

    .line 1691
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->initCamera()V

    .line 1693
    :cond_0
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/4 v2, 0x0

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;
    invoke-static {v1, v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$902(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;

    .line 1694
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/4 v2, 0x1

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mInitThreadFinished:Z
    invoke-static {v1, v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1002(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Z)Z

    .line 1696
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/4 v2, 0x0

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSetTorchActive:Z
    invoke-static {v1, v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1102(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Z)Z

    .line 1697
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1698
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1699
    const/16 v1, 0xff

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1700
    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1701
    return-void
.end method
