.class public final Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "MonochromeRectangleDetector.java"


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    .line 38
    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .locals 7
    .parameter "fixedDimension"
    .parameter "maxWhiteRun"
    .parameter "minDim"
    .parameter "maxDim"
    .parameter "horizontal"

    .prologue
    .line 164
    add-int v5, p3, p4

    shr-int/lit8 v0, v5, 0x1

    .line 167
    .local v0, center:I
    move v2, v0

    .line 168
    .local v2, start:I
    :cond_0
    :goto_0
    if-lt v2, p3, :cond_7

    .line 169
    if-eqz p5, :cond_2

    iget-object v5, p0, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v5, v2, p1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 169
    :cond_2
    iget-object v5, p0, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v5, p1, v2}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 172
    :cond_3
    move v4, v2

    .line 174
    .local v4, whiteRunStart:I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 175
    if-lt v2, p3, :cond_5

    if-eqz p5, :cond_a

    iget-object v5, p0, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v5, v2, p1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 177
    :cond_5
    :goto_1
    sub-int v3, v4, v2

    .line 178
    .local v3, whiteRunSize:I
    if-lt v2, p3, :cond_6

    if-le v3, p2, :cond_0

    .line 179
    :cond_6
    move v2, v4

    .line 184
    .end local v3           #whiteRunSize:I
    .end local v4           #whiteRunStart:I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 187
    move v1, v0

    .line 188
    .local v1, end:I
    :cond_8
    :goto_2
    if-ge v1, p4, :cond_10

    .line 189
    if-eqz p5, :cond_b

    iget-object v5, p0, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v5, v1, p1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 190
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 175
    .end local v1           #end:I
    .restart local v4       #whiteRunStart:I
    :cond_a
    iget-object v5, p0, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v5, p1, v2}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 189
    .end local v4           #whiteRunStart:I
    .restart local v1       #end:I
    :cond_b
    iget-object v5, p0, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v5, p1, v1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_9

    .line 192
    :cond_c
    move v4, v1

    .line 194
    .restart local v4       #whiteRunStart:I
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 195
    if-ge v1, p4, :cond_e

    if-eqz p5, :cond_11

    iget-object v5, p0, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v5, v1, p1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 197
    :cond_e
    :goto_3
    sub-int v3, v1, v4

    .line 198
    .restart local v3       #whiteRunSize:I
    if-ge v1, p4, :cond_f

    if-le v3, p2, :cond_8

    .line 199
    :cond_f
    move v1, v4

    .line 204
    .end local v3           #whiteRunSize:I
    .end local v4           #whiteRunStart:I
    :cond_10
    add-int/lit8 v1, v1, -0x1

    .line 206
    if-le v1, v2, :cond_12

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    :goto_4
    return-object v5

    .line 195
    .restart local v4       #whiteRunStart:I
    :cond_11
    iget-object v5, p0, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v5, p1, v1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_3

    .line 206
    .end local v4           #whiteRunStart:I
    :cond_12
    const/4 v5, 0x0

    goto :goto_4
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/mirasense/scanditsdk/twod/ResultPoint;
    .locals 14
    .parameter "centerX"
    .parameter "deltaX"
    .parameter "left"
    .parameter "right"
    .parameter "centerY"
    .parameter "deltaY"
    .parameter "top"
    .parameter "bottom"
    .parameter "maxWhiteRun"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v9, 0x0

    .line 103
    .local v9, lastRange:[I
    move/from16 v2, p5

    .local v2, y:I
    move v13, p1

    .line 104
    .local v13, x:I
    :goto_0
    move/from16 v0, p8

    if-ge v2, v0, :cond_a

    move/from16 v0, p7

    if-lt v2, v0, :cond_a

    move/from16 v0, p4

    if-ge v13, v0, :cond_a

    move/from16 v0, p3

    if-lt v13, v0, :cond_a

    .line 107
    if-nez p2, :cond_0

    .line 109
    const/4 v6, 0x1

    move-object v1, p0

    move/from16 v3, p9

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v12

    .line 114
    .local v12, range:[I
    :goto_1
    if-nez v12, :cond_9

    .line 115
    if-nez v9, :cond_1

    .line 116
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v1

    throw v1

    .line 112
    .end local v12           #range:[I
    :cond_0
    const/4 v8, 0x0

    move-object v3, p0

    move v4, v13

    move/from16 v5, p9

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v3 .. v8}, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v12

    .restart local v12       #range:[I
    goto :goto_1

    .line 119
    :cond_1
    if-nez p2, :cond_5

    .line 120
    sub-int v11, v2, p6

    .line 121
    .local v11, lastY:I
    const/4 v1, 0x0

    aget v1, v9, v1

    if-ge v1, p1, :cond_4

    .line 122
    const/4 v1, 0x1

    aget v1, v9, v1

    if-le v1, p1, :cond_3

    .line 124
    new-instance v3, Lcom/mirasense/scanditsdk/twod/ResultPoint;

    if-lez p6, :cond_2

    const/4 v1, 0x0

    aget v1, v9, v1

    int-to-float v1, v1

    :goto_2
    int-to-float v4, v11

    invoke-direct {v3, v1, v4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;-><init>(FF)V

    move-object v1, v3

    .line 138
    .end local v11           #lastY:I
    :goto_3
    return-object v1

    .line 124
    .restart local v11       #lastY:I
    :cond_2
    const/4 v1, 0x1

    aget v1, v9, v1

    int-to-float v1, v1

    goto :goto_2

    .line 126
    :cond_3
    new-instance v1, Lcom/mirasense/scanditsdk/twod/ResultPoint;

    const/4 v3, 0x0

    aget v3, v9, v3

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v1, v3, v4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;-><init>(FF)V

    goto :goto_3

    .line 128
    :cond_4
    new-instance v1, Lcom/mirasense/scanditsdk/twod/ResultPoint;

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v1, v3, v4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;-><init>(FF)V

    goto :goto_3

    .line 131
    .end local v11           #lastY:I
    :cond_5
    sub-int v10, v13, p2

    .line 132
    .local v10, lastX:I
    const/4 v1, 0x0

    aget v1, v9, v1

    move/from16 v0, p5

    if-ge v1, v0, :cond_8

    .line 133
    const/4 v1, 0x1

    aget v1, v9, v1

    move/from16 v0, p5

    if-le v1, v0, :cond_7

    .line 134
    new-instance v3, Lcom/mirasense/scanditsdk/twod/ResultPoint;

    int-to-float v4, v10

    if-gez p2, :cond_6

    const/4 v1, 0x0

    aget v1, v9, v1

    int-to-float v1, v1

    :goto_4
    invoke-direct {v3, v4, v1}, Lcom/mirasense/scanditsdk/twod/ResultPoint;-><init>(FF)V

    move-object v1, v3

    goto :goto_3

    :cond_6
    const/4 v1, 0x1

    aget v1, v9, v1

    int-to-float v1, v1

    goto :goto_4

    .line 136
    :cond_7
    new-instance v1, Lcom/mirasense/scanditsdk/twod/ResultPoint;

    int-to-float v3, v10

    const/4 v4, 0x0

    aget v4, v9, v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;-><init>(FF)V

    goto :goto_3

    .line 138
    :cond_8
    new-instance v1, Lcom/mirasense/scanditsdk/twod/ResultPoint;

    int-to-float v3, v10

    const/4 v4, 0x1

    aget v4, v9, v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v4}, Lcom/mirasense/scanditsdk/twod/ResultPoint;-><init>(FF)V

    goto :goto_3

    .line 142
    .end local v10           #lastX:I
    :cond_9
    move-object v9, v12

    .line 105
    add-int v2, v2, p6

    add-int v13, v13, p2

    goto/16 :goto_0

    .line 144
    .end local v12           #range:[I
    :cond_a
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public detect()[Lcom/mirasense/scanditsdk/twod/ResultPoint;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getHeight()I

    move-result v13

    .line 52
    .local v13, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getWidth()I

    move-result v18

    .line 53
    .local v18, width:I
    shr-int/lit8 v6, v13, 0x1

    .line 54
    .local v6, halfHeight:I
    shr-int/lit8 v2, v18, 0x1

    .line 55
    .local v2, halfWidth:I
    const/4 v1, 0x1

    div-int/lit16 v3, v13, 0x100

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 56
    .local v12, deltaY:I
    const/4 v1, 0x1

    move/from16 v0, v18

    div-int/lit16 v3, v0, 0x100

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 58
    .local v11, deltaX:I
    const/4 v8, 0x0

    .line 59
    .local v8, top:I
    move v9, v13

    .line 60
    .local v9, bottom:I
    const/4 v4, 0x0

    .line 61
    .local v4, left:I
    move/from16 v5, v18

    .line 62
    .local v5, right:I
    const/4 v3, 0x0

    neg-int v7, v12

    shr-int/lit8 v10, v2, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v14

    .line 64
    .local v14, pointA:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    invoke-virtual {v14}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v8, v1, -0x1

    .line 65
    neg-int v3, v11

    const/4 v7, 0x0

    shr-int/lit8 v10, v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v15

    .line 67
    .local v15, pointB:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    invoke-virtual {v15}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v4, v1, -0x1

    .line 68
    const/4 v7, 0x0

    shr-int/lit8 v10, v6, 0x1

    move-object/from16 v1, p0

    move v3, v11

    invoke-direct/range {v1 .. v10}, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v16

    .line 70
    .local v16, pointC:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    invoke-virtual/range {v16 .. v16}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v5, v1, 0x1

    .line 71
    const/4 v3, 0x0

    shr-int/lit8 v10, v2, 0x1

    move-object/from16 v1, p0

    move v7, v12

    invoke-direct/range {v1 .. v10}, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v17

    .line 73
    .local v17, pointD:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    invoke-virtual/range {v17 .. v17}, Lcom/mirasense/scanditsdk/twod/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v9, v1, 0x1

    .line 76
    const/4 v3, 0x0

    neg-int v7, v12

    shr-int/lit8 v10, v2, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/mirasense/scanditsdk/twod/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/mirasense/scanditsdk/twod/ResultPoint;

    move-result-object v14

    .line 79
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/mirasense/scanditsdk/twod/ResultPoint;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v15, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    const/4 v3, 0x3

    aput-object v17, v1, v3

    return-object v1
.end method
