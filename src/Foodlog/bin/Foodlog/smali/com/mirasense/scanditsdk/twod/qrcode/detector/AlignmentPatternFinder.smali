.class final Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;
.super Ljava/lang/Object;
.source "AlignmentPatternFinder.java"


# instance fields
.field private final crossCheckStateCount:[I

.field private final height:I

.field private final image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

.field private final moduleSize:F

.field private final possibleCenters:Ljava/util/Vector;

.field private final resultPointCallback:Lcom/mirasense/scanditsdk/twod/ResultPointCallback;

.field private final startX:I

.field private final startY:I

.field private final width:I


# direct methods
.method constructor <init>(Lcom/mirasense/scanditsdk/twod/common/BitMatrix;IIIIFLcom/mirasense/scanditsdk/twod/ResultPointCallback;)V
    .locals 2
    .parameter "image"
    .parameter "startX"
    .parameter "startY"
    .parameter "width"
    .parameter "height"
    .parameter "moduleSize"
    .parameter "resultPointCallback"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    .line 70
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    .line 71
    iput p2, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 72
    iput p3, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->startY:I

    .line 73
    iput p4, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->width:I

    .line 74
    iput p5, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 75
    iput p6, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    .line 77
    iput-object p7, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/mirasense/scanditsdk/twod/ResultPointCallback;

    .line 78
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .parameter "stateCount"
    .parameter "end"

    .prologue
    .line 161
    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckVertical(IIII)F
    .locals 10
    .parameter "startI"
    .parameter "centerJ"
    .parameter "maxCount"
    .parameter "originalStateCountTotal"

    .prologue
    const/4 v9, 0x2

    const/high16 v5, 0x7fc0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    iget-object v1, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    .line 195
    .local v1, image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    invoke-virtual {v1}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->getHeight()I

    move-result v2

    .line 196
    .local v2, maxI:I
    iget-object v3, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    .line 197
    .local v3, stateCount:[I
    aput v7, v3, v7

    .line 198
    aput v7, v3, v8

    .line 199
    aput v7, v3, v9

    .line 202
    move v0, p1

    .line 203
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, p2, v0}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    aget v6, v3, v8

    if-gt v6, p3, :cond_0

    .line 204
    aget v6, v3, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v8

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 208
    :cond_0
    if-ltz v0, :cond_1

    aget v6, v3, v8

    if-le v6, p3, :cond_2

    .line 241
    :cond_1
    :goto_1
    return v5

    .line 211
    :cond_2
    :goto_2
    if-ltz v0, :cond_3

    invoke-virtual {v1, p2, v0}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_3

    aget v6, v3, v7

    if-gt v6, p3, :cond_3

    .line 212
    aget v6, v3, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v7

    .line 213
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 215
    :cond_3
    aget v6, v3, v7

    if-gt v6, p3, :cond_1

    .line 220
    add-int/lit8 v0, p1, 0x1

    .line 221
    :goto_3
    if-ge v0, v2, :cond_4

    invoke-virtual {v1, p2, v0}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_4

    aget v6, v3, v8

    if-gt v6, p3, :cond_4

    .line 222
    aget v6, v3, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v8

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 225
    :cond_4
    if-eq v0, v2, :cond_1

    aget v6, v3, v8

    if-gt v6, p3, :cond_1

    .line 228
    :goto_4
    if-ge v0, v2, :cond_5

    invoke-virtual {v1, p2, v0}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_5

    aget v6, v3, v9

    if-gt v6, p3, :cond_5

    .line 229
    aget v6, v3, v9

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v9

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 232
    :cond_5
    aget v6, v3, v9

    if-gt v6, p3, :cond_1

    .line 236
    aget v6, v3, v7

    aget v7, v3, v8

    add-int/2addr v6, v7

    aget v7, v3, v9

    add-int v4, v6, v7

    .line 237
    .local v4, stateCountTotal:I
    sub-int v6, v4, p4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    mul-int/lit8 v7, p4, 0x2

    if-ge v6, v7, :cond_1

    .line 241
    invoke-direct {p0, v3}, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v3, v0}, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto :goto_1
.end method

.method private foundPatternCross([I)Z
    .locals 4
    .parameter "stateCount"

    .prologue
    .line 170
    iget v2, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    .line 171
    .local v2, moduleSize:F
    const/high16 v3, 0x4000

    div-float v1, v2, v3

    .line 172
    .local v1, maxVariance:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 173
    aget v3, p1, v0

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_0

    .line 174
    const/4 v3, 0x0

    .line 177
    :goto_1
    return v3

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private handlePossibleCenter([III)Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;
    .locals 10
    .parameter "stateCount"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 256
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int v7, v8, v9

    .line 257
    .local v7, stateCountTotal:I
    invoke-static {p1, p3}, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v2

    .line 258
    .local v2, centerJ:F
    float-to-int v8, v2

    const/4 v9, 0x1

    aget v9, p1, v9

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {p0, p2, v8, v9, v7}, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    .line 259
    .local v1, centerI:F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_2

    .line 260
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x4040

    div-float v3, v8, v9

    .line 261
    .local v3, estimatedModuleSize:F
    iget-object v8, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v5

    .line 262
    .local v5, max:I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 263
    iget-object v8, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;

    .line 265
    .local v0, center:Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;
    invoke-virtual {v0, v3, v1, v2}, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;->aboutEquals(FFF)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 266
    new-instance v8, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;

    invoke-direct {v8, v2, v1, v3}, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    .line 276
    .end local v0           #center:Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;
    .end local v3           #estimatedModuleSize:F
    .end local v4           #index:I
    .end local v5           #max:I
    :goto_1
    return-object v8

    .line 262
    .restart local v0       #center:Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;
    .restart local v3       #estimatedModuleSize:F
    .restart local v4       #index:I
    .restart local v5       #max:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    .end local v0           #center:Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;
    :cond_1
    new-instance v6, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;

    invoke-direct {v6, v2, v1, v3}, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    .line 271
    .local v6, point:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    iget-object v8, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 272
    iget-object v8, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/mirasense/scanditsdk/twod/ResultPointCallback;

    if-eqz v8, :cond_2

    .line 273
    iget-object v8, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/mirasense/scanditsdk/twod/ResultPointCallback;

    invoke-interface {v8, v6}, Lcom/mirasense/scanditsdk/twod/ResultPointCallback;->foundPossibleResultPoint(Lcom/mirasense/scanditsdk/twod/ResultPoint;)V

    .line 276
    .end local v3           #estimatedModuleSize:F
    .end local v4           #index:I
    .end local v5           #max:I
    .end local v6           #point:Lcom/mirasense/scanditsdk/twod/ResultPoint;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method


# virtual methods
.method find()Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 88
    iget v8, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 89
    .local v8, startX:I
    iget v2, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 90
    .local v2, height:I
    iget v10, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->width:I

    add-int v6, v8, v10

    .line 91
    .local v6, maxJ:I
    iget v10, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->startY:I

    shr-int/lit8 v11, v2, 0x1

    add-int v7, v10, v11

    .line 94
    .local v7, middleI:I
    const/4 v10, 0x3

    new-array v9, v10, [I

    .line 95
    .local v9, stateCount:[I
    const/4 v4, 0x0

    .local v4, iGen:I
    :goto_0
    if-ge v4, v2, :cond_a

    .line 97
    and-int/lit8 v10, v4, 0x1

    if-nez v10, :cond_0

    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v10, v10, 0x1

    :goto_1
    add-int v3, v7, v10

    .line 98
    .local v3, i:I
    aput v12, v9, v12

    .line 99
    aput v12, v9, v13

    .line 100
    aput v12, v9, v14

    .line 101
    move v5, v8

    .line 105
    .local v5, j:I
    :goto_2
    if-ge v5, v6, :cond_1

    iget-object v10, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v10, v5, v3}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_1

    .line 106
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 97
    .end local v3           #i:I
    .end local v5           #j:I
    :cond_0
    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v10, v10, 0x1

    neg-int v10, v10

    goto :goto_1

    .line 108
    .restart local v3       #i:I
    .restart local v5       #j:I
    :cond_1
    const/4 v1, 0x0

    .line 109
    .local v1, currentState:I
    :goto_3
    if-ge v5, v6, :cond_8

    .line 110
    iget-object v10, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->image:Lcom/mirasense/scanditsdk/twod/common/BitMatrix;

    invoke-virtual {v10, v5, v3}, Lcom/mirasense/scanditsdk/twod/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 112
    if-ne v1, v13, :cond_2

    .line 113
    aget v10, v9, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v1

    .line 136
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 115
    :cond_2
    if-ne v1, v14, :cond_5

    .line 116
    invoke-direct {p0, v9}, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 117
    invoke-direct {p0, v9, v3, v5}, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;

    move-result-object v0

    .line 118
    .local v0, confirmed:Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;
    if-eqz v0, :cond_4

    .line 150
    .end local v0           #confirmed:Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;
    .end local v1           #currentState:I
    .end local v3           #i:I
    .end local v5           #j:I
    :cond_3
    :goto_5
    return-object v0

    .line 122
    .restart local v1       #currentState:I
    .restart local v3       #i:I
    .restart local v5       #j:I
    :cond_4
    aget v10, v9, v14

    aput v10, v9, v12

    .line 123
    aput v13, v9, v13

    .line 124
    aput v12, v9, v14

    .line 125
    const/4 v1, 0x1

    goto :goto_4

    .line 127
    :cond_5
    add-int/lit8 v1, v1, 0x1

    aget v10, v9, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v1

    goto :goto_4

    .line 131
    :cond_6
    if-ne v1, v13, :cond_7

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 134
    :cond_7
    aget v10, v9, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v1

    goto :goto_4

    .line 138
    :cond_8
    invoke-direct {p0, v9}, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 139
    invoke-direct {p0, v9, v3, v6}, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;

    move-result-object v0

    .line 140
    .restart local v0       #confirmed:Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;
    if-nez v0, :cond_3

    .line 95
    .end local v0           #confirmed:Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    .end local v1           #currentState:I
    .end local v3           #i:I
    .end local v5           #j:I
    :cond_a
    iget-object v10, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    .line 150
    iget-object v10, p0, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v10, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mirasense/scanditsdk/twod/qrcode/detector/AlignmentPattern;

    move-object v0, v10

    goto :goto_5

    .line 153
    :cond_b
    invoke-static {}, Lcom/mirasense/scanditsdk/twod/NotFoundException;->getNotFoundInstance()Lcom/mirasense/scanditsdk/twod/NotFoundException;

    move-result-object v10

    throw v10
.end method
