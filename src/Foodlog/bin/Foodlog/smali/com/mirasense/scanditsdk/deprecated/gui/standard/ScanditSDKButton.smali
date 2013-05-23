.class public Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;
.super Ljava/lang/Object;
.source "ScanditSDKButton.java"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mCurrentBackgroundColor:I

.field private mCurrentContentColor:I

.field private mFontSize:I

.field private mHeight:I

.field private mTargetBackgroundColor:I

.field private mTargetContentColor:I

.field private mWidth:I

.field private mWrap:Z

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;IZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "content"
    .parameter "fontSize"
    .parameter "wrap"

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mX:I

    .line 54
    iput p2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mY:I

    .line 55
    iput p3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mWidth:I

    .line 56
    iput p4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mHeight:I

    .line 58
    iput-object p5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mContent:Ljava/lang/String;

    .line 59
    iput p6, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mFontSize:I

    .line 61
    iput-boolean p7, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mWrap:Z

    .line 63
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    .line 64
    const/16 v0, 0x96

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    .line 66
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    .line 67
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    .line 68
    return-void
.end method


# virtual methods
.method public fadeColors()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 76
    const/4 v2, 0x0

    .line 78
    .local v2, changesOccured:Z
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    if-eq v9, v10, :cond_0

    .line 79
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    sub-int v6, v9, v10

    .line 80
    .local v6, dr:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    sub-int v5, v9, v10

    .line 81
    .local v5, dg:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    sub-int v4, v9, v10

    .line 82
    .local v4, db:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    sub-int v3, v9, v10

    .line 84
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

    .line 86
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    iput v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    .line 94
    :goto_0
    const/4 v2, 0x1

    .line 97
    .end local v3           #da:I
    .end local v4           #db:I
    .end local v5           #dg:I
    .end local v6           #dr:I
    :cond_0
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    if-eq v9, v10, :cond_1

    .line 98
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    sub-int v6, v9, v10

    .line 99
    .restart local v6       #dr:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    sub-int v5, v9, v10

    .line 100
    .restart local v5       #dg:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    sub-int v4, v9, v10

    .line 101
    .restart local v4       #db:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    iget v10, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    sub-int v3, v9, v10

    .line 103
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

    .line 105
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    iput v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    .line 113
    :goto_1
    const/4 v2, 0x1

    .line 116
    .end local v3           #da:I
    .end local v4           #db:I
    .end local v5           #dg:I
    .end local v6           #dr:I
    :cond_1
    return v2

    .line 88
    .restart local v3       #da:I
    .restart local v4       #db:I
    .restart local v5       #dg:I
    .restart local v6       #dr:I
    :cond_2
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    div-int/lit8 v10, v6, 0x2

    add-int v8, v9, v10

    .line 89
    .local v8, r:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    div-int/lit8 v10, v5, 0x2

    add-int v7, v9, v10

    .line 90
    .local v7, g:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    div-int/lit8 v10, v4, 0x2

    add-int v1, v9, v10

    .line 91
    .local v1, b:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    div-int/lit8 v10, v3, 0x2

    add-int v0, v9, v10

    .line 92
    .local v0, a:I
    invoke-static {v0, v8, v7, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    iput v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    goto/16 :goto_0

    .line 107
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v7           #g:I
    .end local v8           #r:I
    :cond_3
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    div-int/lit8 v10, v6, 0x2

    add-int v8, v9, v10

    .line 108
    .restart local v8       #r:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    div-int/lit8 v10, v5, 0x2

    add-int v7, v9, v10

    .line 109
    .restart local v7       #g:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    div-int/lit8 v10, v4, 0x2

    add-int v1, v9, v10

    .line 110
    .restart local v1       #b:I
    iget v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    div-int/lit8 v10, v3, 0x2

    add-int v0, v9, v10

    .line 111
    .restart local v0       #a:I
    invoke-static {v0, v8, v7, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    iput v9, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    goto :goto_1
.end method

.method public fadeOut()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 125
    .local v2, r:I
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 126
    .local v1, g:I
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 127
    .local v0, b:I
    invoke-static {v4, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    .line 129
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 130
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 131
    iget v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 132
    invoke-static {v4, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    .line 133
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBackgroundColor()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    return v0
.end method

.method public getCurrentContentColor()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mFontSize:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mHeight:I

    return v0
.end method

.method public getTargetBackgroundColor()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    return v0
.end method

.method public getTargetContentColor()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mY:I

    return v0
.end method

.method public isWithin(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 143
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mX:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mX:I

    iget v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mWidth:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mY:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mY:I

    iget v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mHeight:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public render(Landroid/graphics/Canvas;Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;)V
    .locals 21
    .parameter "canvas"
    .parameter "v"

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mY:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mWidth:I

    add-int/2addr v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mHeight:I

    add-int/2addr v5, v1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    const/4 v8, 0x1

    move-object/from16 v1, p2

    move-object/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawRectangle(IIIIIIZLandroid/graphics/Canvas;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 162
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mWrap:Z

    if-nez v1, :cond_2

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mContent:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mFontSize:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    const/4 v9, 0x1

    move-object/from16 v1, p2

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawText(Ljava/lang/String;IIZIIIZLandroid/graphics/Canvas;)[I

    goto :goto_0

    .line 167
    :cond_2
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 168
    .local v18, paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mFontSize:I

    int-to-float v1, v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 173
    .local v11, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mContent:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mContent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mWidth:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    const-wide v5, 0x3ff199999999999aL

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-int v12, v1

    .line 176
    .local v12, charsPerLine:I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v17, lineList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mContent:Ljava/lang/String;

    const-string v2, "[ ]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 178
    .local v20, words:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 179
    .local v19, wordCount:I
    const-string v15, ""

    .line 180
    .local v15, line:Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, v20

    array-length v1, v0

    move/from16 v0, v19

    if-ge v0, v1, :cond_6

    .line 182
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    aget-object v2, v20, v19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-le v1, v12, :cond_4

    .line 183
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v1, "ScanditSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v20, v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v15, ""

    goto :goto_1

    .line 187
    :cond_4
    const-string v1, ""

    if-ne v15, v1, :cond_5

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v20, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 192
    :goto_2
    add-int/lit8 v19, v19, 0x1

    .line 193
    move-object/from16 v0, v20

    array-length v1, v0

    move/from16 v0, v19

    if-ne v0, v1, :cond_3

    .line 194
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v20, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 199
    :cond_6
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff4cccccccccccdL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    move/from16 v16, v0

    .line 200
    .local v16, lineHeight:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int v2, v2, v16

    sub-int v13, v1, v2

    .line 201
    .local v13, drawStart:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_0

    .line 202
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    mul-int v1, v14, v16

    add-int v4, v13, v1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mFontSize:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    const/4 v9, 0x1

    move-object/from16 v1, p2

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lcom/mirasense/scanditsdk/deprecated/gui/ScanditSDKView;->drawText(Ljava/lang/String;IIZIIIZLandroid/graphics/Canvas;)[I

    .line 201
    add-int/lit8 v14, v14, 0x1

    goto :goto_3
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mContent:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setCurrentBackgroundColor(I)V
    .locals 0
    .parameter "currentBackgroundColor"

    .prologue
    .line 279
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentBackgroundColor:I

    .line 280
    return-void
.end method

.method public setCurrentContentColor(I)V
    .locals 0
    .parameter "currentContentColor"

    .prologue
    .line 271
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mCurrentContentColor:I

    .line 272
    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 287
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mFontSize:I

    .line 288
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 239
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mHeight:I

    .line 240
    return-void
.end method

.method public setTargetBackgroundColor(I)V
    .locals 0
    .parameter "targetBackgroundColor"

    .prologue
    .line 263
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetBackgroundColor:I

    .line 264
    return-void
.end method

.method public setTargetContentColor(I)V
    .locals 0
    .parameter "targetContentColor"

    .prologue
    .line 255
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mTargetContentColor:I

    .line 256
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 231
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mWidth:I

    .line 232
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 215
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mX:I

    .line 216
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 223
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKButton;->mY:I

    .line 224
    return-void
.end method
