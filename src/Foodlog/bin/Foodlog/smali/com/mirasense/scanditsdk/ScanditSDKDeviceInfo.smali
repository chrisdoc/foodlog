.class public Lcom/mirasense/scanditsdk/ScanditSDKDeviceInfo;
.super Ljava/lang/Object;
.source "ScanditSDKDeviceInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static determinePreviewFormat(Landroid/hardware/Camera;)I
    .locals 16
    .parameter "camera"

    .prologue
    const/4 v12, -0x1

    const/4 v15, 0x1

    const/16 v11, 0x11

    .line 101
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v1

    .line 103
    .local v1, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const/4 v9, 0x0

    .line 105
    .local v9, supported_formats:[Ljava/lang/Integer;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 106
    .local v8, p:Landroid/hardware/Camera$Parameters;
    const/4 v6, 0x0

    .line 109
    .local v6, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getSupportedPreviewFormats"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 110
    .local v4, get_preview_formats:Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    .line 111
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/Integer;

    .line 112
    invoke-interface {v6, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    if-eqz v9, :cond_0

    array-length v10, v9

    if-nez v10, :cond_1

    .line 134
    :cond_0
    const-string v10, "list of supported formats is empty - ImageFormat.NV21 is not supported."

    new-instance v11, Ljava/lang/Exception;

    const-string v13, "ImageFormat.NV21 is not supported - not an exception thrown by Android"

    invoke-direct {v11, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    move v10, v12

    .line 153
    .end local v4           #get_preview_formats:Ljava/lang/reflect/Method;
    .end local v6           #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8           #p:Landroid/hardware/Camera$Parameters;
    :goto_0
    return v10

    .line 113
    .restart local v6       #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8       #p:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v2

    .line 115
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v10, "Failed to get supported preview formats - returned ImageFormat.NV21."

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v2, v12}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 116
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v10, v11

    .line 119
    goto :goto_0

    .line 122
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8           #p:Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v2

    .line 123
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "Failed to get parameters during preview frame format analysis - returned ImageFormat.NV21."

    invoke-virtual {v1, v10, v2, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 124
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v10, v11

    .line 129
    goto :goto_0

    .line 140
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #get_preview_formats:Ljava/lang/reflect/Method;
    .restart local v6       #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8       #p:Landroid/hardware/Camera$Parameters;
    :cond_1
    const/4 v7, 0x0

    .line 141
    .local v7, nv21_supported:Z
    const-string v3, ""

    .line 142
    .local v3, frameFormats:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v10, v9

    if-ge v5, v10, :cond_3

    .line 143
    aget-object v10, v9, v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v11, :cond_2

    const/4 v7, 0x1

    .line 144
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v13, v9, v5

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 146
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Supported frame formats: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 147
    if-eqz v7, :cond_4

    .line 148
    const-string v10, "ImageFormat.NV21 is supported"

    invoke-virtual {v1, v10}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    move v10, v11

    .line 149
    goto :goto_0

    .line 152
    :cond_4
    const-string v10, "ImageFormat.NV21 is not supported."

    new-instance v11, Ljava/lang/Exception;

    const-string v13, "ImageFormat.NV21 is not supported - not an exception thrown by Android"

    invoke-direct {v11, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addException(Ljava/lang/String;Ljava/lang/Exception;Z)V

    move v10, v12

    .line 153
    goto :goto_0
.end method

.method protected static determinePreviewFrameRate(Landroid/hardware/Camera;)I
    .locals 15
    .parameter "camera"

    .prologue
    const/16 v12, 0xf

    const/4 v11, -0x1

    .line 49
    const/4 v7, 0x0

    .line 50
    .local v7, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .line 52
    .local v10, supported_frame_rates:[Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 53
    .local v9, p:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 57
    if-nez v7, :cond_1

    .line 83
    .end local v9           #p:Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return v11

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0

    .line 60
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v9       #p:Landroid/hardware/Camera$Parameters;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    new-array v10, v13, [Ljava/lang/Integer;

    .line 61
    invoke-interface {v7, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v1

    .line 65
    .local v1, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    const-string v4, ""

    .line 66
    .local v4, frameRates:Ljava/lang/String;
    move-object v0, v10

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v13, v0, v6

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 67
    .local v3, frameRate:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 69
    .end local v3           #frameRate:I
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Supported frame rates: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 71
    if-eqz v7, :cond_0

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_0

    .line 73
    invoke-static {v10, v12}, Lcom/mirasense/scanditsdk/ScanditSDKDeviceInfo;->getIndexOfHighestImageFrameRate([Ljava/lang/Integer;I)I

    move-result v5

    .line 75
    .local v5, i:I
    if-ltz v5, :cond_3

    aget-object v11, v10, v5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_0

    .line 78
    :cond_3
    const/16 v11, 0x3e8

    invoke-static {v10, v11}, Lcom/mirasense/scanditsdk/ScanditSDKDeviceInfo;->getIndexOfHighestImageFrameRate([Ljava/lang/Integer;I)I

    move-result v5

    .line 80
    if-ltz v5, :cond_4

    aget-object v11, v10, v5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_0

    :cond_4
    move v11, v12

    .line 83
    goto :goto_0
.end method

.method protected static determinePreviewResolutionToUse(Landroid/hardware/Camera;II)[I
    .locals 18
    .parameter "camera"
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 176
    invoke-static {}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    move-result-object v3

    .line 177
    .local v3, diagnostics:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Screen dimensions (w/h): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 180
    const/4 v8, 0x0

    .line 181
    .local v8, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v14, 0x0

    .line 184
    .local v14, supported_sizes:[Landroid/hardware/Camera$Size;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 186
    .local v10, p:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    const-string v17, "getSupportedPreviewSizes"

    const/4 v15, 0x0

    check-cast v15, [Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 187
    .local v5, get_preview_sizes:Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    check-cast v15, [Ljava/lang/Object;

    invoke-virtual {v5, v10, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/util/List;

    move-object v8, v0

    .line 188
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    new-array v14, v15, [Landroid/hardware/Camera$Size;

    .line 189
    invoke-interface {v8, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 193
    const-string v11, ""

    .line 194
    .local v11, resolutions:Ljava/lang/String;
    move-object v2, v14

    .local v2, arr$:[Landroid/hardware/Camera$Size;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v13, v2, v7

    .line 195
    .local v13, size:Landroid/hardware/Camera$Size;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 194
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 197
    .end local v13           #size:Landroid/hardware/Camera$Size;
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Supported resolutions: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/4 v15, 0x2

    new-array v12, v15, [I

    .line 213
    .local v12, result:[I
    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v12, v15

    .line 214
    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v12, v15

    .line 216
    if-eqz v8, :cond_1

    if-eqz v14, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_2

    .line 217
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resolution selected (w/h): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    .line 235
    .end local v2           #arr$:[Landroid/hardware/Camera$Size;
    .end local v5           #get_preview_sizes:Ljava/lang/reflect/Method;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v10           #p:Landroid/hardware/Camera$Parameters;
    .end local v11           #resolutions:Ljava/lang/String;
    :goto_1
    return-object v12

    .line 199
    .end local v12           #result:[I
    :catch_0
    move-exception v4

    .line 201
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    const/4 v15, 0x2

    new-array v12, v15, [I

    .line 205
    .restart local v12       #result:[I
    const/4 v15, 0x0

    const/16 v16, 0x140

    aput v16, v12, v15

    .line 206
    const/4 v15, 0x1

    const/16 v16, 0xf0

    aput v16, v12, v15

    .line 207
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resolution selected (w/h): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #arr$:[Landroid/hardware/Camera$Size;
    .restart local v5       #get_preview_sizes:Ljava/lang/reflect/Method;
    .restart local v7       #i$:I
    .restart local v9       #len$:I
    .restart local v10       #p:Landroid/hardware/Camera$Parameters;
    .restart local v11       #resolutions:Ljava/lang/String;
    :cond_2
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v14, v0, v1}, Lcom/mirasense/scanditsdk/ScanditSDKDeviceInfo;->getIndexOfBestFittingImageHeightResolution([Landroid/hardware/Camera$Size;II)I

    move-result v6

    .line 225
    .local v6, i:I
    if-ltz v6, :cond_3

    .line 227
    const/4 v15, 0x0

    aget-object v16, v14, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    aput v16, v12, v15

    .line 228
    const/4 v15, 0x1

    aget-object v16, v14, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    aput v16, v12, v15

    .line 229
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resolution selected (w/h): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v14, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v14, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 233
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resolution selected (w/h): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->addMessage(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static getHighestImageHeightResolution([Landroid/hardware/Camera$Size;I)I
    .locals 3
    .parameter "supported_sizes"
    .parameter "max_image_height"

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, resolution:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 263
    aget-object v2, p0, v0

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    if-le v2, v1, :cond_0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    if-gt v2, p1, :cond_0

    .line 264
    aget-object v2, p0, v0

    iget v1, v2, Landroid/hardware/Camera$Size;->height:I

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    return v1
.end method

.method private static getIndexOfBestFittingImageHeightResolution([Landroid/hardware/Camera$Size;II)I
    .locals 12
    .parameter "supported_sizes"
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 277
    if-le p1, p2, :cond_2

    int-to-float v10, p1

    int-to-float v11, p2

    div-float v8, v10, v11

    .line 281
    .local v8, screenRatio:F
    :goto_0
    const/4 v3, -0x1

    .line 282
    .local v3, index:I
    const/high16 v1, 0x3f80

    .line 283
    .local v1, bestRatioDiff:F
    const/4 v4, 0x0

    .line 284
    .local v4, largestArea:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v10, p0

    if-ge v2, v10, :cond_4

    .line 285
    aget-object v10, p0, v2

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    aget-object v11, p0, v2

    iget v11, v11, Landroid/hardware/Camera$Size;->height:I

    if-le v10, v11, :cond_3

    aget-object v10, p0, v2

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    aget-object v11, p0, v2

    iget v11, v11, Landroid/hardware/Camera$Size;->height:I

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 288
    .local v6, ratio:F
    :goto_2
    aget-object v10, p0, v2

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    aget-object v11, p0, v2

    iget v11, v11, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 289
    .local v5, longSide:I
    aget-object v10, p0, v2

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    aget-object v11, p0, v2

    iget v11, v11, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 290
    .local v9, shortSide:I
    sub-float v10, v8, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 291
    .local v7, ratioDiff:F
    aget-object v10, p0, v2

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    aget-object v11, p0, v2

    iget v11, v11, Landroid/hardware/Camera$Size;->height:I

    mul-int v0, v10, v11

    .line 292
    .local v0, area:I
    cmpg-float v10, v7, v1

    if-ltz v10, :cond_0

    cmpl-float v10, v7, v1

    if-nez v10, :cond_1

    if-le v0, v4, :cond_1

    :cond_0
    const/16 v10, 0x500

    if-gt v5, v10, :cond_1

    const/16 v10, 0x2d0

    if-gt v9, v10, :cond_1

    .line 295
    move v3, v2

    .line 296
    move v1, v7

    .line 297
    move v4, v0

    .line 284
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 277
    .end local v0           #area:I
    .end local v1           #bestRatioDiff:F
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #largestArea:I
    .end local v5           #longSide:I
    .end local v6           #ratio:F
    .end local v7           #ratioDiff:F
    .end local v8           #screenRatio:F
    .end local v9           #shortSide:I
    :cond_2
    int-to-float v10, p2

    int-to-float v11, p1

    div-float v8, v10, v11

    goto :goto_0

    .line 285
    .restart local v1       #bestRatioDiff:F
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v4       #largestArea:I
    .restart local v8       #screenRatio:F
    :cond_3
    aget-object v10, p0, v2

    iget v10, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-float v10, v10

    aget-object v11, p0, v2

    iget v11, v11, Landroid/hardware/Camera$Size;->width:I

    int-to-float v11, v11

    div-float v6, v10, v11

    goto :goto_2

    .line 300
    :cond_4
    if-gez v3, :cond_5

    const/4 v3, 0x0

    .line 301
    :cond_5
    return v3
.end method

.method private static getIndexOfHighestImageFrameRate([Ljava/lang/Integer;I)I
    .locals 4
    .parameter "supported_frame_rates"
    .parameter "max_frame_rate"

    .prologue
    .line 244
    const/4 v2, -0x1

    .line 245
    .local v2, index:I
    const/4 v0, 0x0

    .line 246
    .local v0, frame_rate:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 247
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p1, :cond_0

    .line 248
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    move v2, v1

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return v2
.end method

.method public static getOSVersion(I)I
    .locals 2
    .parameter "defaultOs"

    .prologue
    .line 29
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .line 32
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return p0

    .line 30
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 31
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
