.class public abstract Lcom/mirasense/scanditsdk/gui/ScanditSDKView;
.super Landroid/view/View;
.source "ScanditSDKView.java"


# instance fields
.field private mCameraInitialized:Z

.field private mCameraRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->mCameraInitialized:Z

    .line 35
    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->mCameraRunning:Z

    .line 36
    return-void
.end method

.method public static realX(IIII)I
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 69
    return p0
.end method

.method public static realY(IIII)I
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 82
    return p1
.end method


# virtual methods
.method public abstract didUpdateStatus(Lcom/mirasense/scanditsdk/ScanditSDKScanState;)V
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;IIIIZLandroid/graphics/Canvas;)V
    .locals 8
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "targetW"
    .parameter "targetH"
    .parameter "antiAlias"
    .parameter "canvas"

    .prologue
    .line 311
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 312
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, p6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 314
    invoke-virtual {p7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 315
    .local v0, ch:I
    invoke-virtual {p7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 316
    .local v1, cw:I
    invoke-static {p2, p3, v1, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realX(IIII)I

    move-result v4

    .line 317
    .local v4, real_x1:I
    invoke-static {p2, p3, v1, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realY(IIII)I

    move-result v5

    .line 319
    .local v5, real_y1:I
    invoke-virtual {p7}, Landroid/graphics/Canvas;->save()I

    .line 321
    new-instance v3, Landroid/graphics/Rect;

    add-int v6, v4, p4

    add-int v7, v5, p5

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 322
    .local v3, r2:Landroid/graphics/Rect;
    const/4 v6, 0x0

    invoke-virtual {p7, p1, v6, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 323
    invoke-virtual {p7}, Landroid/graphics/Canvas;->restore()V

    .line 324
    return-void
.end method

.method public drawLine(IIIIIIZLandroid/graphics/Canvas;)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "x2"
    .parameter "y2"
    .parameter "thickness"
    .parameter "color"
    .parameter "antiAlias"
    .parameter "canvas"

    .prologue
    .line 184
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 185
    .local v7, paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    move/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    move/from16 v0, p7

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 190
    move/from16 v0, p5

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    .line 193
    .local v8, ch:I
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 195
    .local v9, cw:I
    move/from16 v0, p2

    invoke-static {p1, v0, v9, v8}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realX(IIII)I

    move-result v10

    .line 196
    .local v10, real_x1:I
    move/from16 v0, p2

    invoke-static {p1, v0, v9, v8}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realY(IIII)I

    move-result v12

    .line 198
    .local v12, real_y1:I
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v9, v8}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realX(IIII)I

    move-result v11

    .line 199
    .local v11, real_x2:I
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v9, v8}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realY(IIII)I

    move-result v13

    .line 201
    .local v13, real_y2:I
    int-to-float v3, v10

    int-to-float v4, v12

    int-to-float v5, v11

    int-to-float v6, v13

    move-object/from16 v2, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    return-void
.end method

.method public drawLines([IIIZLandroid/graphics/Canvas;)V
    .locals 9
    .parameter "points"
    .parameter "thickness"
    .parameter "color"
    .parameter "anti_alias"
    .parameter "canvas"

    .prologue
    .line 220
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 221
    .local v3, paint:Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 226
    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 227
    int-to-float v7, p2

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    invoke-virtual {p5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 230
    .local v0, ch:I
    invoke-virtual {p5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 236
    .local v1, cw:I
    array-length v7, p1

    new-array v4, v7, [F

    .line 237
    .local v4, pts:[F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_0

    .line 238
    aget v5, p1, v2

    .line 239
    .local v5, x:I
    add-int/lit8 v7, v2, 0x1

    aget v6, p1, v7

    .line 240
    .local v6, y:I
    invoke-static {v5, v6, v1, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realX(IIII)I

    move-result v7

    int-to-float v7, v7

    aput v7, v4, v2

    .line 241
    add-int/lit8 v7, v2, 0x1

    invoke-static {v5, v6, v1, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realX(IIII)I

    move-result v8

    int-to-float v8, v8

    aput v8, v4, v7

    .line 237
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 243
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_0
    invoke-virtual {p5, v4, v3}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 244
    return-void
.end method

.method public drawPath([IIIZZLandroid/graphics/Canvas;)V
    .locals 2
    .parameter "points"
    .parameter "thickness"
    .parameter "color"
    .parameter "closed"
    .parameter "antiAlias"
    .parameter "canvas"

    .prologue
    .line 261
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 262
    .local v0, paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 265
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 267
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 268
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 270
    invoke-virtual {p0, p1, p4, p6, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->drawRawPath([IZLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 271
    return-void
.end method

.method protected drawRawPath([IZLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .parameter "points"
    .parameter "closed"
    .parameter "canvas"
    .parameter "paint"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 283
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 284
    .local v0, ch:I
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 286
    .local v1, cw:I
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 287
    .local v3, p:Landroid/graphics/Path;
    aget v4, p1, v7

    aget v5, p1, v8

    invoke-static {v4, v5, v1, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realX(IIII)I

    move-result v4

    int-to-float v4, v4

    aget v5, p1, v7

    aget v6, p1, v8

    invoke-static {v5, v6, v1, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realY(IIII)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 288
    const/4 v2, 0x2

    .local v2, i:I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 289
    aget v4, p1, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    invoke-static {v4, v5, v1, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realX(IIII)I

    move-result v4

    int-to-float v4, v4

    aget v5, p1, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    invoke-static {v5, v6, v1, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realY(IIII)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 288
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 291
    :cond_0
    if-eqz p2, :cond_1

    aget v4, p1, v7

    aget v5, p1, v8

    invoke-static {v4, v5, v1, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realX(IIII)I

    move-result v4

    int-to-float v4, v4

    aget v5, p1, v7

    aget v6, p1, v8

    invoke-static {v5, v6, v1, v0}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realY(IIII)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 293
    :cond_1
    invoke-virtual {p3, v3, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 294
    return-void
.end method

.method public drawRectangle(IIIIIIZLandroid/graphics/Canvas;)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "x2"
    .parameter "y2"
    .parameter "thickness"
    .parameter "color"
    .parameter "fill"
    .parameter "canvas"

    .prologue
    .line 146
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 147
    .local v7, paint:Landroid/graphics/Paint;
    if-eqz p7, :cond_1

    .line 148
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 149
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    :goto_0
    move/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    move/from16 v0, p5

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    .line 158
    .local v8, ch:I
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 160
    .local v9, cw:I
    move/from16 v0, p2

    invoke-static {p1, v0, v9, v8}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realX(IIII)I

    move-result v10

    .line 161
    .local v10, real_x1:I
    move/from16 v0, p2

    invoke-static {p1, v0, v9, v8}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realY(IIII)I

    move-result v12

    .line 163
    .local v12, real_y1:I
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v9, v8}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realX(IIII)I

    move-result v11

    .line 164
    .local v11, real_x2:I
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v9, v8}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realY(IIII)I

    move-result v13

    .line 166
    .local v13, real_y2:I
    int-to-float v3, v10

    int-to-float v4, v12

    int-to-float v5, v11

    int-to-float v6, v13

    move-object/from16 v2, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
    return-void

    .line 151
    .end local v8           #ch:I
    .end local v9           #cw:I
    .end local v10           #real_x1:I
    .end local v11           #real_x2:I
    .end local v12           #real_y1:I
    .end local v13           #real_y2:I
    :cond_0
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 153
    :cond_1
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;IIZIIIZLandroid/graphics/Canvas;)[I
    .locals 11
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "centered"
    .parameter "size"
    .parameter "angle"
    .parameter "color"
    .parameter "antiAlias"
    .parameter "canvas"

    .prologue
    .line 102
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 103
    .local v4, paint:Landroid/graphics/Paint;
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    move/from16 v0, p7

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    move/from16 v0, p5

    int-to-float v8, v0

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    move/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 109
    .local v2, ch:I
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 111
    .local v3, cw:I
    invoke-static {p2, p3, v3, v2}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realX(IIII)I

    move-result v5

    .line 112
    .local v5, real_x:I
    invoke-static {p2, p3, v3, v2}, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->realY(IIII)I

    move-result v6

    .line 114
    .local v6, real_y:I
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Canvas;->save()I

    .line 115
    move/from16 v0, p6

    neg-int v8, v0

    int-to-float v8, v8

    int-to-float v9, v5

    int-to-float v10, v6

    move-object/from16 v0, p9

    invoke-virtual {v0, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .local v1, bounds:Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, p1, v8, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 118
    const/4 v8, 0x2

    new-array v7, v8, [I

    .line 119
    .local v7, text_dimensions:[I
    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    aput v9, v7, v8

    .line 120
    const/4 v8, 0x1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    aput v9, v7, v8

    .line 121
    if-eqz p4, :cond_0

    .line 122
    const/4 v8, 0x0

    aget v8, v7, v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v5, v8

    .line 123
    const/4 v8, 0x1

    aget v8, v7, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .line 125
    :cond_0
    int-to-float v8, v5

    int-to-float v9, v6

    move-object/from16 v0, p9

    invoke-virtual {v0, p1, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 126
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Canvas;->restore()V

    .line 128
    return-object v7
.end method

.method public getColor(FFFF)I
    .locals 4
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    const/high16 v3, 0x437f

    .line 336
    mul-float v0, p4, v3

    float-to-int v0, v0

    mul-float v1, p1, v3

    float-to-int v1, v1

    mul-float v2, p2, v3

    float-to-int v2, v2

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public isCameraInitialized()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->mCameraInitialized:Z

    return v0
.end method

.method public isCameraRunning()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->mCameraRunning:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    return-void
.end method

.method public abstract resetGUI()V
.end method

.method public setCameraInitialized(Z)V
    .locals 0
    .parameter "cameraInitialized"

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->mCameraInitialized:Z

    .line 346
    return-void
.end method

.method public setCameraRunning(Z)V
    .locals 0
    .parameter "cameraRunning"

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/gui/ScanditSDKView;->mCameraRunning:Z

    .line 342
    return-void
.end method
