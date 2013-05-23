.class Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;
.super Ljava/lang/Thread;
.source "LegacyPortraitScanditSDKBarcodePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraInitThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;


# direct methods
.method private constructor <init>(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1453
    invoke-direct {p0, p1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;-><init>(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)V

    return-void
.end method

.method private initCamera()V
    .locals 20

    .prologue
    .line 1519
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    if-nez v15, :cond_0

    .line 1679
    :goto_0
    return-void

    .line 1522
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v6

    .line 1525
    .local v6, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "window"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 1526
    .local v14, wm:Landroid/view/WindowManager;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1527
    .local v2, display:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v16

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v17

    invoke-static/range {v15 .. v17}, Lcom/mirasense/scanditsdk/ScanditSDKDeviceInfo;->determinePreviewResolutionToUse(Landroid/hardware/Camera;II)[I

    move-result-object v12

    .line 1530
    .local v12, preview_size:[I
    const/4 v15, 0x0

    aget v15, v12, v15

    if-nez v15, :cond_a

    .line 1531
    const-string v8, "No images can be recognized, since your device supports no camera preview images."

    .line 1532
    .local v8, m:Ljava/lang/String;
    const-string v15, "ScanditSDK"

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    .end local v8           #m:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKDeviceInfo;->determinePreviewFormat(Landroid/hardware/Camera;)I

    move-result v7

    .line 1541
    .local v7, image_format:I
    const/16 v15, 0x11

    if-eq v7, v15, :cond_2

    .line 1543
    const-string v8, "No images can be recognized, since the required image format NV21 is not supported by your device. We are sorry for the inconvenience."

    .line 1544
    .restart local v8       #m:Ljava/lang/String;
    const-string v15, "ScanditSDK"

    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    .end local v8           #m:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    .line 1549
    .local v11, parameters:Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-static {v15}, Lcom/mirasense/scanditsdk/ScanditSDKDeviceInfo;->determinePreviewFrameRate(Landroid/hardware/Camera;)I

    move-result v5

    .line 1552
    .local v5, frame_rate:I
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v16, "VM670"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1553
    const/4 v15, 0x0

    const/16 v16, 0x280

    aput v16, v12, v15

    .line 1554
    const/4 v15, 0x1

    const/16 v16, 0x1e0

    aput v16, v12, v15

    .line 1555
    const/4 v5, 0x5

    .line 1558
    :cond_3
    if-lez v5, :cond_4

    .line 1559
    invoke-virtual {v11, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1562
    :cond_4
    const/4 v15, 0x0

    aget v15, v12, v15

    const/16 v16, 0x1

    aget v16, v12, v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    const/16 v16, 0x0

    aget v16, v12, v16

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$202(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;I)I

    .line 1564
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    const/16 v16, 0x1

    aget v16, v12, v16

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$302(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;I)I

    .line 1566
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x4

    invoke-static/range {v16 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1568
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHotSpotHeightBuffered:Z
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1300(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1569
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getScanningHotSpotHeight()F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setScanningHotSpotHeight(F)V

    .line 1572
    :cond_5
    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v10

    .line 1573
    .local v10, modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "torch"

    .line 1574
    .local v13, torchVariant:Ljava/lang/String;
    if-eqz v10, :cond_b

    const-string v15, "torch"

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "on"

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1577
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    const/16 v16, 0x1

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHasTorch:Z
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1402(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Z)Z

    .line 1578
    const-string v15, "torch"

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1579
    const-string v13, "torch"

    .line 1585
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHasTorch:Z
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1400(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1586
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mTorchOn:Z
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1500(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1587
    invoke-virtual {v11, v13}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1593
    :cond_8
    :goto_3
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v1

    .line 1594
    .local v1, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resolution: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$200(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1596
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

    .line 1597
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Has torch: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHasTorch:Z
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1400(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1600
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1606
    :goto_4
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-lt v15, v0, :cond_9

    .line 1607
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$200(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    move-object/from16 v17, v0

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static/range {v17 .. v17}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v17

    mul-int v16, v16, v17

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v17

    mul-int v16, v16, v17

    div-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewBuffer:[B
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1602(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;[B)[B

    .line 1609
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewBuffer:[B
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1600(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)[B

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1636
    :cond_9
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

    .line 1638
    .local v9, method:Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v15

    const-string v16, "macro"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1640
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "macro"

    aput-object v17, v15, v16

    invoke-virtual {v9, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1645
    const-string v15, "Did set macro focus mode"

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1651
    .end local v9           #method:Ljava/lang/reflect/Method;
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getScanningHotSpotX()F

    move-result v16

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getScanningHotSpotY()F

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->setScanningHotSpot(FF)V

    .line 1655
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ge v15, v0, :cond_e

    .line 1656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1662
    :goto_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1663
    :catch_0
    move-exception v3

    .line 1664
    .local v3, e:Ljava/lang/Exception;
    const-string v15, "Failed to start camera preview."

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v3, v0}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1666
    const-wide/16 v15, 0x1f4

    :try_start_3
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1669
    :goto_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/Camera;->startPreview()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1670
    :catch_1
    move-exception v4

    .line 1671
    .local v4, e2:Ljava/lang/Exception;
    const-string v15, "Failed to start camera preview again."

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v4, v0}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x5

    invoke-static/range {v16 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1673
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/Camera;->release()V

    .line 1675
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    const/16 v16, 0x0

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto/16 :goto_0

    .line 1533
    .end local v1           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #e2:Ljava/lang/Exception;
    .end local v5           #frame_rate:I
    .end local v7           #image_format:I
    .end local v10           #modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v13           #torchVariant:Ljava/lang/String;
    :cond_a
    const/4 v15, 0x1

    aget v15, v12, v15

    const/16 v16, 0x140

    move/from16 v0, v16

    if-gt v15, v0, :cond_1

    .line 1534
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

    .line 1582
    .restart local v5       #frame_rate:I
    .restart local v7       #image_format:I
    .restart local v10       #modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11       #parameters:Landroid/hardware/Camera$Parameters;
    .restart local v13       #torchVariant:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    const/16 v16, 0x0

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHasTorch:Z
    invoke-static/range {v15 .. v16}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1402(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Z)Z

    goto/16 :goto_2

    .line 1589
    :cond_c
    const-string v15, "off"

    invoke-virtual {v11, v15}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1601
    .restart local v1       #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    :catch_2
    move-exception v3

    .line 1602
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v15, "Failed to set camera parameters."

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1642
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v9       #method:Ljava/lang/reflect/Method;
    :cond_d
    const/4 v15, 0x1

    :try_start_5
    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "auto"

    aput-object v17, v15, v16

    invoke-virtual {v9, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_5

    .line 1646
    .end local v9           #method:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v3

    .line 1647
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v15, "Failed to set focus mode."

    invoke-virtual {v1, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 1658
    .end local v3           #e:Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_7

    .line 1667
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v15

    goto/16 :goto_8
.end method

.method private startCamera()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1470
    :try_start_0
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v5

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4, v5}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1486
    :goto_0
    const/4 v0, 0x0

    .line 1487
    .local v0, count:I
    :goto_1
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v4

    if-nez v4, :cond_1

    const/16 v4, 0x64

    if-ge v0, v4, :cond_1

    .line 1490
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1491
    add-int/lit8 v0, v0, 0x1

    .line 1492
    const-string v4, "ScanditSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sleep "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v5

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4, v5}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 1495
    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1496
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1471
    .end local v0           #count:I
    :catch_1
    move-exception v2

    .line 1472
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v1

    .line 1473
    .local v1, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v4, "Failed to open camera."

    invoke-virtual {v1, v4, v2, v7}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1475
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1478
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v5

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4, v5}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1479
    :catch_2
    move-exception v3

    .line 1480
    .local v3, e2:Ljava/lang/Exception;
    const-string v4, "Failed to open camera again."

    invoke-virtual {v1, v4, v3, v7}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1481
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1482
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4, v8}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 1516
    .end local v1           #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #e2:Ljava/lang/Exception;
    :cond_0
    :goto_3
    return-void

    .line 1500
    .restart local v0       #count:I
    :cond_1
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1503
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;
    invoke-static {v4}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$500(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->loadBeep()V

    .line 1504
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1508
    :try_start_4
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v5, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v5}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1200(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 1510
    :catch_3
    move-exception v2

    .line 1511
    .local v2, e:Ljava/io/IOException;
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v1

    .line 1512
    .restart local v1       #diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v4, "Failed to set camera parameters."

    invoke-virtual {v1, v4, v2, v7}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 1513
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 1514
    iget-object v4, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4, v8}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$802(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto :goto_3

    .line 1476
    .end local v0           #count:I
    .local v2, e:Ljava/lang/Exception;
    :catch_4
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1457
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mInitThreadFinished:Z
    invoke-static {v0, v2}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$702(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Z)Z

    .line 1458
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$800(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1459
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->startCamera()V

    .line 1460
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->initCamera()V

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    const/4 v1, 0x0

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mCameraInitThread:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;
    invoke-static {v0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$902(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;)Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;

    .line 1463
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    const/4 v1, 0x1

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mInitThreadFinished:Z
    invoke-static {v0, v1}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$702(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Z)Z

    .line 1465
    iget-object v0, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$CameraInitThread;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSetTorchActive:Z
    invoke-static {v0, v2}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$1002(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Z)Z

    .line 1466
    return-void
.end method
