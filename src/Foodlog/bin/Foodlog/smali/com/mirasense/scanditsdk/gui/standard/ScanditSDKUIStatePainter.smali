.class public Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;
.super Lcom/mirasense/scanditsdk/gui/ScanditSDKView;
.source "ScanditSDKUIStatePainter.java"


# instance fields
.field private drawMirasenseLogo:Z

.field private mContext:Landroid/content/Context;

.field private mirasenseLogo:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    .line 26
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->drawMirasenseLogo:Z

    .line 32
    iput-object p1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 37
    invoke-static {p1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 38
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getBannerImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    .local v1, originalLogo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 40
    invoke-direct {p0, v1, p1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->resizeLogoToFitDisplay(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    .line 42
    :cond_0
    return-void
.end method

.method private drawFlash(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;II)V
    .locals 9
    .parameter "uiState"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    .line 223
    iget v0, p1, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->flashTransparency:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 224
    iget v0, p1, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->flashTransparency:F

    invoke-super {p0, v3, v3, v3, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->getColor(FFFF)I

    move-result v6

    const/4 v7, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p3

    move v4, p4

    move v5, v1

    move-object v8, p2

    invoke-super/range {v0 .. v8}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawRectangle(IIIIIIZLandroid/graphics/Canvas;)V

    .line 228
    :cond_0
    return-void
.end method

.method private drawInfoBanner(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;II)V
    .locals 14
    .parameter "uiState"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 238
    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v13

    .line 239
    .local v13, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    move/from16 v0, p4

    int-to-float v1, v0

    invoke-virtual {v13}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInfoBannerY()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v3, v1

    .line 242
    .local v3, yPos:I
    invoke-virtual {v13}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isInPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    move/from16 v0, p4

    int-to-double v1, v0

    const-wide v4, 0x3fb999999999999aL

    mul-double/2addr v1, v4

    double-to-int v12, v1

    .line 249
    .local v12, barHeight:I
    :goto_0
    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 250
    const/4 v2, 0x0

    add-int v5, v3, v12

    const/4 v6, 0x0

    const/high16 v7, 0x4400

    const/4 v8, 0x1

    move-object v1, p0

    move/from16 v4, p3

    move-object/from16 v9, p2

    invoke-super/range {v1 .. v9}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawRectangle(IIIIIIZLandroid/graphics/Canvas;)V

    .line 252
    iget-boolean v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->drawMirasenseLogo:Z

    if-eqz v1, :cond_1

    .line 253
    move v9, v12

    .line 254
    .local v9, actualHeight:I
    move v7, v3

    .line 255
    .local v7, newYPos:I
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x28a

    if-ge v1, v2, :cond_0

    .line 256
    int-to-float v1, v9

    const/high16 v2, 0x4080

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    float-to-int v9, v1

    .line 257
    div-int/lit8 v1, v12, 0x6

    sub-int/2addr v7, v1

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v9

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 261
    .local v8, actualWidth:I
    iget-object v5, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->mirasenseLogo:Landroid/graphics/Bitmap;

    sub-int v6, p3, v8

    const/4 v10, 0x0

    move-object v4, p0

    move-object/from16 v11, p2

    invoke-super/range {v4 .. v11}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawBitmap(Landroid/graphics/Bitmap;IIIIZLandroid/graphics/Canvas;)V

    .line 265
    .end local v7           #newYPos:I
    .end local v8           #actualWidth:I
    .end local v9           #actualHeight:I
    :cond_1
    return-void

    .line 245
    .end local v12           #barHeight:I
    :cond_2
    move/from16 v0, p3

    int-to-double v1, v0

    const-wide v4, 0x3fb999999999999aL

    mul-double/2addr v1, v4

    double-to-int v12, v1

    .restart local v12       #barHeight:I
    goto :goto_0
.end method

.method private drawRoughCodePosition(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;II)V
    .locals 40
    .parameter "uiState"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 140
    const/16 v1, 0x8

    new-array v2, v1, [I

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rx1:I

    aput v3, v2, v1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry1:I

    aput v3, v2, v1

    const/4 v1, 0x2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rx0:I

    aput v3, v2, v1

    const/4 v1, 0x3

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry0:I

    aput v3, v2, v1

    const/4 v1, 0x4

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rx2:I

    aput v3, v2, v1

    const/4 v1, 0x5

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry2:I

    aput v3, v2, v1

    const/4 v1, 0x6

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rx3:I

    aput v3, v2, v1

    const/4 v1, 0x7

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry3:I

    aput v3, v2, v1

    .line 143
    .local v2, points:[I
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rcolorB:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rcolorG:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 144
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rcolorR:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rcolorG:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rcolorB:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    const v7, 0x3e99999a

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    invoke-super {v0, v1, v3, v5, v6}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->getColor(FFFF)I

    move-result v4

    .line 147
    .local v4, fadedRoughColor:I
    const/16 v3, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    invoke-super/range {v1 .. v7}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawPath([IIIZZLandroid/graphics/Canvas;)V

    .line 148
    const/4 v3, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    invoke-super/range {v1 .. v7}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawPath([IIIZZLandroid/graphics/Canvas;)V

    .line 150
    .end local v4           #fadedRoughColor:I
    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rcolorR:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rcolorG:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rcolorB:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    move-object/from16 v0, p0

    invoke-super {v0, v1, v3, v5, v6}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->getColor(FFFF)I

    move-result v8

    .line 153
    .local v8, roughColor:I
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->pxFromDp(Landroid/content/Context;I)I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object v6, v2

    move-object/from16 v11, p2

    invoke-super/range {v5 .. v11}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawPath([IIIZZLandroid/graphics/Canvas;)V

    .line 155
    const/4 v10, 0x0

    .line 168
    .local v10, string:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry0:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry2:I

    if-ge v1, v3, :cond_2

    .line 169
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rx1:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rx0:I

    sub-int/2addr v1, v3

    int-to-float v0, v1

    move/from16 v24, v0

    .line 170
    .local v24, dx:F
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry1:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry0:I

    sub-int/2addr v1, v3

    int-to-float v0, v1

    move/from16 v27, v0

    .line 171
    .local v27, dy:F
    move/from16 v0, v27

    float-to-double v5, v0

    move/from16 v0, v24

    float-to-double v12, v0

    div-double/2addr v5, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    neg-double v5, v5

    double-to-float v0, v5

    move/from16 v37, v0

    .line 172
    .local v37, ta:F
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rx0:I

    const v3, 0x3dcccccd

    mul-float v3, v3, v24

    float-to-int v3, v3

    add-int v31, v1, v3

    .line 173
    .local v31, p1x:I
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry0:I

    const v3, 0x3dcccccd

    mul-float v3, v3, v27

    float-to-int v3, v3

    add-int v32, v1, v3

    .line 182
    .local v32, p1y:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v30

    .line 183
    .local v30, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual/range {v30 .. v30}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getDrawViewfinderTextHook()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    move/from16 v26, v27

    .line 186
    .local v26, dxRev:F
    move/from16 v29, v24

    .line 187
    .local v29, dyRev:F
    mul-float v1, v24, v24

    mul-float v3, v27, v27

    add-float/2addr v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    move/from16 v23, v0

    .line 188
    .local v23, dl:F
    div-float v25, v26, v23

    .line 189
    .local v25, dxIn:F
    div-float v28, v29, v23

    .line 191
    .local v28, dyIn:F
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rmessage1:Ljava/lang/String;

    .line 193
    invoke-virtual/range {v30 .. v30}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isInPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_3

    div-int/lit8 v14, p3, 0x14

    .line 196
    .local v14, fontSize:I
    :goto_1
    move/from16 v0, v31

    int-to-float v1, v0

    const/high16 v3, 0x41c8

    mul-float v3, v3, v25

    add-float/2addr v1, v3

    float-to-int v11, v1

    .line 197
    .local v11, tx:I
    move/from16 v0, v32

    int-to-float v1, v0

    const/high16 v3, 0x41c8

    mul-float v3, v3, v28

    sub-float/2addr v1, v3

    float-to-int v0, v1

    move/from16 v39, v0

    .line 198
    .local v39, ty:I
    const/high16 v1, 0x4334

    mul-float v1, v1, v37

    float-to-double v5, v1

    const-wide v12, 0x400921fb54442d18L

    div-double/2addr v5, v12

    double-to-int v15, v5

    .line 199
    .local v15, angle:I
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->pxFromDp(Landroid/content/Context;I)I

    move-result v1

    sub-int v12, v39, v1

    const/4 v13, 0x0

    const/16 v17, 0x1

    move-object/from16 v9, p0

    move/from16 v16, v8

    move-object/from16 v18, p2

    invoke-super/range {v9 .. v18}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawText(Ljava/lang/String;IIZIIIZLandroid/graphics/Canvas;)[I

    move-result-object v38

    .line 203
    .local v38, text_dimensions:[I
    move/from16 v0, v31

    int-to-float v1, v0

    const/high16 v3, 0x41a0

    mul-float v3, v3, v25

    add-float/2addr v1, v3

    float-to-int v0, v1

    move/from16 v33, v0

    .line 204
    .local v33, p2x:I
    move/from16 v0, v32

    int-to-float v1, v0

    const/high16 v3, 0x41a0

    mul-float v3, v3, v28

    sub-float/2addr v1, v3

    float-to-int v0, v1

    move/from16 v34, v0

    .line 205
    .local v34, p2y:I
    move/from16 v0, v33

    int-to-float v1, v0

    div-float v3, v24, v23

    const/4 v5, 0x0

    aget v5, v38, v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    float-to-int v0, v1

    move/from16 v35, v0

    .line 206
    .local v35, p3x:I
    move/from16 v0, v34

    int-to-float v1, v0

    div-float v3, v27, v23

    const/4 v5, 0x0

    aget v5, v38, v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    float-to-int v0, v1

    move/from16 v36, v0

    .line 208
    .local v36, p3y:I
    const/4 v1, 0x6

    new-array v0, v1, [I

    move-object/from16 v17, v0

    const/4 v1, 0x0

    aput v31, v17, v1

    const/4 v1, 0x1

    aput v32, v17, v1

    const/4 v1, 0x2

    aput v33, v17, v1

    const/4 v1, 0x3

    aput v34, v17, v1

    const/4 v1, 0x4

    aput v35, v17, v1

    const/4 v1, 0x5

    aput v36, v17, v1

    .line 210
    .local v17, points2:[I
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->pxFromDp(Landroid/content/Context;I)I

    move-result v18

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v16, p0

    move/from16 v19, v8

    move-object/from16 v22, p2

    invoke-super/range {v16 .. v22}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawPath([IIIZZLandroid/graphics/Canvas;)V

    .line 213
    .end local v11           #tx:I
    .end local v14           #fontSize:I
    .end local v15           #angle:I
    .end local v17           #points2:[I
    .end local v23           #dl:F
    .end local v25           #dxIn:F
    .end local v26           #dxRev:F
    .end local v28           #dyIn:F
    .end local v29           #dyRev:F
    .end local v33           #p2x:I
    .end local v34           #p2y:I
    .end local v35           #p3x:I
    .end local v36           #p3y:I
    .end local v38           #text_dimensions:[I
    .end local v39           #ty:I
    :cond_1
    return-void

    .line 175
    .end local v24           #dx:F
    .end local v27           #dy:F
    .end local v30           #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    .end local v31           #p1x:I
    .end local v32           #p1y:I
    .end local v37           #ta:F
    :cond_2
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rx2:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rx3:I

    sub-int/2addr v1, v3

    int-to-float v0, v1

    move/from16 v24, v0

    .line 176
    .restart local v24       #dx:F
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry2:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry3:I

    sub-int/2addr v1, v3

    int-to-float v0, v1

    move/from16 v27, v0

    .line 177
    .restart local v27       #dy:F
    move/from16 v0, v27

    float-to-double v5, v0

    move/from16 v0, v24

    float-to-double v12, v0

    div-double/2addr v5, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    neg-double v5, v5

    double-to-float v0, v5

    move/from16 v37, v0

    .line 178
    .restart local v37       #ta:F
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->rx3:I

    const v3, 0x3dcccccd

    mul-float v3, v3, v24

    float-to-int v3, v3

    add-int v31, v1, v3

    .line 179
    .restart local v31       #p1x:I
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->ry3:I

    const v3, 0x3dcccccd

    mul-float v3, v3, v27

    float-to-int v3, v3

    add-int v32, v1, v3

    .restart local v32       #p1y:I
    goto/16 :goto_0

    .line 193
    .restart local v23       #dl:F
    .restart local v25       #dxIn:F
    .restart local v26       #dxRev:F
    .restart local v28       #dyIn:F
    .restart local v29       #dyRev:F
    .restart local v30       #globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    :cond_3
    div-int/lit8 v14, p4, 0x14

    goto/16 :goto_1
.end method

.method private drawViewfinder(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;II)V
    .locals 26
    .parameter "uiState"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v18

    .line 80
    .local v18, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderWidth()F

    move-result v23

    .line 81
    .local v23, xScale:F
    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderHeight()F

    move-result v25

    .line 83
    .local v25, yScale:F
    move/from16 v0, p3

    int-to-float v1, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getScanningHotSpotX()F

    move-result v4

    mul-float/2addr v1, v4

    float-to-int v0, v1

    move/from16 v22, v0

    .line 84
    .local v22, xMiddle:I
    move/from16 v0, p4

    int-to-float v1, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getScanningHotSpotY()F

    move-result v4

    mul-float/2addr v1, v4

    float-to-int v0, v1

    move/from16 v24, v0

    .line 88
    .local v24, yMiddle:I
    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isInPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    move/from16 v0, p3

    int-to-float v1, v0

    mul-float v1, v1, v23

    float-to-int v0, v1

    move/from16 v21, v0

    .line 90
    .local v21, viewfinderWidth:I
    move/from16 v0, p4

    int-to-float v1, v0

    mul-float v1, v1, v25

    float-to-int v0, v1

    move/from16 v20, v0

    .line 96
    .local v20, viewfinderHeight:I
    :goto_0
    div-int/lit8 v1, v21, 0x2

    sub-int v2, v22, v1

    .line 97
    .local v2, x0:I
    div-int/lit8 v1, v20, 0x2

    sub-int v3, v24, v1

    .line 99
    .local v3, y0:I
    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderRed()F

    move-result v1

    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderGreen()F

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getViewfinderBlue()F

    move-result v6

    move-object/from16 v0, p1

    iget v8, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v6, v8}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->getColor(FFFF)I

    move-result v7

    .line 103
    .local v7, color:I
    add-int v4, v2, v21

    add-int v5, v3, v20

    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->pxFromDp(Landroid/content/Context;I)I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    invoke-super/range {v1 .. v9}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawRectangle(IIIIIIZLandroid/graphics/Canvas;)V

    .line 107
    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getDrawViewfinderTextHook()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual/range {v18 .. v18}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->isInPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_2

    div-int/lit8 v13, p3, 0x14

    .line 112
    .local v13, fontSize:I
    :goto_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v19, v0

    .line 113
    .local v19, textDimensions:[I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->viewfinderMessage:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 114
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->viewfinderMessage:Ljava/lang/String;

    add-int/lit8 v10, v2, 0xa

    add-int/lit8 v1, v3, -0x18

    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->pxFromDp(Landroid/content/Context;I)I

    move-result v4

    sub-int v11, v1, v4

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v8, p0

    move v15, v7

    move-object/from16 v17, p2

    invoke-super/range {v8 .. v17}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawText(Ljava/lang/String;IIZIIIZLandroid/graphics/Canvas;)[I

    move-result-object v19

    .line 121
    :goto_2
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

    aget v6, v19, v6

    add-int/2addr v4, v6

    aput v4, v5, v1

    const/4 v1, 0x5

    add-int/lit8 v4, v3, -0x14

    aput v4, v5, v1

    .line 125
    .local v5, points:[I
    invoke-virtual/range {p0 .. p0}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->pxFromDp(Landroid/content/Context;I)I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p2

    invoke-super/range {v4 .. v10}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawPath([IIIZZLandroid/graphics/Canvas;)V

    .line 128
    .end local v5           #points:[I
    .end local v13           #fontSize:I
    .end local v19           #textDimensions:[I
    :cond_0
    return-void

    .line 92
    .end local v2           #x0:I
    .end local v3           #y0:I
    .end local v7           #color:I
    .end local v20           #viewfinderHeight:I
    .end local v21           #viewfinderWidth:I
    :cond_1
    move/from16 v0, p4

    int-to-float v1, v0

    mul-float v1, v1, v23

    float-to-int v0, v1

    move/from16 v21, v0

    .line 93
    .restart local v21       #viewfinderWidth:I
    move/from16 v0, p3

    int-to-float v1, v0

    mul-float v1, v1, v25

    float-to-int v0, v1

    move/from16 v20, v0

    .restart local v20       #viewfinderHeight:I
    goto/16 :goto_0

    .line 109
    .restart local v2       #x0:I
    .restart local v3       #y0:I
    .restart local v7       #color:I
    :cond_2
    div-int/lit8 v13, p4, 0x14

    goto :goto_1

    .line 118
    .restart local v13       #fontSize:I
    .restart local v19       #textDimensions:[I
    :cond_3
    const/4 v1, 0x0

    const/4 v4, 0x0

    aput v4, v19, v1

    goto :goto_2
.end method

.method private getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bm"
    .parameter "newHeight"
    .parameter "newWidth"

    .prologue
    .line 285
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
    .line 274
    const-string v6, "window"

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 275
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 277
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    div-double v3, v6, v8

    .line 278
    .local v3, scale:D
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v3

    double-to-int v1, v6

    .line 279
    .local v1, imageHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v3

    double-to-int v2, v6

    .line 281
    .local v2, imageWidth:I
    invoke-direct {p0, p1, v1, v2}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public didUpdateStatus(Lcom/mirasense/scanditsdk/ScanditSDKScanState;)V
    .locals 0
    .parameter "scanStatus"

    .prologue
    .line 268
    return-void
.end method

.method public drawUIState(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;II)V
    .locals 2
    .parameter "uiState"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 52
    iget v0, p1, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->drawViewfinder(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;II)V

    .line 57
    :cond_0
    iget v0, p1, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->drawRoughCodePosition(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;II)V

    .line 62
    :cond_1
    iget v0, p1, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;->flashTransparency:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->drawFlash(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;II)V

    .line 67
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIStatePainter;->drawInfoBanner(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKUIState;Landroid/graphics/Canvas;II)V

    .line 68
    return-void
.end method

.method public resetGUI()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method
