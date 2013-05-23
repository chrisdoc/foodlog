.class public Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;
.super Ljava/lang/Object;
.source "ScanditSDKImageButton.java"


# instance fields
.field private mCurrentBackgroundColor:I

.field private mCurrentContentColor:I

.field private mHeight:I

.field private mImage:Landroid/graphics/Bitmap;

.field private mTargetBackgroundColor:I

.field private mTargetContentColor:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(IIIILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mX:I

    .line 45
    iput p2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mY:I

    .line 46
    iput p3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mWidth:I

    .line 47
    iput p4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mHeight:I

    .line 49
    invoke-virtual {p0, p5}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->setImage(Landroid/graphics/Bitmap;)V

    .line 51
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    .line 52
    const/16 v0, 0x96

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    .line 53
    return-void
.end method


# virtual methods
.method public fadeColors()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, changesOccured:Z
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    if-eq v9, v10, :cond_0

    .line 64
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    sub-int v6, v9, v10

    .line 65
    .local v6, dr:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    sub-int v5, v9, v10

    .line 66
    .local v5, dg:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    sub-int v4, v9, v10

    .line 67
    .local v4, db:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    sub-int v3, v9, v10

    .line 69
    .local v3, da:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v11, :cond_2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v11, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v11, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v11, :cond_2

    .line 71
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    iput v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    .line 79
    :goto_0
    const/4 v2, 0x1

    .line 82
    .end local v3           #da:I
    .end local v4           #db:I
    .end local v5           #dg:I
    .end local v6           #dr:I
    :cond_0
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    if-eq v9, v10, :cond_1

    .line 83
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    sub-int v6, v9, v10

    .line 84
    .restart local v6       #dr:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    sub-int v5, v9, v10

    .line 85
    .restart local v5       #dg:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    sub-int v4, v9, v10

    .line 86
    .restart local v4       #db:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    sub-int v3, v9, v10

    .line 88
    .restart local v3       #da:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v11, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v11, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v11, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v11, :cond_3

    .line 90
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    iput v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    .line 98
    :goto_1
    const/4 v2, 0x1

    .line 101
    .end local v3           #da:I
    .end local v4           #db:I
    .end local v5           #dg:I
    .end local v6           #dr:I
    :cond_1
    return v2

    .line 73
    .restart local v3       #da:I
    .restart local v4       #db:I
    .restart local v5       #dg:I
    .restart local v6       #dr:I
    :cond_2
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    div-int/lit8 v10, v6, 0x2

    add-int v8, v9, v10

    .line 74
    .local v8, r:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    div-int/lit8 v10, v5, 0x2

    add-int v7, v9, v10

    .line 75
    .local v7, g:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    div-int/lit8 v10, v4, 0x2

    add-int v1, v9, v10

    .line 76
    .local v1, b:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    div-int/lit8 v10, v3, 0x2

    add-int v0, v9, v10

    .line 77
    .local v0, a:I
    invoke-static {v0, v8, v7, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    iput v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    goto/16 :goto_0

    .line 92
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v7           #g:I
    .end local v8           #r:I
    :cond_3
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    div-int/lit8 v10, v6, 0x2

    add-int v8, v9, v10

    .line 93
    .restart local v8       #r:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    div-int/lit8 v10, v5, 0x2

    add-int v7, v9, v10

    .line 94
    .restart local v7       #g:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    div-int/lit8 v10, v4, 0x2

    add-int v1, v9, v10

    .line 95
    .restart local v1       #b:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    div-int/lit8 v10, v3, 0x2

    add-int v0, v9, v10

    .line 96
    .restart local v0       #a:I
    invoke-static {v0, v8, v7, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    iput v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    goto :goto_1
.end method

.method public fadeOut()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 110
    .local v2, r:I
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 111
    .local v1, g:I
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 112
    .local v0, b:I
    invoke-static {v4, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    .line 114
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 115
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 116
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 117
    invoke-static {v4, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    .line 118
    return-void
.end method

.method public getCurrentBackgroundColor()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    return v0
.end method

.method public getCurrentContentColor()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mHeight:I

    return v0
.end method

.method public getTargetBackgroundColor()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    return v0
.end method

.method public getTargetContentColor()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mY:I

    return v0
.end method

.method public isWithin(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 128
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mX:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mX:I

    iget v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mWidth:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mY:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mY:I

    iget v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mHeight:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public render(Landroid/graphics/Canvas;Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;)V
    .locals 8
    .parameter "canvas"
    .parameter "v"

    .prologue
    .line 143
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mImage:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mX:I

    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mY:I

    iget v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mWidth:I

    iget v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mHeight:I

    const/4 v6, 0x1

    move-object v0, p2

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawBitmap(Landroid/graphics/Bitmap;IIIIZLandroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setCurrentBackgroundColor(I)V
    .locals 0
    .parameter "currentBackgroundColor"

    .prologue
    .line 216
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentBackgroundColor:I

    .line 217
    return-void
.end method

.method public setCurrentContentColor(I)V
    .locals 0
    .parameter "currentContentColor"

    .prologue
    .line 208
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mCurrentContentColor:I

    .line 209
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 184
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mHeight:I

    .line 185
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "image"

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 227
    .local v5, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 229
    .local v1, height:I
    iget v6, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mWidth:I

    int-to-float v6, v6

    int-to-float v7, v5

    div-float v4, v6, v7

    .line 230
    .local v4, scaleWidth:F
    iget v6, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mHeight:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float v3, v6, v7

    .line 232
    .local v3, scaleHeight:F
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 233
    .local v0, finalScale:F
    int-to-float v6, v5

    mul-float/2addr v6, v0

    float-to-int v6, v6

    int-to-float v7, v1

    mul-float/2addr v7, v0

    float-to-int v7, v7

    const/4 v8, 0x1

    invoke-static {p1, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 236
    .local v2, resizedImage:Landroid/graphics/Bitmap;
    iput-object v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mImage:Landroid/graphics/Bitmap;

    .line 237
    return-void
.end method

.method public setTargetBackgroundColor(I)V
    .locals 0
    .parameter "targetBackgroundColor"

    .prologue
    .line 200
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetBackgroundColor:I

    .line 201
    return-void
.end method

.method public setTargetContentColor(I)V
    .locals 0
    .parameter "targetContentColor"

    .prologue
    .line 192
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mTargetContentColor:I

    .line 193
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 176
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mWidth:I

    .line 177
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 160
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mX:I

    .line 161
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 168
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKImageButton;->mY:I

    .line 169
    return-void
.end method
