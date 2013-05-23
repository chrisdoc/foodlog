.class public Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;
.super Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;
.source "ScanditSDKUIStatePainter.java"


# instance fields
.field private drawMirasenseLogo:Z

.field private mContext:Landroid/content/Context;

.field private mirasenseLogo:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)V
    .locals 3
    .parameter "context"
    .parameter "picker"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;-><init>(Landroid/content/Context;Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)V

    .line 26
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    .line 27
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->drawMirasenseLogo:Z

    .line 33
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 38
    iget-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 39
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getBannerImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 40
    .local v1, originalLogo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 41
    invoke-direct {p0, v1, p1}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->resizeLogoToFitDisplay(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    .line 43
    :cond_0
    return-void
.end method

.method private drawFlash(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "uiState"
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x3f80

    .line 193
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    .line 194
    .local v4, h:I
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 195
    .local v3, w:I
    iget v0, p1, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->flashTransparency:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 196
    iget v0, p1, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->flashTransparency:F

    invoke-super {p0, v5, v5, v5, v0}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->getColor(FFFF)I

    move-result v6

    const/4 v7, 0x1

    move-object v0, p0

    move v2, v1

    move v5, v1

    move-object v8, p2

    invoke-super/range {v0 .. v8}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawRectangle(IIIIIIZLandroid/graphics/Canvas;)V

    .line 200
    :cond_0
    return-void
.end method

.method private drawInfoBanner(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "uiState"
    .parameter "canvas"

    .prologue
    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    .line 210
    .local v13, h:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 211
    .local v3, w:I
    int-to-float v0, v13

    const v1, 0x3f2f5c29

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 213
    .local v2, yPos:I
    int-to-double v0, v13

    const-wide v4, 0x3fb999999999999aL

    mul-double/2addr v0, v4

    double-to-int v12, v0

    .line 216
    .local v12, barHeight:I
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 217
    const/4 v1, 0x0

    add-int v4, v2, v12

    const/4 v5, 0x0

    const/high16 v6, 0x4400

    const/4 v7, 0x1

    move-object v0, p0

    move-object/from16 v8, p2

    invoke-super/range {v0 .. v8}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawRectangle(IIIIIIZLandroid/graphics/Canvas;)V

    .line 219
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->drawMirasenseLogo:Z

    if-eqz v0, :cond_1

    .line 220
    move v9, v12

    .line 221
    .local v9, actualHeight:I
    move v7, v2

    .line 222
    .local v7, newYPos:I
    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x28a

    if-ge v0, v1, :cond_0

    .line 223
    int-to-float v0, v9

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    float-to-int v9, v0

    .line 224
    div-int/lit8 v0, v12, 0x6

    sub-int/2addr v7, v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v9

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 228
    .local v8, actualWidth:I
    iget-object v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    sub-int v6, v3, v8

    const/4 v10, 0x0

    move-object v4, p0

    move-object/from16 v11, p2

    invoke-super/range {v4 .. v11}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawBitmap(Landroid/graphics/Bitmap;IIIIZLandroid/graphics/Canvas;)V

    .line 233
    .end local v7           #newYPos:I
    .end local v8           #actualWidth:I
    .end local v9           #actualHeight:I
    :cond_1
    return-void
.end method

.method private drawRoughCodePosition(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;)V
    .locals 41
    .parameter "uiState"
    .parameter "canvas"

    .prologue
    .line 130
    const/16 v2, 0x8

    new-array v3, v2, [I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx0:I

    aput v4, v3, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry0:I

    aput v4, v3, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx1:I

    aput v4, v3, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry1:I

    aput v4, v3, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx3:I

    aput v4, v3, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry3:I

    aput v4, v3, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx2:I

    aput v4, v3, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry2:I

    aput v4, v3, v2

    .line 132
    .local v3, points:[I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorB:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorG:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 133
    move-object/from16 v0, p1

    iget v2, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorR:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorG:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorB:F

    move-object/from16 v0, p1

    iget v7, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    const v8, 0x3e99999a

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    invoke-super {v0, v2, v4, v6, v7}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->getColor(FFFF)I

    move-result v5

    .line 136
    .local v5, fadedRoughColor:I
    const/16 v4, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    invoke-super/range {v2 .. v8}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawPath([IIIZZLandroid/graphics/Canvas;)V

    .line 137
    const/4 v4, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    invoke-super/range {v2 .. v8}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawPath([IIIZZLandroid/graphics/Canvas;)V

    .line 139
    .end local v5           #fadedRoughColor:I
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorR:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorG:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorB:F

    move-object/from16 v0, p1

    iget v7, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    move-object/from16 v0, p0

    invoke-super {v0, v2, v4, v6, v7}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->getColor(FFFF)I

    move-result v9

    .line 142
    .local v9, roughColor:I
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object v7, v3

    move-object/from16 v12, p2

    invoke-super/range {v6 .. v12}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawPath([IIIZZLandroid/graphics/Canvas;)V

    .line 144
    const/4 v11, 0x0

    .line 147
    .local v11, string:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx1:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx0:I

    sub-int/2addr v2, v4

    int-to-float v0, v2

    move/from16 v25, v0

    .line 148
    .local v25, dx:F
    move-object/from16 v0, p1

    iget v2, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry1:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry0:I

    sub-int/2addr v2, v4

    int-to-float v0, v2

    move/from16 v28, v0

    .line 149
    .local v28, dy:F
    move/from16 v0, v28

    float-to-double v6, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v6, v6, v19

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    neg-double v6, v6

    double-to-float v0, v6

    move/from16 v38, v0

    .line 151
    .local v38, ta:F
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v31

    .line 152
    .local v31, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual/range {v31 .. v31}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getDrawViewfinderTextHook()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    move/from16 v27, v28

    .line 155
    .local v27, dxRev:F
    move/from16 v30, v25

    .line 156
    .local v30, dyRev:F
    mul-float v2, v25, v25

    mul-float v4, v28, v28

    add-float/2addr v2, v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v24, v0

    .line 157
    .local v24, dl:F
    div-float v26, v27, v24

    .line 158
    .local v26, dxIn:F
    div-float v29, v30, v24

    .line 160
    .local v29, dyIn:F
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rmessage1:Ljava/lang/String;

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v40

    .line 163
    .local v40, w:I
    div-int/lit8 v15, v40, 0x14

    .line 165
    .local v15, fontSize:I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx0:I

    const v4, 0x3dcccccd

    mul-float v4, v4, v25

    float-to-int v4, v4

    add-int v32, v2, v4

    .line 166
    .local v32, p1x:I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry0:I

    const v4, 0x3dcccccd

    mul-float v4, v4, v28

    float-to-int v4, v4

    add-int v33, v2, v4

    .line 169
    .local v33, p1y:I
    move/from16 v0, v32

    int-to-float v2, v0

    const/high16 v4, 0x41c8

    mul-float v4, v4, v26

    add-float/2addr v2, v4

    float-to-int v12, v2

    .line 170
    .local v12, tx:I
    move/from16 v0, v33

    int-to-float v2, v0

    const/high16 v4, 0x41c8

    mul-float v4, v4, v29

    sub-float/2addr v2, v4

    float-to-int v13, v2

    .line 171
    .local v13, ty:I
    const/high16 v2, 0x4334

    mul-float v2, v2, v38

    float-to-double v6, v2

    const-wide v19, 0x400921fb54442d18L

    div-double v6, v6, v19

    double-to-int v0, v6

    move/from16 v16, v0

    .line 172
    .local v16, angle:I
    const/4 v14, 0x0

    const/16 v18, 0x1

    move-object/from16 v10, p0

    move/from16 v17, v9

    move-object/from16 v19, p2

    invoke-super/range {v10 .. v19}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawText(Ljava/lang/String;IIZIIIZLandroid/graphics/Canvas;)[I

    move-result-object v39

    .line 175
    .local v39, text_dimensions:[I
    move/from16 v0, v32

    int-to-float v2, v0

    const/high16 v4, 0x41a0

    mul-float v4, v4, v26

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v34, v0

    .line 176
    .local v34, p2x:I
    move/from16 v0, v33

    int-to-float v2, v0

    const/high16 v4, 0x41a0

    mul-float v4, v4, v29

    sub-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v35, v0

    .line 177
    .local v35, p2y:I
    move/from16 v0, v34

    int-to-float v2, v0

    div-float v4, v25, v24

    const/4 v6, 0x0

    aget v6, v39, v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v36, v0

    .line 178
    .local v36, p3x:I
    move/from16 v0, v35

    int-to-float v2, v0

    div-float v4, v28, v24

    const/4 v6, 0x0

    aget v6, v39, v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v37, v0

    .line 180
    .local v37, p3y:I
    const/4 v2, 0x6

    new-array v0, v2, [I

    move-object/from16 v18, v0

    const/4 v2, 0x0

    aput v32, v18, v2

    const/4 v2, 0x1

    aput v33, v18, v2

    const/4 v2, 0x2

    aput v34, v18, v2

    const/4 v2, 0x3

    aput v35, v18, v2

    const/4 v2, 0x4

    aput v36, v18, v2

    const/4 v2, 0x5

    aput v37, v18, v2

    .line 182
    .local v18, points2:[I
    const/16 v19, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v17, p0

    move/from16 v20, v9

    move-object/from16 v23, p2

    invoke-super/range {v17 .. v23}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawPath([IIIZZLandroid/graphics/Canvas;)V

    .line 184
    .end local v12           #tx:I
    .end local v13           #ty:I
    .end local v15           #fontSize:I
    .end local v16           #angle:I
    .end local v18           #points2:[I
    .end local v24           #dl:F
    .end local v26           #dxIn:F
    .end local v27           #dxRev:F
    .end local v29           #dyIn:F
    .end local v30           #dyRev:F
    .end local v32           #p1x:I
    .end local v33           #p1y:I
    .end local v34           #p2x:I
    .end local v35           #p2y:I
    .end local v36           #p3x:I
    .end local v37           #p3y:I
    .end local v39           #text_dimensions:[I
    .end local v40           #w:I
    :cond_1
    return-void
.end method

.method private drawViewfinder(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "uiState"
    .parameter "canvas"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v18

    .line 79
    .local v18, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderWidth()F

    move-result v25

    .line 80
    .local v25, xScale:F
    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderHeight()F

    move-result v27

    .line 82
    .local v27, yScale:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v19

    .line 83
    .local v19, height:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v23

    .line 85
    .local v23, width:I
    move/from16 v0, v23

    int-to-float v1, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getScanningHotSpotX()F

    move-result v4

    mul-float/2addr v1, v4

    float-to-int v0, v1

    move/from16 v24, v0

    .line 86
    .local v24, xMiddle:I
    move/from16 v0, v19

    int-to-float v1, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getScanningHotSpotY()F

    move-result v4

    mul-float/2addr v1, v4

    float-to-int v0, v1

    move/from16 v26, v0

    .line 88
    .local v26, yMiddle:I
    move/from16 v0, v23

    int-to-float v1, v0

    mul-float v1, v1, v25

    float-to-int v0, v1

    move/from16 v22, v0

    .line 89
    .local v22, viewfinderWidth:I
    move/from16 v0, v19

    int-to-float v1, v0

    mul-float v1, v1, v27

    float-to-int v0, v1

    move/from16 v21, v0

    .line 91
    .local v21, viewfinderHeight:I
    div-int/lit8 v1, v22, 0x2

    sub-int v2, v24, v1

    .line 92
    .local v2, x0:I
    div-int/lit8 v1, v21, 0x2

    sub-int v3, v26, v1

    .line 94
    .local v3, y0:I
    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderRed()F

    move-result v1

    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderGreen()F

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderBlue()F

    move-result v6

    move-object/from16 v0, p1

    iget v8, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v6, v8}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->getColor(FFFF)I

    move-result v7

    .line 98
    .local v7, color:I
    add-int v4, v2, v22

    add-int v5, v3, v21

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    invoke-super/range {v1 .. v9}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawRectangle(IIIIIIZLandroid/graphics/Canvas;)V

    .line 102
    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getDrawViewfinderTextHook()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    div-int/lit8 v13, v23, 0x14

    .line 106
    .local v13, fontSize:I
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v20, v0

    .line 107
    .local v20, textDimensions:[I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->viewfinderMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 108
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->viewfinderMessage:Ljava/lang/String;

    add-int/lit8 v10, v2, 0xa

    add-int/lit8 v11, v3, -0x18

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v8, p0

    move v15, v7

    move-object/from16 v17, p2

    invoke-super/range {v8 .. v17}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawText(Ljava/lang/String;IIZIIIZLandroid/graphics/Canvas;)[I

    move-result-object v20

    .line 114
    :goto_0
    const/4 v1, 0x6

    new-array v5, v1, [I

    const/4 v1, 0x0

    add-int/lit8 v4, v2, 0xa

    aput v4, v5, v1

    const/4 v1, 0x1

    aput v3, v5, v1

    const/4 v1, 0x2

    add-int/lit8 v4, v2, 0xa

    aput v4, v5, v1

    const/4 v1, 0x3

    add-int/lit8 v4, v3, -0x14

    aput v4, v5, v1

    const/4 v1, 0x4

    add-int/lit8 v4, v2, 0xa

    const/4 v6, 0x0

    aget v6, v20, v6

    add-int/2addr v4, v6

    aput v4, v5, v1

    const/4 v1, 0x5

    add-int/lit8 v4, v3, -0x14

    aput v4, v5, v1

    .line 118
    .local v5, points:[I
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p2

    invoke-super/range {v4 .. v10}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawPath([IIIZZLandroid/graphics/Canvas;)V

    .line 120
    .end local v5           #points:[I
    .end local v13           #fontSize:I
    .end local v20           #textDimensions:[I
    :cond_0
    return-void

    .line 111
    .restart local v13       #fontSize:I
    .restart local v20       #textDimensions:[I
    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    aput v4, v20, v1

    goto :goto_0
.end method

.method private getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bm"
    .parameter "newHeight"
    .parameter "newWidth"

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private resizeLogoToFitDisplay(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "original"
    .parameter "context"

    .prologue
    .line 242
    const-string v6, "window"

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 243
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 246
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    div-double v3, v6, v8

    .line 247
    .local v3, scale:D
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v3

    double-to-int v1, v6

    .line 248
    .local v1, imageHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v3

    double-to-int v2, v6

    .line 250
    .local v2, imageWidth:I
    invoke-direct {p0, p1, v1, v2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public didUpdateStatus(Lcom/mirasense/scanditsdk/ScanditSDKScanState;)V
    .locals 0
    .parameter "scanStatus"

    .prologue
    .line 236
    return-void
.end method

.method public drawUIState(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "uiState"
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 53
    iget v0, p1, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->drawViewfinder(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;)V

    .line 58
    :cond_0
    iget v0, p1, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->drawRoughCodePosition(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;)V

    .line 63
    :cond_1
    iget v0, p1, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->flashTransparency:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->drawFlash(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;)V

    .line 68
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIStatePainter;->drawInfoBanner(Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;)V

    .line 69
    return-void
.end method

.method public resetGUI()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method
